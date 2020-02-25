set /p mongo_url="Enter remote MONGO_URL: "

@echo on
rm -Rf dump
mongodump --uri="%mongo_url%" --out dump

for /d %%F in (dump/*) do set dbname=%%F & goto :break
:break
echo Restoring DB "%dbname%"
mongorestore --host localhost --port 27017 --db cloud --drop dump/%dbname%
rm -Rf dump
