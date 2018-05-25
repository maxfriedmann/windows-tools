@echo off
smallstack gitflow --release --patch & git push --tags & git push origin master & git push origin develop