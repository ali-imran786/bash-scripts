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
			$scripts_folder'/subfolder_processing.sh'
			
			cd "${cwd}"
			echo 'Working dir is now' $cwd
			continue
		fi

		if [ $bool_folder_processed -eq 0 ]; then
			echo '*********************************'
			echo '****Resizing files in folder: '"${cwd}"' ****'
			echo '*********************************'
			$scripts_folder'/run_dir_resize.sh'

			echo '*********************************'
			echo Processed folder "${cwd}"
			echo '************************************************************************************************'		
			$scripts_folder'/move_done_files.sh'
			echo '************************************************************************************************'		
			echo ''
			echo ''

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

