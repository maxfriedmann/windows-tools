git branch --merged master --no-color | grep -v master | grep -v stable | xargs git branch -d

