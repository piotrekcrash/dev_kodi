cd $1
git pull
cd ..
./generate-zip.sh $1
python3 generator.py
git add -u
git add addons.xml
git add addons.xml.md5
git add zips/$1/* -f
git commit -m "$(date)"
git push
