<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>WFR_Lead_NotifyCRMRep</fullName>
        <active>false</active>
        <formula>AND(NOT(ISBLANK(EmailRepmail__c)), ISCHANGED(EmailRepmail__c))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
