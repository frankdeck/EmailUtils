public class EmailUtils {
    
    public static String getThreadId(String caseId){
        if(caseId.length() > 15){
            caseId = caseId.left(15);
        }
        String orgId = UserInfo.getOrganizationId().left(15);
        String threadId = '_';
        threadId += orgId.left(5);
        threadId += orgId.right(10).replace('0','');
        threadId += '._';
        threadId += caseId.left(5);
        threadId += caseId.right(10).left(5).replace('0','');
        threadId += caseId.right(5);
        return threadId;
    }
    
    public static String getThreadTag(String caseId){
        String threadId = getThreadId(caseId);
        String threadTag = 'ref:' + threadId + ':ref';
        return threadTag;
    }
}