class ContactInfo
  
  include Mongoid::Document

  field :address_line, :type => String
  field :city, :type => String
  field :country, :type => String
  field :zipcode, :type => String
  field :state, :type => String

  embeds_many :phone_numbers
end
