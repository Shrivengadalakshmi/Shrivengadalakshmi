import { LightningElement } from 'lwc';
import  getContactList from '@salesforce/apex/GetContacts.getContactList';
export default class ParentDisplay extends LightningElement {
    contactName;
    contactName;
    contactList;

    connectedCallback(){
        getContactList()
          .then(data =>{
               console.log(data);
      this.contactList=data;
               })
           .catch(error =>{
               console.log(error);
           })
        }

    captureContactInformation(contactName , contactPhone ){
        this.contactName = contactName;
        this.contactPhone = this.contactPhone;

        
    }
}