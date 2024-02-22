#!/bin/bash
PATH=$PATH:`pwd`/xmlbeans-5.2.0/bin
export XMLBEANS_HOME=`pwd`/xmlbeans-5.2.0/lib
export XMLBEANS_LIB=`pwd`/xmlbeans-5.2.0/lib
scomp -dl -src dslforumOrgCwmp -out dslforumOrgCwmp.jar cwmp-1-4.xsd renamecwmp.config

