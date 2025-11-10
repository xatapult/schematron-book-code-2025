<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025"  
  queryBinding="xslt3">
  
  <group>
    <rule context="i">
      <assert test="not(ancestor::i)">
        You cannot have doubled i elements
      </assert>      
    </rule>
    <rule context="u">
      <assert test="not(ancestor::u)">
        You cannot have doubled u elements
      </assert>      
    </rule>
    <rule context="b">
      <assert test="not(ancestor::b)">
        You cannot have doubled b elements
      </assert>      
    </rule>
  </group>
  
</schema>