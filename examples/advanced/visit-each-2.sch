<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025"
  queryBinding="xslt3">
  <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
  
  <group>
    <rule context="description" 
      visit-each="tokenize(., '[\s,.]')[starts-with(., 'CD')]">
      <assert test="substring(., 3) castable as xs:integer">
        Invalid code: <value-of select="."/>
      </assert>
    </rule>
  </group>
  
</schema>