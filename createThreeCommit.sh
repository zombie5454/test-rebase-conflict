git switch main

# 確保有檔案並清空檔案
touch file.txt
echo > file.txt
git add file.txt
git commit -m "commit c0"

git branch -D dev
git branch dev

# main commit
echo "c1" > file.txt
git add file.txt
git commit -m "commit c1"

echo "c1 c2" > file.txt
git add file.txt
git commit -m "commit c2"

echo "c1 c2 c3" > file.txt
git add file.txt
git commit -m "commit c3"

# dev commit
git switch dev

echo "d1" > file.txt
git add file.txt
git commit -m "commit d1"

echo "d1 d2" > file.txt
git add file.txt
git commit -m "commit d2"

echo "d1 d2 d3" > file.txt
git add file.txt
git commit -m "commit d3"