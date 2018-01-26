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

#*
def num_unique_emails(emails)
  purge = ->str{ 
    local,domain = str.split(?@)
    local.gsub!(/\./,"")
    local.gsub!(/^([^+]+).*/,'\1')
    local + ?@ + domain
  }
  emails.map(&purge).uniq.size
end
p num_unique_emails(emails)

#*
def num_unique_emails(emails)
  emails.uniq { |email| clean(email) }.count
end

def clean(email)
  local, domain = email.split('@')
  local.split('+').first.split('.').join + '@' + domain
end
p num_unique_emails(emails)

#*
def num_unique_emails(emails)
  new_email_array = []

  emails.each do |email|
    temp_email = email.split('@')
    temp_email[0] = temp_email[0].tr('.', '')
    email = temp_email[0].split('+')[0] + '@' +temp_email[1]
    new_email_array << email
  end

  new_email_array.uniq.count
end
p num_unique_emails(emails)

#*
def num_unique_emails(emails)
	emails.map { |email| email.partition('@').map.with_index { |c, i| i == 0 ? c.gsub(/\.|\+(.*)/, '') : c  }.join('') }.uniq.length
end
p num_unique_emails(emails)

#*
def num_unique_emails(emails)
  emails.map{|email| email[0, email.index(/[+@]/)].gsub('.', '') + email[email.index('@')..]}.uniq.size
end
p num_unique_emails(emails)


#* TESTS 
def num_unique_emails(emails)
  p emails.map { |email| email.partition('@')}
end
p num_unique_emails(emails)
