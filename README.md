# dslforum-xmlbeans
Shell scripts use XMLBeans to generate Java libraries for CWMP protocol parsing and DataModel code generation programs. 
The inputs are schema files defined by the DSL Broadband Forum for TR-069 and TR-369.

## CWMP datamodel generator 
Apache XMLBeans is used to generate the Java library used by the code generators for the CWMPc client and the USP agents from the cwmp-datamodel-1-x.xsd schemea.

To build the library run the following shell scipt:

1. Download and uppack xmlbeans-5-2-0 into cloned directory. https://www.apache.org/dyn/closer.lua/poi/xmlbeans/release/bin/xmlbeans-bin-5.2.0-20231108.tgz
2. `buildUSPDM-5.2.0.sh`

The cwmpdatamodel.jar is required in the class path for the code generators.

## CWMP protocol parser
Apache XMLBeans is used to generate the Java code library, dslforumOrgCwmp, for parsing the CWMP protocol defined by cwmp-1-4.xsd. This is use by the Gatespace ACS management server code.
 
The build-dslforumCwmp.sh script sets up the environment variable and run scomp. The -dl option is enabled on scomp to download the SOAP encoding schema, etc. The result is	dslforumOrgCwmp.jar


The cwmprename.xsdconfig file renames the package from dslforumOrgCwmp12 to dslforumOrgCwmp. This to allow the ACS java code to import the same package name for all versions of the schema without changing the import names.

The cwmprename.xsdconfig file is:

<xb:config xmlns:xb="http://xml.apache.org/xmlbeans/2004/02/xbean/config"
           xmlns:uri="urn:dslforum-org:cwmp-1-2">

  <xb:namespace uri="urn:dslforum-org:cwmp-1-2">
    <xb:package>dslforumOrgCwmp</xb:package>
  </xb:namespace>

</xb:config>

The the schema/easypo.xsdconfig file for more detailed examples of how the config file can be used to control package, class, and method name generation.

The dslforumOrgCwmp.jar should be copied into the ACS project acsejblib.

