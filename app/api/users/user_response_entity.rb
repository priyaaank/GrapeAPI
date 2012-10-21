module Users
  class UserResponseEntity < Grape::Entity
    expose :first_name
    expose :last_name
    expose :formatted_name, :as => "full_name"
    expose :username
    expose :email
    expose :contact_info, :using => Users::ContactInfoResponseEntity


  end
end
