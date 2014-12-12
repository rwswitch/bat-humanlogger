bat-humanlogger
===============

Really bad - human interaction - logging system. MS Batch file edition

Hey, you stumbled upon this horrifying abomination.

I made this as a lightweight human-input logging system.
Ours is bad. We upgraded to one I like less. My computer was worse.
Because of how things are handled here, (mostly exchange) it takes a long time for mail to load, too.

So at times the call volume would be such that I couldn't perform all the fiddly things in the ticketing system's garbage UI.

So the short version is to keep a long list of call information in a timestamped file, punch them all in when I actually have the time to.

In it's base function, the file grabs some basic info (location of template file, current date/time).
Then vomits them to an appropriately named file (generally with some date info) for user editing.

I have later plans to have it only load one templated file to the screen, then move that to a daily master.


For now, ticketing is handled by the proprietary application. If I had access to a database, I'd probably start using that with an incrementer.


This is essentially an exercise in single data entry point queues.

