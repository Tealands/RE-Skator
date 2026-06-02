
# コンパイル
gcc -finput-charset=UTF-8 skator.c
if [ $? -ne 0 ]; then
    echo "コンパイルに失敗しました。"
    exit 1
fi

# 実行
./skator 

if [ $? -ne 0 ]; then
    echo "実行に失敗しました。"
    exit 1
fi