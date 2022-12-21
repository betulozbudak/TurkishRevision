trigger AccountTrigger on Account(before insert,after insert){
    if(Trigger.isBefore && Trigger.isInsert){
    AccountTriggerHandler.duplicateValidation(trigger.new,trigger.newMap);
    }
    
    /* //1 Account create edildiğinde. ona bağlı 7 tane Contact otomatik olarak create edilsin. first name'i account name ile aynı olsun. last name i contact 1 2 3.. diye isimlendirilsin..
    if(trigger.isAfter && trigger.isInsert){
        list<contact> conList= new List<Contact>();
        for(account acc: trigger.new){
            for(integer i=1; i<=7; i++){
                contact c= new contact();
                c.FirstName=acc.Name;
                c.LastName='Contact ' + i;
                c.AccountId= acc.id;
                conList.add(c);
            }
        }
        insert conList;
     }

      // 2. Bir account update edildiğinde name değişmişse description fieldine name değişti mesajı yazdır..
      if(trigger.isBefore&&trigger.isUpdate){
         for(account acc: trigger.new){
            if(acc.name != trigger.oldMap.get(acc.id).name){
               acc.Description='Bu recordun ismi degisti';
            }
         }
      }
      // 3. Bir account update edildiğinde phone  değişmişse description fieldine phone değişti mesajı yazdır.. Name degismisse buna izin vermesin..
      if (trigger.isBefore && trigger.isUpdate) {
            for (account acc : trigger.new) {
                if (acc.phone != trigger.oldMap.get(acc.Id).Phone) {
                    acc.Description = 'Bu recordun telefon numarasi degisti..';
                }
                if (acc.name != trigger.oldMap.get(acc.id).name) {
                    acc.Name.addError('isim degisikligi yapamazsiniz..');
                }
            }
        }
*/
}
