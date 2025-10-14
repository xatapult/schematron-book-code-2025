<?xml version="1.0" encoding="UTF-8"?>
<my-diagnostics xmlns="http://purl.oclc.org/dsdl/schematron">
  
  <diagnostics  xml:id="type-diagnostics">
    <diagnostic id="type-message-en" xml:lang="en">
      Invalid type on <value-of select="@name"/>: <value-of select="@type"/>.
    </diagnostic>
    <diagnostic id="type-message-nl" xml:lang="nl">
      Ongeldig type voor <value-of select="@name"/>: <value-of select="@type"/>.
    </diagnostic>
  </diagnostics>
  
  <diagnostics xml:id="other-diagnostics">
    …
  </diagnostics>
  
  <diagnostics xml:id="even-more-diagnostics">
    …
  </diagnostics>
  
</my-diagnostics>

