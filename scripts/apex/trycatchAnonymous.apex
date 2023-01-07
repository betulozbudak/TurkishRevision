/*Common Exception Methods()

getCause: Returns the cause of the exception as an exception object.
getLineNumber: Returns the line number from where the exception was thrown.
getMessage: Returns the error message that displays for the user.
getStackTraceString: Returns the stack trace of a thrown exception as a string.
getTypeName: Returns the type of exception, such as DmlException, ListException, MathException, and so on.*/ 
//hata 1
// account acc = new account();
// insert acc;

try{
    account acc = new account();
    insert acc;
}
catch(DmlException dex){
    system.debug('hello dml exception');
    System.debug(dex);
}
catch(Exception e){
    System.debug('Exception type caught: ' + e.getTypeName());    
    System.debug('Message: ' + e.getMessage());    
    System.debug('Cause: ' + e.getCause());    // returns null
    System.debug('Line number: ' + e.getLineNumber());    
    System.debug('Stack trace: ' + e.getStackTraceString());
}

// hata 2
//List<string> list1;
// string s1 = list1[0];
// System.debug(s1);

try{
    List<string> list1;
    string s1 = list1[0];
    System.debug(s1);
}
catch(DmlException dex){
    system.debug('hello dml exception');
    System.debug(dex);
}
catch(NullPointerException npe){
    System.debug('hello null pointer exception');
    System.debug(npe);
}
catch(Exception e){
    System.debug('hello exception');
    System.debug(e);
}

// hata 3
// List<string> list2 = new List<String>();
// string s2 = list2[0];
// system.debug(s2);

try{
    List<string> list2 = new List<String>();
    string s2 = list2[0];
    system.debug(s2);
}
catch(DmlException dex){
    system.debug('hello dml exception');
    System.debug(dex);
}
catch(NullPointerException npe){
    System.debug('hello null pointer exception');
    System.debug(npe);
}
catch(ListException lex){
    System.debug('hello list exception');
    System.debug(lex);
}
catch(Exception e){
    System.debug('hello exception');
    System.debug(e);
}