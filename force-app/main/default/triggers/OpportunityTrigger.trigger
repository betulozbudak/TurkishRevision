trigger OpportunityTrigger on Opportunity (before insert,after insert,before update,after update) {
  /*SORU: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver.*/
    /*if(trigger.isBefore && trigger.isUpdate){
        for(Opportunity opp: trigger.new){
            if (opp.StageName != trigger.OldMap.get(opp.id).StageName){
                if(opp.StageName=='Closed Lost'){
                    opp.Description = 'Cok Uzgunuz';
                }
                if(opp.StageName== 'Closed Won'){
                    opp.Description ='Yasasin';
                }
                if(opp.StageName=='Prospecting'){
                    opp.StageName.addError('Sureci basa donduremezsiniz.bu islemi yapamazsiniz');
                }
            }
        }
    }*/

    /*SORU: Bir opportunity nin Amount update edildiğinde bağlı olduğu accountun tüm 
opportunities nin Amount toplamları Accountun Description kısmına yazılsın.*/
      if(trigger.isAfter){
        //etkilenen account id toplayacagim bir set yapi
         set<id> accIds = new set<id>();
         if(trigger.isInsert || trigger.isUndelete){
            for(Opportunity op: trigger.new){
                if(op.AccountId !=null && op.Amount!= null){
                    accIds.add(op.AccountId);
                }
            }
         }
         if(trigger.isUpdate){
            for(opportunity op: trigger.new){
                if(op.AccountId != trigger.oldMap.get(op.Id).AccountId || op.Amount != trigger.oldMap.get(op.id).Amount){
                    accids.add(op.AccountId);
                    accids.add(trigger.oldMap.get(op.id).AccountId);
                }
            }
         }

         if(trigger.isDelete){
            for(Opportunity op : trigger.old ){
                if(op.AccountId != null && op.Amount !=null){
                    accids.add(op.AccountId);
                }
            }
         }

         if(!accids.isEmpty()){
            list<account> accList = new list<account>();
            acclist= [select id,name, Description,(select id,name, amount from Opportunities) from Account where id in : accIds];
            for(account acc : accList){
                decimal totalAmount = 0;
                for(Opportunity op : acc.Opportunities){
                    totalAmount += op.Amount;
                }
                acc.Description = 'bu accounta bagli opportunutiylerin amountlari toplami =' + totalAmount;
            }
            update accList;
        }
    }      
}


