#!/bin/bash

###############################################################################
# Author     : kurtnettle <shafeen@duck.com>
# Script Name: copy_samsung_dts.sh
# Script Desc: Grab device DTS files from source repo. Mainly made for SM51 
#              (maybe it will work for other device if the file name scheme style matches?)
# License:     MIT License
# 
# Copyright (c) 2026 KurtNettle
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
###############################################################################

# SOURCE_DIR="M515FXXS6DXE4_SM-M515F_LA_12_Opensource/"
# DEVICE="m51"

DTS_FOLDER_PATH="arch/arm64/boot/dts/samsung"

SOURCE_DIR="$1"
DEVICE="$2"
DEST_DIR="$(pwd)/$DTS_FOLDER_PATH"

if [ ! -d "Documentation" ] || [ ! -d "arch/arm64" ]; then
    echo "[Error  ]: Run from the root of your kernel tree :)"
    exit 1
fi

if [ ! -d "$SOURCE_DIR" ]; then
    echo "[Error  ]: Source directory not found at $SOURCE_DIR :/"
    exit 1
fi

SOURCE_DIR=$SOURCE_DIR/$DTS_FOLDER_PATH
if [ ! -d "$SOURCE_DIR" ]; then
    echo "[Error  ]: Subdirectory $DTS_FOLDER_PATH not found in $SOURCE_DIR"
    exit 1
fi

if [ ! DEVICE ]; then
    echo "[Error  ]: Device name not mentioned :/"
    exit 1
fi


cd "$SOURCE_DIR"

TOTAL_FILES=$(find $SOURCE_DIR -type f -iname '*m51*' | wc -l)
echo "[INFO   ]: Found '$TOTAL_FILES' dts files of '$DEVICE' in $SOURCE_DIR..."

find . -type f -iname "*${DEVICE}*" | while read -r FILE; do
    TARGET="$DEST_DIR/${FILE#./}"
    if [ ! -f "$TARGET" ]; then
        mkdir -p "$(dirname "$TARGET")"
        cp "$FILE" "$TARGET"
    else
        echo "[WARNING]: $FILE (Already exists)"
    fi
done

echo -e "[SUCCESS]: files copied."