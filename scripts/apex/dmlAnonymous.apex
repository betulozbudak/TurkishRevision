account acc = new account();
acc.name ='Salesforce';
insert acc;

account ac =[select id, name from Account where name = 'Salesforce' limit 1];

ac.name = 'salesforce Inc.';
update ac;


List<account> accList = new List<account>();
for(integer i=1; i<=3; i++){
    account acc = new account();
    acc.name = 'Account Demo' + i;
    accList.add(acc);
}
insert accList;

integer a=1;
list<contact> conList = new List<Contact>();
for(account acc : acclist){
    contact con = new Contact();
    con.lastName = 'Contact' + a;
    a++;
    con.AccountId = acc.id;
    conList.add(con);
}

insert conList;






