<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025" 
  queryBinding="xslt3">
  
  <rules>
    <rule abstract="true" id="volume-check">
      <assert test="(@length * @height * @width) le 1">
        The crate with <value-of select="."/> is too big 
      </assert>
    </rule>
  </rules>

  <group>

    <rule context="crate[@material eq 'wood']">
      <extends rule="volume-check"/>
      <assert test=". eq 'books'">
        A wooden crate may only contain books. This one contains 
        <value-of select="."/>
      </assert>
    </rule>

    <rule context="crate[@material eq 'metal']">
      <extends rule="volume-check"/>
    </rule>

  </group>

</schema>
