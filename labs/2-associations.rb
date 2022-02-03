# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-associations.rb

# 1. write code to display each contact (you can reuse the previous lab's code) and include the contact's company name, e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com - Amazon.com, Inc.
# Craig Federighi - craig@apple.com - Apple Inc.
# Elon Musk - elon@tesla.com - Tesla, Inc.
# Tim Cook - tim@apple.com - Apple Inc.

Contact.destroy_all

contacts = Contact.all

apple = Company.where({ name: "Apple"})[0]
amazon = Company.where({ name: "Amazon"})[0]
tesla = Company.where({ name: "Tesla"})[0]

values = { 
    first_name: "Andy", 
    last_name: "Jassy", 
    email: "andy@amazon.com", 
    company_id: amazon.id
}
contact = Contact.new(values)
contact.save

values = { 
    first_name: "Craig", 
    last_name: "Federighi", 
    email: "craig@apple.com",
    company_id: apple.id
}
contact = Contact.new(values)
contact.save

values = { 
    first_name: "Elon", 
    last_name: "Musk", 
    email: "elon@tesla.com", 
    company_id: tesla.id
}
contact = Contact.new(values)
contact.save

values = { 
    first_name: "Tim", 
    last_name: "Cook", 
    email: "tim@apple.com", 
    company_id: apple.id
}
contact = Contact.new(values)
contact.save

puts "Contacts: #{Contact.all.count}"

# 2. similar to above, but this time organized by company, write code to display each company (name) and its contacts, e.g.:

# ---------------------------------
# Apple Inc.
# Tim Cook - tim@apple.com
# Craig Federighi - craig@apple.com
#
# Amazon.com, Inc.
# Andy Jassy - andy@amazon.com
#
# Tesla, Inc.
# Elon Musk - elon@tesla.com

#puts "-----------------------"

#for my_contacts in contacts

#    puts "#{company name}"
#    puts "#{first_name} #{last_name} - #{email}"

#end

#loops within looops example ##

companies = Company.all

for company in companies

    puts company.name
    contacts = company.contacts
    for contact in contacts
        puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
    end
    puts ""
end



