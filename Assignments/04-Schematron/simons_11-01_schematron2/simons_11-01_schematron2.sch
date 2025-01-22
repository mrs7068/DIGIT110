<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    <pattern id="check-xml-id">
        <rule context="tei:person" role="info">
            <assert test="starts-with(@xml:id, (.//tei:surname)[1])">
                The xml:id does not contain the surname text.</assert>
        </rule>
    </pattern>
   
    <pattern id="check-capitalization">
        <rule context="tei:forename | tei:surname | tei:placeName | tei:persName[not(*)]" role="warn">
            <assert test="matches(.,'^[A-Z]')">
                Check to see that these elements all start with a capital letter.
            </assert>
        </rule>
    </pattern>
    <!--I know this is totally wrong haha. It flagged all of the "sex" attributes too for being lowercase. I don't think I'm checking the right things.-->
    
    <pattern id="check-dates">
        <rule context="tei:person">
            <report test="tei:death/@when ! tokenize(., '-')[1] &lt; tei:birth/@when ! tokenize(., '-')[1]">
                Death year should never be earlier than birth year!!!
            </report>
        </rule>
        
        <!--<rule context="tei:person">
            <assert test="not(tei:death/@when and tei:birth/@when and
                number(tokenize(tei:death/@when, '-')[1]) &lt; number(tokenize(tei:birth/@when, '-')[1]))">
                Death year should never be earlier than birth year!!!</assert>
        </rule>-->
        <!--I got very lucky by trying lots of randomness with this one and got it-->
    </pattern>
</schema>