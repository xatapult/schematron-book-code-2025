<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025"  
  queryBinding="xslt3">
  
  <!-- 1 - Define the xs namespace prefix so we can provide data types
    for variables. -->
  <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
  
  <!-- 2 - Define the number of days a parcel's date must be before the 
    delivery date and turn this into a duration: -->
  <let name="delivery-day-limit" as="xs:integer" value="10"/>
  <let name="delivery-day-limit-as-duration" as="xs:dayTimeDuration"
    value="xs:dayTimeDuration('P' || $delivery-day-limit || 'D')"/>
  
  <!-- 3 - Grab important values from the root element: -->
  <let name="max-weight" as="xs:double" value="xs:double(/*/@max-weight)"/>
  <let name="delivery-date"  as="xs:date" value="xs:date(/*/@delivery-date)"/>
  
  <group>
    
    <rule context="/*">
      <!-- 4 - Compute the total parcels weight, store this in a variable
        and use this in the assert's test and in the message: -->
      <let name="total-parcels-weight" as="xs:double" 
        value="sum(parcel/@weight)"/>
      <assert test="$total-parcels-weight le $max-weight">
        The total weight <value-of select="$total-parcels-weight"/> is 
        more than the allowed maximum <value-of select="$max-weight"/>
      </assert>
    </rule>
  
    <rule context="parcel">
      <!-- 5 - Get the parcel's date and make sure it has the right 
        data type: -->
      <let name="parcel-date" as="xs:date" value="xs:date(@date)"/>
      <assert 
        test="($delivery-date - $parcel-date) gt  
                $delivery-day-limit-as-duration">
          The parcel's date <value-of select="$parcel-date"/> must be 
        more than <value-of select="$delivery-day-limit"/> days 
        before the delivery date <value-of select="$delivery-date"/>
      </assert>
    </rule>
    
  </group>
  
</schema>
