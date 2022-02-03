class Company < ApplicationRecord

    #def contacts
    #    Contact.where({ company_id: read_attribute(:id)})
    #    # Contact.where({ company_id: read_attribute(:id)})
    #end

    has_many :contacts

end
