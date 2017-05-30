<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Send_Email_Rejected_Candidates</fullName>
        <description>Send Email Rejected Candidates</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Status</fullName>
        <field>Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Candidate Rejection Rule</fullName>
        <actions>
            <name>Send_Email_Rejected_Candidates</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Status</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Follow_up_on_Rejection</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Candidate__c.Expected_Salary__c</field>
            <operation>greaterThan</operation>
            <value>150000</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Follow_up_on_Rejection</fullName>
        <assignedTo>samatha_developer@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>2</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>High</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow up on Rejection</subject>
    </tasks>
</Workflow>
