class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost

  def initialize(options)
    @address = options[:address]
    @name = options[:name]
    @num_bedrooms = num_bedrooms
    @num_baths = num_baths
    @cost = cost
    @down_payment = down_payment
    @sold = sold
    @short_sale = short_sale
    @has_tenants = has_tenants
  end

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
end


# Pon driver code aca para probar que todo este funcionando.
###### DRIVER CODE ########




