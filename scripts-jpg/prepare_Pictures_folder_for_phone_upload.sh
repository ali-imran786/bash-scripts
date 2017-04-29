# Written by Ali Imran on 6th April, 2017.
# Start in Pictures folder
cd ~/Desktop/Pictures
rm -rf .DS_Store
for d in * ; do 
	if [[ -d "${d}" ]]; then 
		cd "${d}"
		rm -rf ./done
		mv ./small/* .
		rm -rf ./small
		rm -rf .DS_Store
		cd ..
	fi
done
