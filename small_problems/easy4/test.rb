mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

# counter = 0

# loop do

#   break if counter == mailing_campaign_leads.size            # break if counter == 4
#   full_name = mailing_campaign_leads[counter][:name]          # assign the full name to full_name
#   names = full_name.split                                     # split first name and surname to elements of array

#   p names

#   names_counter = 0                                           # set name counter to 0

#   loop do
#     break if names_counter == names.size                      # break if names_counter == names.size
#     name = names[names_counter]                               # assign element to name
#     p name
#     names[names_counter] = name.capitalize                    # capitalize name and assign it back to the names array
#     p names

#     names_counter += 1
#   end

#   capitalized_full_name = names.join(' ')                           # join the names together with a space
#   mailing_campaign_leads[counter][:name] = capitalized_full_name     # reassign back into the original array

#   counter += 1
# end

# usable_leads = []
# counter = 0

# loop do
#   break if counter == mailing_campaign_leads.size                           # break if counter is the name as mailing_campaign_leads size
#   last_login = mailing_campaign_leads[counter][:days_since_login]           #  assign last login to last_login variabke
#   subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]       #  assign true/false whether someone is signed up to the mailing list 

#   if last_login < 60 && subscribed_to_list                                  # if las login last than 60 days and true
#     usable_leads << mailing_campaign_leads[counter]                         # assign sub hash to usuable leads 
#   p usable_leads
#   end

#   counter += 1
# end


mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  names.map! { |name| name.capitalize }
  lead[:name] = names.join(' ')
end


usable_leads = mailing_campaign_leads.select do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end

p usable_leads