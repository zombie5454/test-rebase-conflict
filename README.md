# test-rebase-conflict
This is a test repo to demonstrate the scenario of multiple conflicts during rebasing

## scenario

new branch *dev* created from *main@c0*

*main* commit three times, only modify file.txt
- c1
- c1 c2
- c1 c2 c3

*dev* commit three times, only modify file.txt
- d1
- d1 d2
- d1 d2 d3

*dev* rebase *main*, and we want final file.txt be `c1 c2 c3 d1 d2 d3`

## command

執行 `./createThreeCommit.sh` 讓 main 和 dev 各完成三次 commit 

執行 `git switch dev && git rebase main`