trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
    /*if (trigger.isBefore && trigger.isInsert) {
        System.debug('trigger new = ' + trigger.new);
        //List<Contact> cList = trigger.new;
        System.debug('record sayisi = ' + trigger.new.size());
        for (contact c : trigger.new) {
            System.debug('record = ' + c);
            System.debug('first name : ' + c.FirstName);
            System.debug('last name : ' + c.LastName);
            System.debug('id : ' + c.id);
        }
    }
    if (trigger.isAfter && trigger.isInsert) {
        for (contact c : trigger.new) {
            System.debug('record = ' + c);
            System.debug('first name : ' + c.FirstName);
            System.debug('last name : ' + c.LastName);
            System.debug('id : ' + c.id);
        }
    }*/
    /*if (trigger.isBefore && trigger.isUpdate) {
        System.debug('Before Update Trigger');
        System.debug('trigger new = ' + trigger.new);
        for (contact c : trigger.new) {
            //System.debug('record = ' + c);
            System.debug('first name : ' + c.FirstName);
            System.debug('last name : ' + c.LastName);
            System.debug('id : ' + c.id);
        }
        System.debug('trigger old = ' + trigger.old);
        for (contact c : trigger.old) {
            //System.debug('record = ' + c);
            System.debug('first name : ' + c.FirstName);
            System.debug('last name : ' + c.LastName);
            System.debug('id : ' + c.id);
        }
        System.debug('========END========');

    }*/
    if (trigger.isAfter && trigger.isUpdate) {
        //Eski firstname ile yeni first name ayni satirda yazin..
        //version 1
        System.debug('Version 1');
        for (contact c : trigger.new) {
            string oldFirstName = trigger.oldMap.get(c.id).FirstName;
            string newFirstName = trigger.newMap.get(c.id).FirstName;
            System.debug('Eski isim : ' + oldFirstName + ', Yeni isim : ' + newFirstName);
            string oldLastName = trigger.oldMap.get(c.id).LastName;
            string newLastname = trigger.newMap.get(c.id).LastName;
            System.debug('Eski soyad : ' + oldLastName + ', Yeni soyad : ' + newLastname);
        }

        //version 2
        System.debug('Version 2');
        for (contact c : trigger.new) {
            System.debug('Eski isim : ' + trigger.oldMap.get(c.id).FirstName + ', Yeni isim : ' + c.FirstName);
            System.debug('Eski soyad : ' + trigger.oldMap.get(c.id).LastName + ', Yeni soyad : ' + c.LastName);
        }

        //version 3
        System.debug('Version 3');
        for (contact c : trigger.old) {
            System.debug('Eski isim : ' + c.FirstName + ', Yeni isim : ' + trigger.newMap.get(c.id).FirstName);
            System.debug('Eski soyad : ' + c.LastName + ', Yeni soyad : ' + trigger.newMap.get(c.id).LastName);
        }



        /*System.debug('After Update Trigger');
        System.debug('trigger new = ' + trigger.new);
        for (contact c : trigger.new) {
            //System.debug('record = ' + c);
            System.debug('first name : ' + c.FirstName);
            System.debug('last name : ' + c.LastName);
            System.debug('id : ' + c.id);
        } 
        System.debug('trigger old = ' + trigger.old);
        for (contact c : trigger.old) {
            //System.debug('record = ' + c);
            System.debug('first name : ' + c.FirstName);
            System.debug('last name : ' + c.LastName);
            System.debug('id : ' + c.id);
        }
        System.debug('========END========');*/
    }   
}
    /*if(trigger.isBefore && trigger.isInsert){
       system.debug('trigger new = ' + trigger.new);
       //list<contact> cList = trigger.new;
       system.debug('record sayisi=' + trigger.new.size());

       for(contact eachContact : trigger.new){
          system.debug('record= ' + eachContact);
          system.debug('first name = ' + eachcontact.FirstName);
          system.debug('last name =' + eachContact.LastName);
          system.debug('id = ' + eachContact.id);
       }

    }
    if(trigger.isAfter && trigger.isInsert){
        for(contact eachContact : trigger.new){
            system.debug('record= ' + eachContact);
            system.debug('first name = ' + eachcontact.FirstName);
            system.debug('last name =' + eachContact.LastName);
            system.debug('id = ' + eachContact.id);
         }
    }

    if(trigger.isBefore && trigger.isUpdate){
        for(contact eachContact : trigger.new){
            system.debug('record= ' + eachContact);
            system.debug('first name = ' + eachcontact.FirstName);
            system.debug('last name =' + eachContact.LastName);
            system.debug('id = ' + eachContact.id);
         }
    }
    if(trigger.isAfter && trigger.isUpdate){
        for(contact eachContact : trigger.new){
            system.debug('record= ' + eachContact);
            system.debug('first name = ' + eachcontact.FirstName);
            system.debug('last name =' + eachContact.LastName);
            system.debug('id = ' + eachContact.id);
         }
    }
    /*if (trigger.isBefore && trigger.isInsert) {
        System.debug('Before Insert Trigger Tetiklendi..');
        System.debug('Trigger New = ' + trigger.new);
        System.debug('Trigger OLd = ' + trigger.old);
        System.debug('Trigger NewMap = ' + trigger.newMap);
        System.debug('Trigger OldMap = ' + trigger.oldMap);
        System.debug('========END===============');
    }
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('After Insert Trigger Tetiklendi..');
        System.debug('Trigger New = ' + trigger.new);
        System.debug('Trigger OLd = ' + trigger.old);
        System.debug('Trigger NewMap = ' + trigger.newMap);
        System.debug('Trigger OldMap = ' + trigger.oldMap);
        System.debug('========END===============');
    }
    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('Before Update Trigger Tetiklendi..');
        System.debug('Trigger New = ' + trigger.new);
        System.debug('Trigger OLd = ' + trigger.old);
        System.debug('Trigger NewMap = ' + trigger.newMap);
        System.debug('Trigger OldMap = ' + trigger.oldMap);
        System.debug('========END===============');
    }
    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('After Update Trigger Tetiklendi..');
        System.debug('Trigger New = ' + trigger.new);
        System.debug('Trigger OLd = ' + trigger.old);
        System.debug('Trigger NewMap = ' + trigger.newMap);
        System.debug('Trigger OldMap = ' + trigger.oldMap);
        System.debug('========END===============');
    }*/


