module Users
  class ContactInfoResponseEntity < Grape::Entity
    expose :address_line
    expose :city
    expose :country
    expose :zipcode
    expose :state
    expose :phone_numbers, :using => Users::PhoneNumberResponseEntity
  end
end
