@isTest
public class testEmailUtils {
    
    static testMethod void testGetThreadId(){
        Case c = new Case(Status = 'New');
        insert c;
        String emailThreadId = EmailUtils.getThreadId(c.Id);
        System.assertEquals(c.Id, Cases.getCaseIdFromEmailThreadId(emailThreadId));
    }
    
    static testMethod void testGetThreadTag(){
        Case c = new Case(Status = 'New');
        insert c;
        String emailThreadTag = EmailUtils.getThreadTag(c.Id);
        String emailThreadId = emailThreadTag.substringBetween('ref:', ':ref');
        System.assertEquals(c.Id, Cases.getCaseIdFromEmailThreadId(emailThreadId));
    }
}