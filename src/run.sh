SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: "values(1,'A')"
sqlite3 :memory: "pragma function_list;" | grep values

for path in `ls -1 | grep .sql | sort`; do
	echo $path
	sqlite3 < $path
done

# https://qiita.com/m-sakano/items/7f1afc7eb452a1a57015
# select edit('AAA', 'vim'); したあと表示が壊れるので
stty sane

