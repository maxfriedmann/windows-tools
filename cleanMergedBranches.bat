git branch --merged master --no-color | grep -v master | xargs git branch -d
