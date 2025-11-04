<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025"  
  queryBinding="xslt3">

  <group>
    <rule context="row">
      <assert test="count(entry) le 2">Row with superfluous column(s)</assert>
    </rule>
  </group>

</schema>
