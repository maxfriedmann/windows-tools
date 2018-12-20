@echo off
smallstack gitflow --release --patch --no-gitflow & git push --tags & git push origin master