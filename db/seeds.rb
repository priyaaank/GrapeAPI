phone_number = PhoneNumber.new(:country_code => "1", 
                               :area_code => "123", 
                               :number => "456-7890")

contact_info = ContactInfo.new(:address_line => "The Royal Castle",
                               :city => "Kings Landing",
                               :country => "Blackwater Way",
                               :zipcode => "1111",
                               :state => "Blackwaters")
contact_info.phone_numbers << phone_number

user = User.new(:first_name => "Tyrion",
                :last_name => "Lannister",
                :username => "tyrion_the_imp",
                :email => "imp@lannisters.com",
                :contact_info => contact_info)

user.save!


