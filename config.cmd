@echo off

::template file name
SET templatefile=template.txt

::editor
SET editor=notepad

::set day and time
SET today=%YEAR%%MONTH%%DAY%
SET currenttime=%hour%%minute%%second%

::set current ticket and destination file information
SET current_ticket_information=logs\%today%-%USERNAME%-%currenttime%.txt
SET destination=logs\%today%.txt
