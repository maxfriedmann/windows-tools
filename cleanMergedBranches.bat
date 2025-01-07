git branch --merged main --no-color | grep -v main | xargs git branch -d
