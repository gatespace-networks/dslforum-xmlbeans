#!/bin/bash
PATH=$PATH:`pwd`/xmlbeans-5.2.0/bin
export XMLBEANS_HOME=`pwd`/xmlbeans-5.2.0/lib
export XMLBEANS_LIB=`pwd`/xmlbeans-5.2.0/lib
scomp -dl -src cwmpdatamodel -out cwmpdatamodel.jar cwmp-datamodel-1-9.xsd renamedatamodel.xsdconfig

