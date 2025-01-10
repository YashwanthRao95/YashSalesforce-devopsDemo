public class AccountHandler {

    // This method fetches all Accounts from the database
    public static List<Account> getAllAccounts() {
        List<Account> accounts = [SELECT Id, Name FROM Account]; // Query inside method (Avoidable in triggers)
        return accounts;
    }

    // This method inserts a list of accounts but lacks proper exception handling
    public static void insertAccounts(List<Account> accounts) {
        List<Account> newAccList = new List<Account>();
        for (Account acc : accounts) {
            newAccList.add(acc); // Too many DML statements in a loop
        }
        insert newAccList;
    }

    // Excessive logic in a single method
    public static void performComplexLogic() {
        for (Integer i = 0; i < 10; i++) {
            if (i > 5) {
                if (i < 8) {
                    // Deeply nested if statement
                    System.debug('Complex Logic: ' + i);
                }
            }
        }
    }
}
