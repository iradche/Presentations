# распаковать файлы *dbf.bz2
for FILE in *dbf.bz2; do
	bunzip2 $FILE
done

# преобразовать *.dbf в *.csv
for DBF in *.dbf; do
	CSV=`echo $DBF | sed "s/.dbf/.csv/"`
	dbf_dump $DBF | 	\
	iconv -f cp866 -t utf8 > $CSV
done
