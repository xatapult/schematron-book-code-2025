<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025"  
  queryBinding="xslt3">
  
  <group>
    
    <!-- 1 - Test for a processing-instruction (pi) with the name 'process': -->
    <rule context="/">
      <assert test="processing-instruction(process)">
        There must be a leading process pi present
      </assert>
    </rule>
    
    <!-- 2 - Test the contents of this processing-instruction: -->
    <rule context="/processing-instruction(process)">
      <assert test="contains(., 'type=&quot;full&quot;')">
        The process pi must contain type="full"
      </assert>
    </rule>
    
    <!-- 3 - Check for a comment mentioning ACMEDATA: -->
    <rule context="/*">
      <assert test="comment()[contains(., 'ACMEDATA')]">
        There must be a comment mentioning ACMEDATA underneath the root
      </assert>
    </rule>
    
  </group>
</schema>
