class PhoneNumber

  include Mongoid::Document

  field :country_code, :type => String
  field :area_code, :type => String
  field :number, :type => String

  def formatted_number
    ["+"+country_code,area_code,number].join("-")
  end

end
