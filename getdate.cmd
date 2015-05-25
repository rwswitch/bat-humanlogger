@echo off

::get localtime/date information put into corresponding variables
::example taken from: http://stackoverflow.com/questions/10945572/windows-batch-formatted-date-into-variable
for /f %%x in ('wmic path win32_localtime get /format:list ^| findstr "="') do set %%x

::add leading 0s
IF %second% LSS 10 SET second=0%second%
IF %minute% LSS 10 SET minute=0%minute%
IF %MONTH% LSS 10 SET MONTH=0%MONTH%
IF %DAY% LSS 10 SET DAY=0%DAY%
