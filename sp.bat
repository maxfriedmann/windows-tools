@echo off

SET packageName=%1

IF DEFINED packageName (
    SET packageName=smallstack-%packageName%
)

c:
cd \ws\packages\%packageName%