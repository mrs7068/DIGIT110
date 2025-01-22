<?xml version="1.0" encoding="UTF-8"?>

<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    
    <pattern id="location-geocoding-checks">
        <rule context="location[contains(., 'AU')]">
            <assert test="@lat &lt; 0 and @long &gt; 100">
            </assert>
        </rule>
        
        <rule context="location[contains(., 'USA')]">
            <assert test="@lat &gt; 0 and @long &lt; 0">
            </assert>
        </rule>
    </pattern>
</schema>