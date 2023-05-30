public with sharing class AccountListController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList(){
        List<Account> accountList = [Select Id, Name, Type, Phone, Income__c FROM Account];
        return accountList;
    }
}