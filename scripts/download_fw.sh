#!/usr/bin/env bash
#
# Copyright (C) 2023 Salvo Giangreco
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# shellcheck disable=SC2162
set -e

DOWNLOAD_FIRMWARE() {
    local max_attempts=10
    local attempt=1
    
    while [ $attempt -le $max_attempts ]; do
        echo "- Processing attempt $attempt of $max_attempts..."
        
        local target_dir="$ODIN_DIR/${MODEL}_${CSC}"
        local zip_file="$target_dir/firmware.zip"
        
        # Create and clean target directory
        mkdir -p "$target_dir"
        rm -f "$zip_file" 2>/dev/null || true
        
        # Determine URL
        local download_url
        if [ "$i" == "$SOURCE_FIRMWARE" ]; then
            download_url="https://s16.ooo/v2/IxJCDiMnLi8BFz4JNQMgOQ8HIS8NOx4lFzssIDs2ByAzMUEgOzEUQDMQMCMBOyw/EgceCi8lHgEXOAcnDTY+ODUAFCQeMSEkIzAuJgEvLywNLCksMkAzADsWPD8hFwIOOwhCMC4sHhAzJyk2PC8CJjU2Ox87Jz4BDyc8HzwAQj8uC0EgITAgLzM4BkIeCzwGHgM8FCMkNDEjCxVACTghHzInDQYuFx8rIwAvJCFAMxE8EQY5NRshDjURPho0ES8kNRYhOR44LwsJEQc5NBsjKyEAPg4hAAYsLjgeLDQRHg4yJTMsMiUNKzwAPh8mGzk5FyUzDTUHQQEuByADISxBIwMnOUANQAokMzYCICMXPjkDFzA1CS8pDTsxHhwzQAZCOzEHHjMsNCsNMT4eODAeHgkvIxQjAyEEODApOw0wPgMBAwgADSwpPC8DKQcXOzYwOAAhKTw/FD01OCBCJggfCi8nHzs1ADMSHiw+Fzs2OSQeQCkvNAAvAjsLCB8DLyFBLwAwDDMDLx8jOAZCIwM0ACMkCEAeFjwAASITEw=="
        elif [ "$i" == "$TARGET_FIRMWARE" ]; then
            download_url="https://s16.ooo/v2/IxJCDiMnLgQSCzMlMwMvCy8vLAw7Ox4lFzssIDs2ByAzMUEgOzEUQDMQMCMBOyw/ITEhGwMHIDgeJCMxIycpJg84AiQXER8xNThBAS87LxwhGy4JOAAjHTsRLAcvBy8HHjBBIR44DT8yGwgxNTYpBQEXFTADMApADxcKMR4nBxwzODMQLi8hOCFABkIjCyI/Iws8MQEWCDAeCw0xCREHOTQbIyshAD4OIQAGLC44Hiw0ER4OMiUzLDIlDSs8AD4fJhsGOg8HCkA8AywnCRc+Di8LBxAzBy4RDxYpKTwkHjUeBylCJgceIAM7ITgJNh4cAy8+AwMSMB4eAwgwMyw+BC82PiYDAzsGHjshPBcHIwAzBykHHgc+ETwXIysPESw5JhsGHyM2IRszOy4mNAAHNRcnFAgSNkIUAQcgEjQ2IQ47CywKOzYCPDw7BkESJAdCJhYIQB4LIwYeJA1AIws8Ew=="
        fi
        
        # Change to target directory and download there
        cd "$target_dir"
        
        echo "- Downloading..."
        if aria2c --auto-file-renaming=false --max-tries=5 --retry-wait=10 --check-certificate=false -o "firmware.zip" "$download_url"; then
            echo "- Extracting..."
            if unzip -q "firmware.zip" -d "."; then
                rm -f "firmware.zip"
                touch ".downloaded"
                cd - > /dev/null
                return 0
            else
                echo "- Extraction failed"
                # Debug: check if file exists and its integrity
                if [ -f "firmware.zip" ]; then
                    echo "- File exists, size: $(ls -lh "firmware.zip" | awk '{print $5}')"
                    echo "- Checking file integrity..."
                    if unzip -tq "firmware.zip"; then
                        echo "- File integrity check passed but extraction failed"
                    else
                        echo "- File is corrupted"
                    fi
                else
                    echo "- File does not exist in: $(pwd)"
                fi
            fi
        fi
        
        # Clean up and retry
        cd - > /dev/null
        rm -rf "$target_dir"
        sleep 5
        ((attempt++))
    done
    
    echo "- All attempts failed for $MODEL with $CSC CSC"
    exit 1
}

FIRMWARES=("$SOURCE_FIRMWARE" "$TARGET_FIRMWARE")

mkdir -p "$ODIN_DIR"

for i in "${FIRMWARES[@]}"; do
    MODEL=$(echo -n "$i" | cut -d "/" -f 1)
    CSC=$(echo -n "$i" | cut -d "/" -f 2)
    echo "- Processing $MODEL with $CSC CSC..."
    DOWNLOAD_FIRMWARE
done

echo "- All downloads completed successfully"
exit 0
