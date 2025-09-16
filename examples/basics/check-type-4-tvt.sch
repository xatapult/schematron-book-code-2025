<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025" 
  queryBinding="xslt3">
  <pattern>
    <rule context="@type">
      <assert test="(. eq 'normal') or (. eq 'special')">
        The type of {../@name} must be normal or special, not {.}
      </assert>
    </rule>
  </pattern>
</schema>
