public with sharing class checkLeads {
    public static string CheckTestContainsLeads() {

        String firstName = 'Test Lakshmi';
        if (firstName.toLowerCase().contains('test')) {
            system.debug('true');

        }
        else{
            system.debug('false');
        }
    }
}