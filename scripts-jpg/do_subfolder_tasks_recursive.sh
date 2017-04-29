# Written by Ali Imran.
# Start in Pictures folder

# output folder is /Users/iOS/desktop/new
# run script in folder containing pic to be processed, after running subfolder_processing.sh

new_dir=""
if [ -z "$1" ]; then
	new_dir="/Users/iOS/desktop/new"
else
	new_dir="/Users/iOS/desktop/new/$1"
fi

echo ''
echo '***************'
echo $new_dir
echo 'pwd is:' $(pwd)
echo '***************'
echo ''

mkdir "$new_dir"

mv small/* "$new_dir"
rm -rf small
rm -rf done



for d in * ; do
	if [[ -d "$d" && "$d"!="done" && "$d"!="small" ]]; then
		
		cd "$d"

		if [ -z "$1" ]; then
			/Users/iOS/Desktop/scripts-jpg/do_subfolder_tasks_recursive.sh "$d"
		else
			/Users/iOS/Desktop/scripts-jpg/do_subfolder_tasks_recursive.sh "$1/$d"
		fi

		cd ..
	fi	
done