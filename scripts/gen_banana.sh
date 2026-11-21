src_dir=$PWD
out_dir=$PWD/out
upd_dir=$PWD/updates

mkdir -p $out_dir/src
mkdir -p $out_dir/work

echo Downloading chunks from SourceForge
scp -i ~/.ssh/id_rsa\
  jengelsk@frs.sourceforge.net:/home/pfs/project/bananaos/Samsung/6.x/json/*.json $out_dir/src

echo Downloading latest.txt from SourceForge
scp -i ~/.ssh/id_rsa\
  jengelsk@frs.sourceforge.net:/home/pfs/project/bananaos/Samsung/6.x/latest.txt $out_dir/


timestamp=$(<./out/latest.txt)

rel_info=$(grep -m 1 "version" $out_dir/src/m51-inc-$timestamp.json)
val_base=$(grep -m 1 "incremental" $out_dir/src/m51-inc-$timestamp.json)
prev_version=${val_base: -10:10}


#targets=("a05s" "a14" "a52q" "a52sxq" "a71" "a72q" "a73xq"\
# "b0q" "g0q" "m51" "m52xq" "o1s" "p3s" "r8q" "r0q"\
# "r9s" "t2s")

targets=("m51")

echo "- Merging chunks per device"
for target in "${targets[@]}"; do
    echo "merging json for: $target"
m
    cat $out_dir/src/$target-inc-$timestamp.json\
     > $out_dir/work/$target.json
    cat $out_dir/src/$target-$timestamp.json\
     >> $out_dir/work/$target.json     
done

echo "- creating final bananaos.json"
cat $upd_dir/header.json > $out_dir/bananaos_$timestamp.json
cat $out_dir/work/*.json >> $out_dir/bananaos_$timestamp.json
cat $upd_dir/footer.json >> $out_dir/bananaos_$timestamp.json
sed -z 's/\(.*\),/\1/' $out_dir/bananaos_$timestamp.json > $upd_dir/bananaos_$timestamp.json
cp $upd_dir/bananaos_$timestamp.json $upd_dir/bananaos_$prev_version.json

echo "- Creating release_info.txt"
cp $upd_dir/rel_info.txt $upd_dir/"${rel_info: -15:13}".txt

echo "- Pushing changes"
git add updates/
git add scripts/
git commit -m "update OTA config files"
git push -f
