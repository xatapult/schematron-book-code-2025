<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" schematronEdition="2025"
  queryBinding="xquery31" xmlns:xqs="http://www.w3.org/2012/xquery">
  <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
  
  <xqs:function xml:space="preserve">
    declare function local:get-price($type as xs:string) as xs:double {
      let $prices-document as document-node() := doc('type-codes-and-prices.xml')
      let $data-element-for-type as element(data)? := 
        $prices-document//data[@type eq $type]
      return
        if (exists($data-element-for-type))
        then
          xs:double($data-element-for-type/@price)
        else
          xs:double($prices-document/type-codes-and-prices/@default-price)
    };
  </xqs:function>
 
  <group>
    <rule context="//thing">
      <let name="expected-price" as="xs:double" value="local:get-price(@type)"/>
      <assert test="$expected-price eq xs:double(@price)">
        The price for <value-of select="@name"/> should be 
        <value-of select="$expected-price"/>
      </assert>
    </rule>
  </group>

</schema>
