<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025" 
  queryBinding="xslt3">

  <ns uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>

  <group>
    <rule context="/*">
      <assert test="sum(parcel/@weight) le xs:double(@max-weight)">The total 
        weight is too high</assert>
    </rule>
    <rule context="parcel">
      <assert test="(xs:date(/*/@delivery-date) - xs:date(@date)) gt 
        xs:dayTimeDuration('P10D')">The parcel's date must be more than 
        10 days before the delivery date</assert>
    </rule>
  </group>

</schema>
