mkdir ex0{0..9}

for letter in {0..9}; do
	dir=ex0${letter}
	mv "day07_ex0${letter}.sql" $dir/
done
