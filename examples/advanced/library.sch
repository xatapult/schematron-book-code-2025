<?xml version="1.0" encoding="UTF-8"?>
<library xmlns="http://purl.oclc.org/dsdl/schematron">
  
  <pattern abstract="true" id="table-pattern">
    
    <param name="table"/>
    <param name="row" />
    <param name="entry"/>
    
    <rule context="$table">
      <assert test="$row">
        The element <value-of select="local-name()"/> is a table structure. 
        Tables must contain the correct row elements.
      </assert>
    </rule>
    
    <rule context="$table/$row">
      <assert test="$entry">
        The element <value-of select="local-name()"/> is a table row. 
        Rows must contain the correct cell elements.
      </assert>
    </rule>
    
  </pattern>  
  
  <pattern is-a="table-pattern" >
    <param name="table" value="table"/>
    <param name="row" value="tr"/>
    <param name="entry" value="td"/>
  </pattern>
  
  <pattern is-a="table-pattern" >
    <param name="table" value="year"/>
    <param name="row" value="week"/>
    <param name="entry" value="day"/>
  </pattern>
  
</library>