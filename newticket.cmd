@echo off
::get date/time
CALL getdate.cmd

::get user settings
CALL config.cmd

TYPE %templatefile% >> %current_ticket_information%

::open current ticket for edit
%editor% %current_ticket_information%

::output to destination
TYPE %current_ticket_information% >> %destination%

