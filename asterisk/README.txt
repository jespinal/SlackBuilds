I. Asterisk SlackBuilds
-----------------------

This is a set of scripts for making Slackware Linux binary packages. This will (hopefully) speedup 
the compilation/installation process and help with setting a testing environment (or production one, if you wish)

The idea is to have a set of scripts that can be used for automating things while installing from scratch.


About Asterisk 1.4.X;
Even if this version of Asterisk has been marked as EOL, it still offers exceptional stability and reliability.
This is basically the kind of software that "just works" and you can rely on.

About Asterisk 1.8.X:
This is the cutting edge, state of the art version of Asterisk so far. A lot of improvements have been done,
and resources are focused toward this branch.

You should really take a look at it as it has several new features as well.


II. Sample Usage
----------------
One day, you wake up with desires of testing some new functionality of Asterisk that you never tried before,
you sit in front of your computer, and... you just realize that is not so funny when you have to install *everything* from scratch
(because you will not -I sincerelly hope so- try things on production servers).

Do the following:

cd /tmp
hg clone https://bitbucket.org/jespinal/slackbuilds
cd /tmp/slackbuilds/asterisk

Here you will see the 'common' directory, where are located the SlackBuilds for software used for 1.4 and 1.8.

Enter a SlackBuild directory, download the source (look for 'package-name'.info), and run the SlackBuild.

Binary packages will be created inside /tmp/SBo/

use 'installpkg' in order to install them.


In the (not so near) feature, I might eventually create a script that will use SlackBuilds to do the whole thing (compiling, installing, etc.).

PS.
Look for base_cfg directory for useful preconfigured samples (like ODBC, Asterisk config files, etc.)



III. Updates:
-------------
- May-14-2011:
I've been informed that h323 (chan_h323) will soon be deprecated in favor of ooh323. A lot of work has been done in ooh323.


Recommended Building Order:
---------------------------

./common/

a. newt-SlackBuild/
   NewT Libraries

b. libpri-SlackBuild/
   LibPRI

c. libss7-SlackBuild/
   LibSS7

d. dahdi_linux-SlackBuild/
   DAHDI Linux

e. dahdi_tools-SlackBuild/
   DAHDI Tools

f. unixODBC-SlackBuild/
   UnixODBC (entire ODBC API, Drivers, and tools)

g. mysql_connector_odbc-SlackBuild/
   Connector/ODBC (standardized database driver)

#  This will no longer be *required* when chan_h323 gets deprecated
h. ptlib-SlackBuild/
   PTLib (used be called PWLib), latest version

#  This will no longer be *required* when chan_h323 gets deprecated
i. h323plus-SlackBuild/
   H323 Plus (formerly known as OpenH323)


./1.4/ ./1.8/

j. asterisk-SlackBuild/
   Asterisk 1.4.XX
   Asterisk 1.8.XX

./common/
k. asterisk_addons-SlackBuild/
   Asterisk Add-Ons
