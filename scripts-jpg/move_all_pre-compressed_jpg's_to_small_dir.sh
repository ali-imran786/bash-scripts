# Start in Pictures folder
cd ~/Desktop/Pictures
for d in * ; do
	if [[ -d "${d}" ]]; then 
		cd "${d}"
		mkdir small 	
		mv *.s.jpg ./small
		cd .. 
	fi
done
