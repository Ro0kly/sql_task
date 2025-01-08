mkdir ex0{0..9}
mkdir ex{10..13}

for letter in {0..9}; do
	dir=ex0${letter}
	mv "day03_ex0${letter}.sql" $dir/
done

for letter in {10..13}; do
	dir=ex${letter}
	mv "day03_ex${letter}.sql" $dir/
done
