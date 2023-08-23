import { LightningElement } from 'lwc';
import returnTenContacts from '@salesforce/apex/AccountMaster.findContactsbyAccount';

export default class AccountMaster extends LightningElement {

    contactList;
    connectedCallback() {
        console.log('connected');
        returnTenContacts()
            .then(data => {
                console.log(data);
                this.contactList = data;
            })
            .catch(error => {
                console.log(error);
            })
    }
    //   get fetchListOfContacts(){
    //     return this.contactList;
    // }
}