// JAVASCRIPT
// 929. Unique Email Addresses
emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
 /**
 * @param {string[]} emails
 * @return {number}
 */
 function numUniqueEmails(emails) {
  return new Set(emails.map(email => email.substr(0, email.search(/[+@]/)).replaceAll('.', '') + email.substr(email.search('@')))).size
} 
console.log(numUniqueEmails(emails))
