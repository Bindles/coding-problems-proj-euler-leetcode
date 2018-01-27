#* 929. Unique Email Addresses
// emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
public class Solution {
    public int NumUniqueEmails(string[] emails) =>
        emails.Select(email => email.Substring(0, System.Text.RegularExpressions.Regex.Match(email, "[+@]").Index).Replace(".", "") + email.Substring(email.IndexOf('@'))).Distinct().Count();
}