<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025"  
  queryBinding="xslt3">
  <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>

  <phase id="phase-preliminary">
    <let name="message-severity" as="xs:string" value="'warning'"/>
    <active pattern="preliminary-checks"/>
  </phase>
  
  <phase id="phase-final">
    <let name="message-severity" as="xs:string" value="'error'"/>
    <active pattern="preliminary-checks"/>
    <active pattern="final-checks"/>
  </phase>

  <group id="preliminary-checks">
    <rule context="…">
      <assert severity="$message-severity" test="…">…</assert>
      <assert severity="$message-severity" test="…">…</assert>
    </rule>
  </group>
  
  <group id="final-checks">
    <rule context="…">
      <assert severity="$message-severity" test="…">…</assert>
      <assert severity="$message-severity" test="…">…</assert>
    </rule>
  </group>
  
</schema>
