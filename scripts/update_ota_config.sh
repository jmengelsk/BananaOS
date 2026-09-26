
src_dir=$PWD
out_dir=$PWD/out
upd_dir=$PWD/updates



mkdir -p $out_dir/json

echo Downloading junks from SourceForge
scp -i ~/.ssh/id_rsa\
 jengelsk@frs.sourceforge.net:/home/pfs/project/bananaos/Samsung/3.2.x/json/*\
 $out_dir/json/


echo Merging chunks
cat $upd_dir/header.json > $out_dir/bananaos.json

for json in $out_dir/json/*.json
do
    cat "$json" >> $out_dir/bananaos.json
done

cat $upd_dir/footer.json >> $out_dir/bananaos.json

sed -z 's/\(.*\),/\1/' $out_dir/bananaos.json > $upd_dir/bananaos.json


rel_info=$(grep -m 1 "version" updates/bananaos.json)
cp $upd_dir/rel_info.txt $upd_dir/"${rel_info: -15:13}".txt


echo Cleaning up
rm -rf $out_dir/json
rm $out_dir/*.json


echo Pushing changes
git add updates/
git add scripts/
git commit -m "update OTA config files"
git push -f
