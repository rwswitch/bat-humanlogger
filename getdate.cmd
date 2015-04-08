@echo off

::get localtime/date information put into corresponding variables
::example taken from: http://stackoverflow.com/questions/10945572/windows-batch-formatted-date-into-variable
for /f %%x in ('wmic path win32_localtime get /format:list ^| findstr "="') do set %%x
