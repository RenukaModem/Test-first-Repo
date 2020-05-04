@isTest
private class TaskUtilRollBackTest {
    @isTest static void testTaskPriority() {
        String pri = TaskUtilRollBack.getTaskPriority('NY');
        System.assertEquals('Normal', pri);
    }
}