<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>asdasdsa</fullName>
        <description>asdasdsa</description>
        <protected>false</protected>
        <recipients>
            <recipient>karanpedapudi@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/MarketingProductInquiryResponse</template>
    </alerts>
    <fieldUpdates>
        <fullName>TestUpdate</fullName>
        <field>Email</field>
        <name>TestUpdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Null</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>rrr</fullName>
        <field>Email</field>
        <formula>&quot;nagraosfdc@gmail.com&quot;</formula>
        <name>rrr</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>sdsf</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.CreatedById</field>
            <operation>equals</operation>
            <value>hi</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>hjk</fullName>
        <assignedTo>pjayalakshmi30@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Contact.EmailBouncedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>hjk</subject>
    </tasks>
</Workflow>
