basla=1
for dosya in $2/*$3; do
dosyadi=$4
uzantisi="${dosya##*.}"
if [ "$1" == 'directory' ]; then
  yenidosyadi=$(printf "$dosyadi"_"$basla")
  cp -R -- "$dosya" "$yenidosyadi"
else 
  yenidosyadi=$(printf "$dosyadi"_"$basla"."$uzantisi")
  cp  -- "$dosya" "$yenidosyadi"
fi

let basla=basla+1

done