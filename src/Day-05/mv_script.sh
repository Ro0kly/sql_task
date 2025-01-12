mkdir ex0{0..6}

for letter in {0..6}; do
	dir=ex0${letter}
	mv "day05_ex0${letter}.sql" $dir/
done
