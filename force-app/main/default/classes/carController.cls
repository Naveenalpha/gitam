/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-16-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class carController {
    public static List<Car__c> getCars(){
        return [SELECT Id, Name, MSRP__C, Description__c, 	Category__c, 	Picture_URL__c
        FROM Car__c];
    }
}