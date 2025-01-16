mkdir ex0{0..7}

for letter in {0..7}; do
	dir=ex0${letter}
	mv "day08_ex0${letter}.sql" $dir/
	mv "day08-0${letter}.png" $dir/ 
done
