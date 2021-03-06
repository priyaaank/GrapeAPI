class User

  include Mongoid::Document

  field :first_name, :type => String
  field :last_name, :type => String
  field :email, :type => String
  field :username, :type => String
  
  embeds_one :contact_info

  def formatted_name
    [first_name, last_name].join(" ")
  end
end
