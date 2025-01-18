mkdir ex0{0..8}

for letter in {0..8}; do
	dir=ex0${letter}
	mv "day04_ex0${letter}.sql" $dir/
done
