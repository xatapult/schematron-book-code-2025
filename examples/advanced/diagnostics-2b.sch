<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025"  
  queryBinding="xslt3">

  <group>
    <rule context="thing">
      <assert test="(@type eq 'normal') or (@type eq 'special')"
        diagnostics="thing-explanation">
        Invalid type on <value-of select="@name"/>: <value-of select="@type"/>
      </assert>
    </rule>
  </group>
  
  <diagnostics>
    <diagnostic id="thing-explanation">
      Allowed types for a thing: normal, special.
    </diagnostic>
  </diagnostics>
  
</schema>
