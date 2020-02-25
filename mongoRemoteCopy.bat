set /p mongo_src="Enter source MONGO_URL: "
set /p mongo_target="Enter target MONGO_URL: "

mongodump  --uri "%mongo_src%" --archive | mongorestore --uri "%mongo_target%" --archive
