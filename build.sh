# This script is used for client building

echo '\n'
echo '    //   ) )                                    '
echo '   ((         ___     ( )  ___   /              '
echo '     \\     //   ) ) / / //   ) /               '
echo '       ) ) //   / / / / //   / /                '
echo '((___ / / ((___( ( / / ((___/ /   @ by linkFly  '
echo '\n'
echo '============= deploy start ============='
npm i --dd
npm run build
echo '============= npm build ============='
cp -r ./package.json ./dist/
cp -r ./package-lock.json ./dist/
cp -r ./deploy.sh ./dist/
cp -r ./views ./dist
rm -r ./said-temp
mv ./dist ./said-temp
tar zcvf said-temp.tar.gz --exclude=.DS_Store said-temp
echo '============= build success ============='