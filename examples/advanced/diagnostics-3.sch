<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025" 
  queryBinding="xslt3">

  <group>
    <rule context="thing">
      <!-- 1 - Refer to the diagnostics in all languages: -->
      <assert test="(@type eq 'normal') or (@type eq 'special')" 
        diagnostics="type-message-en type-message-nl"/>
    </rule>
  </group>
  
  <diagnostics>
    <!-- 2 - Provide the diagnostics in all languages and set the language 
      using the xml:lang attribute: -->
    <diagnostic id="type-message-en" xml:lang="en">
      Invalid type on <value-of select="@name"/>: <value-of select="@type"/>.
    </diagnostic>
    <diagnostic id="type-message-nl" xml:lang="nl">
      Ongeldig type voor <value-of select="@name"/>: <value-of select="@type"/>.
    </diagnostic>
  </diagnostics>
  
</schema>
