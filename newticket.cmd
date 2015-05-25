@echo off
::get date/time
CALL getdate.cmd

::get user settings
CALL config.cmd

ECHO %today%-%USERNAME%-%currenttime% >> %current_ticket_information%
TYPE %templatefile% >> %current_ticket_information%

::open current ticket for edit
%editor% %current_ticket_information%

::output to destination
ECHO %current_ticket_information% >> %daylog%

