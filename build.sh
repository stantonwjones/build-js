fileType=js
buildFile=build.txt
outputFile=$1
catArgs=''

rm $outputFile

while read line
do
    nextArg=$line' '
    catArgs=$catArgs$nextArg
    echo $catArgs
done < $buildFile 

cat $catArgs > $outputFile

uglifyjs -o $outputFile $outputFile
