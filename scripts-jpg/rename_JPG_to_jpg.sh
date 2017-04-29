# Written by Ali Imran on 5th April, 2017.

scripts_folder=~/desktop/scripts-jpg

bool_folder_processed=0

for D in *; do

	if [[ "${D}" != "done" && "${D}" != "small" ]] 
	then
	
		echo '*********************************************'
		echo Initial Processing "${D}": [Checking if directory]
		echo '*********************************************'
		
		cwd=$(pwd) #current working directory
		if [ -d "${D}" ]; then
			# if file is directory, then change to that directory
			# and execute subfolder_processing.sh
			
			subfolder="./${D}"
			echo 'cwd is' ${cwd}
			echo "subfolder:" ${subfolder}
			cd "${subfolder}"

			echo '*********************************'
			echo '****Processing subfolder '"${subfolder}"
			echo '*********************************'
			$scripts_folder'/rename_JPG_to_jpg.sh'
			
			cd "${cwd}"
			echo 'Working dir is now' $cwd
			
		fi			

	 	if [ $bool_folder_processed -eq 0 ]; then
			for picFile in *.JPG; do
				mv -fv "${picFile}" "${picFile}.jpg"
				rm -f "${picFile}"
			done
			bool_folder_processed=1
		fi
		

	else
		echo '***********************************************************************************************'
		echo Skipped Processing "${D}"
		echo '***********************************************************************************************'
		echo ''
		echo ''

	fi

		
done

