require 'Faker'
require 'iso_country_codes'
class Country
    attr_reader :country_name, :name , :continent , :calling_code, :phone_number, :image
    def initialize
         @country_name = Faker::Address.country_code
         country = @country_name
        code = IsoCountryCodes.find(country)
        @name = code.name
        @continent = code.continent
        @calling_code = code.calling
         @numeric = code.numeric
    end
    @country =[]
    def display
        puts "This is country : #{@country_name}"
        puts "This is another country : #{@name}"
        puts "Continent is: #{@continent}"        
        puts "Country calling code is: #{@calling_code}"
        puts "ISO code is: #{@numeric} "
        puts "***********************************"
    end
end
######### Creates country_info array and fills it with country info #######
country_info = []
for i in (0..5) do
    country_info << Country.new
end
######### Display country#######
i=0
while i<5 do
    country_info[i].display
    i +=1
end