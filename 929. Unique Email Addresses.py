# PYTHON
#* 929. Unique Email Addresses
emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
from typing import List
class Solution:
  def numUniqueEmails(self, emails: List[str]) -> int:
      return len(set(map(lambda email: email[:re.search(r'[+@]', email).start()].replace('.', '') + email[email.find('@'):], emails)))

print(Solution().numUniqueEmails(emails))