module Users
  class PhoneNumberResponseEntity < Grape::Entity
    expose :country_code
    expose :area_code
    expose :number
    expose :formatted_number
  end
end
