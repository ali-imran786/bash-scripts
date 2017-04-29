# Start in Pictures folder
# cd "~/Desktop/Ayesha Imran - Pix from Dell"
for d in * ; do
	if [[ -d "${d}" ]]; then 
		cd "${d}"
		
		mkdir small
		for f in *-s.jpg; do
		
			mv "$f" "./small/$f"

		done 

		for f in *.jpg; do
		
			mv ${f} "./done/$f"

		done 

		cd ..
	fi
done