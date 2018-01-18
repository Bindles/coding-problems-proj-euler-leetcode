#* 929. Unique Email Addresses
emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
# @param {String[]} emails
# @return {Integer}
#*
def num_unique_emails(emails)
  set = Set.new
  emails.each do |email|
      local, domain = email.split('@')
      local.gsub!('.','')
      local, _ = local.split('+')
      new_email = "#{local}@#{domain}"
      set << new_email
  end
  set.count
end
p num_unique_emails(emails)


#* TESTS 
def num_unique_emails(emails)
  p emails.map { |email| email.partition('@')}
end
p num_unique_emails(emails)
