trigger ContactTrigger on Contact (before insert, before update, after insert, after update ) {
    if (trigger.isBefore && trigger.isInsert) {
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
    }
}