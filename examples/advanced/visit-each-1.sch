<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025">
  <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
  
  <group>
    <rule context="description" >
      <assert test="every $w in tokenize(., '[\s,.]+')[starts-with(., 'CD')] 
          satisfies (substring($w, 3) castable as xs:integer)">
        Invalid codes found!
      </assert>
    </rule>
  </group>
  
</schema>