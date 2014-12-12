@echo off
::This is a quick little callnote taking system that was written for the purpose of
::helping speed up my workflow of repetitive input tasks
::
::It pulls today's date and a template file, loads it into a temp file and editor
::
::Shortcuts: (Use your editor's find section to edit these)
::DATETIMEFORMAT - date/time formatting strings
::

REM template file name, change this to your target template file

set templatefile=template.txt



REM set editor
set editor=notepad


REM sets up template to be printed into the file I know I could skip this step, but I wanted readable code

::if not exist %templatefile%
::echo on
::echo template file does not exist...


REM sets up date information
REM example taken from: http://stackoverflow.com/questions/10945572/windows-batch-formatted-date-into-variable

:: Turn this on or copy this for loop to see what the date formatting is like
@echo off
for /f %%x in ('wmic path win32_localtime get /format:list ^| findstr "="') do set %%x
@echo off

:: "DATETIMEFORMAT"
:: set these to taste
::
::
::
::
SET today=%YEAR%%MONTH%%DAY%
set time=%hour%%minute%


REM sets the current logfile to one represented by today

set filename=%today%.txt
::echo Template:
::type %templatefile%
::echo Destination: & echo:%filename%
type %templatefile% >> %filename%

%editor% %filename%

::PAUSE
