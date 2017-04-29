mkdir ./small
mkdir ./done

for f in *.jpg; do
    
    if [ -f "$f"-s.jpg ]
    then
		echo "$f processed."
		mv -f -v "$f"-s.jpg	"./small/$f"-s.jpg
		mv -f -v "$f"		"./done/$f"
    fi

done