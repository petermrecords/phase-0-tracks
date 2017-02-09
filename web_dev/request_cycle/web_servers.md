# RELEASE 1

##1. What are some of the key design philosophies of the Linux operating system?

Linux is written with computer literate users in mind.  This provides more flexible, but riskier and less user friendly controls than an OS like Mac OS or Windows.

In particular interactions with linux os are managed via the command line rather than via a graphical interface.

##2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS is access sold over the internet to a block of memory and computing power with its own OS install.  It functions as a self-sufficient  "computer" that users (who pay for the access details) can connect to over the internet.

##3. Why is it considered a bad idea to run programs as the root user on a Linux system?

This grants the most extensive rights possible to any applications that are run.  Most applications do not need them, and these privileges would allow the applications to destroy the entire system, erase files etc.  Running programs on user accounts limits potential damage to the areas of the system that user has access to.

# RELEASE 2

onload: I think this could be used to immediately trigger effects when the page loads.

onshow: Similarly, if another event caused this to show after the page loads, this could be used to trigger more effects.

onresize: Triggering effects when the element is resized could also be handy.

onlostpointercapture & onloadedmetadata: not sure what these would do.