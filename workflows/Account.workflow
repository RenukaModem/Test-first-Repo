<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Test</fullName>
        <description>Test</description>
        <protected>false</protected>
        <recipients>
            <recipient>integration@00d7f000005clv3uac.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>suryakusampudi@self.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/New_Email_template</template>
    </alerts>
    <rules>
        <fullName>Test rule</fullName>
        <actions>
            <name>Test</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.Rating</field>
            <operation>equals</operation>
            <value>Hot,Warm,Cold</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
