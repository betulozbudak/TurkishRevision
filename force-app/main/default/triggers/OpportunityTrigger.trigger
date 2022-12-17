trigger OpportunityTrigger on Opportunity (before insert) {
  /*soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver.*/
    if(trigger.isBefore && trigger.isUpdate){
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
    }

    
}
