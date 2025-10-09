<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025">
  <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
  
  <param name="max-width" value="100"/>
  <param name="max-height" value="100"/>
  <param name="max-depth" value="100"/>

  <group>
    <rule context="parcel">
      <assert test="xs:integer(@width) le $max-width">
        Parcel <value-of select="@id"/> is too wide
      </assert>
      <assert test="xs:integer(@height) le $max-height">
        Parcel <value-of select="@id"/> is too high
      </assert>
      <assert test="xs:integer(@depth) le $max-depth">
        Parcel <value-of select="@id"/> is too deep
      </assert>
    </rule>
  </group>
  
</schema>