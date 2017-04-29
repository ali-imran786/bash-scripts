# Start in Pictures folder
# cd "~/Desktop/Ayesha Imran - Pix from Dell"

mkdir "/Users/iOS/Desktop/new/"

bool_folder_processed=0

if [ $bool_folder_processed -eq 0 ]; then

	mv small/* "/Users/iOS/Desktop/new/"
	rm -rf small
	rm -rf done

	bool_folder_processed=1
fi

for d in * ; do
	if [[ -d "$d" && "$d"!="done" && "$d"!="small" ]]; then
		
		cd "$d"

		mkdir "/Users/iOS/Desktop/new/$d/"

		mv small/* "/Users/iOS/Desktop/new/$d/"
		rm -rf small
		rm -rf done

		cd ..
	fi	
done