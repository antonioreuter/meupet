# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#First Load

if Category.first.nil?
  Category.create(name: 'Cachorro', description: 'Cachorro de estimação')
  Category.create(name: 'Gato', description: 'Gato de estimação')
  Category.create(name: 'Passarinho', description: 'Passarinho de estimação')
end


country = if Country.first.nil?
            Country.create(country: 'Brazil', mnemonic: 'BR')
          else
            Country.first
          end

user =  if User.first.nil?
          User.create(name: 'Antonio Reuter', document: '36832436351', email: 'antonioreuter@meupet.com', phone: '11973453300', description: 'Eu adoro animais de estimação', sex: 'M', ong: false)
        else
          User.first
        end


address =  if user.addresses.empty?
              user.addresses.create(country: country, address: 'Av. Onze de Junho', number: '875', complement: 'apt 81', city: 'São Paulo', state: 'São Paulo', zipcode: '04041-053', latitude: '-1', longitude: '-1')
            else
              user.addresses.first
            end
