<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025"  
  queryBinding="xslt3">

  <group>
    <rule context="title">
      <assert test="string-length(.) le 45">The title is longer than 45 
        characters</assert>
    </rule>
  </group>
  
  <group>
    <rule context="/*">
      <assert test="count(//para) ge 3">There must be at least 3 
        paragraphs</assert>
    </rule>
  </group>

  <group>
    <rule context="footnote-reference">
      <let name="footnote-id" value="@idref"/>
      <assert test="exists(//footnote[@id eq $footnote-id])">
        Footnote id <value-of select="$footnote-id"/> not found</assert>
    </rule>
  </group>
  
</schema>
