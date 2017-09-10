#!/bin/bash
#
# Due to a change in the bytecode verifier in Java 8, the bytecode verifier
# rejects the ContentSigningTool class.  It has been fixed in JDK 1.8.0_141.
# Oracle since a lot of code broke.  If using an earlier JDK, inser the 
# "-noverify" option to get around the issue.  The risk is that the bytecode 
# isn't being verified.

java -classpath lib -Dlog4j.configurationFile=resources/log4j2.xml -jar GSA-ICAM-Card-Builder.jar gov.gsa.icamcardbuilder.app.Gui

echo -n "Press <RETURN> to close this window: "
read ans
