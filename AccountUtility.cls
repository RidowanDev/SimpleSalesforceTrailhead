/**
 * @ Author: Ridowan Ahmed (ridowan.dev@gmail.com)
 * @ Create Time: 2022-01-04 13:32:19
 * @ Modified by: Ridowan Ahmed (ridowan.dev@gmail.com)
 * @ Modified time: 2022-01-04 14:41:20
 * @ Description:
 */

public with sharing class AccountUtility {
    public AccountUtility() {

    }

    public static void viewAnnualRevenue () {
        List<Account> accountsList = [
            SELECT
                Name,
                AnnualRevenue
            FROM Account
        ];

        for (Account acc : accountsList) {
            String acctRev = acc.Name + ' : ' + acc.AnnualRevenue;
            System.debug(acctRev);
        }
    }
}
