@ECHO off
::template file name
SET templatefile=template.txt

::editor
SET editor=notepad

::get localtime/date information put into corresponding variables
FOR /f %%x in ('wmic PATH win32_localtime get /FORMAT:list ^| FINDSTR "="') do SET %%x

::set day and time
SET today=%year%%month%%day%
SET currenttime=%hour%%minute%%second%

::set current ticket and destination file information
SET current_ticket_information=%today%-%currenttime%.txt
SET destination=%today%.txt
TYPE %templatefile% >> %current_ticket_information%

::open current ticket for edit
%editor% %current_ticket_information%

::output to destination
TYPE %current_ticket_information% >> %destination%

