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
            download_url="https://s04.ooo/v2/IxJCDiMnLjsJO0EELi8HQTsDHjMNNh4lFzssIDs2ByAzMUEgOzEUQDMQMCMBOyw/NBIxMDw7Hgc0CAVAHiUvERIAFC8eFiEhLhYeOxIDLxo0ETEALwcvMx4wLzo1MQg5Iyc+Fg0XPjEzAy8dOxEzBDQRMDkjET4wDTgKMBIRMQYyJS4ODUAsBy84BkIeCzwGHgM8FCMkNDEjCxVACTghHzInDQYuFx8rIwAvJCFAMxE8EQY5NRshDjURPho0ES8kNRYhOR44LwsJEQc5NBsjKyEAPg4hAAYsLjgeLDQRHg4yJTMsMiUNKzwAPh8mGzk5FyUzDTUHQQEuByADISxBIwMnOUANQAokMzYCICMXPjkDFzA1CS8pDTsxHhwzQAZCOzEHHjMsNCsNMT4eODAeHgkvIxQjAyEEODApOw0wPgMBAwgADSwpPC8DKQcXOzYwOAAhKTw/FD01OCBCJgcgGyMDIAguMQI7PDtBJRc7BjEBCC8gNQceJw07Hg0BGykbNDEaOTM7PgQjOAZCIwM0ACMkBUAjJCIdHiITEw=="
        elif [ "$i" == "$TARGET_FIRMWARE" ]; then
            download_url="https://s04.ooo/v2/IxJCDiMnLgwNQCEMAS8+CwEnFCASNh4lFzssIDs2ByAzMUEgOzEUQDMQMCMBOyw/Ly8pGjUDMz0XLAcgISUhAw87Ph0DOxQ8CS8uHiMkHikyMCEsLxcvJgMAPDk0Fiw7NRcUESMwQRADAAcUHjs+LSMxPikjBy8JEgguBzsxHyc8QC8nLhsCPCFABkIeCzwGHgM8FCMkNDEjCxVACTghHzInDQYuFx8rIwAvJCFAMxE8EQY5NRshDjURPho0ES8kNRYhOR44LwsJEQc5NBsjKyEAPg4hAAYsLjgeLDQRHg4yJTMsMiUNKzwAPh8mGzk5FyUzDTUHQQEuByADISxBIwMnOUANQAokMzYCICMXPjkDFzA1CS8pDTsxHhwzQAZCOzEHHjMsNCsNMT4eODAeHgk7MTAjAy8nODFBFwMwPh4eAwgwMywpPDskIQgXCDsxOAAhKTw/FD01OCBCJicfFgEnMQY8CxUAPBcwFzsnHjYjLC8kEiUvNTIHLxwjJ0EECS8sJB4wLxEjOAZCIwM0ACMkBUAjJAgwASITEw=="
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
