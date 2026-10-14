# echo "- downloading $TARGET_CODENAME-target_base.zip"
# mkdir ./Samsung
# curl -C - -L -o ./Samsung/$TARGET_CODENAME-target_base.zip https://sourceforge.net/projects/bananaos/files/Samsung/3.2.x/target/$TARGET_CODENAME-target_base.zip/download
# scp -v -i ~/.ssh/id_rsa\
# jengelsk@frs.sourceforge.net:/home/pfs/project/bananaos/Samsung/3.2.x/latest/* ./Samsung/

echo "- copying target file"
mkdir ./out
scp -i ~/.ssh/id_rsa\
  jengelsk@frs.sourceforge.net:/home/pfs/project/bananaos/Samsung/3.2.x/base.target/$TARGET_CODENAME-target_base.zip\
 ./out/$TARGET_CODENAME-target_base.zip
for FILE in ./out/*.zip; do
  scp $FILE  $SF_BANANA_PATH/Samsung/3.2.x/test/target/
done
