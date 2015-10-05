# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#First Load

if Category.first.nil?
  Category.create!(name: 'Cachorro', description: 'Cachorro de estimação')
  Category.create!(name: 'Gato', description: 'Gato de estimação')
  Category.create!(name: 'Passarinho', description: 'Passarinho de estimação')
end


if Country.first.nil?
  Country.create!(country: 'Brazil', mnemonic: 'BR')
end
country = Country.first

if User.first.nil?
  User.create!(name: 'Antonio Reuter', document: '36832436351', email: 'antonioreuter@meupet.com', phone: '11973453300', description: 'Eu adoro animais de estimação', sex: 'M', ong: false, password: '12345678')
end

user = User.first


if user.addresses.empty?
  user.addresses.create!(country: country, address: 'Av. Onze de Junho', number: '875', complement: 'apt 81', city: 'São Paulo', state: 'São Paulo', zipcode: '04041-053', latitude: '-1', longitude: '-1')
end
address = user.addresses.first

if user.my_pets.empty?
  category_dog = Category.find_by_name('Cachorro')
  category_cat = Category.find_by_name('Gato')
  category_bird = Category.find_by_name('Passarinho')

  Pet.create!(owner: user, address: address, category: category_dog, name: 'Toto', description: 'bastante docil com criancas.', birth_date: Date.new)
  Pet.create!(owner: user, address: address, category: category_dog, name: 'Hulk', description: 'agitado e bastante brincalhao.', birth_date: Date.new)
  Pet.create!(owner: user, address: address, category: category_dog, name: 'Thor', description: 'companheiro e muito valente.', birth_date: Date.new)
  Pet.create!(owner: user, address: address, category: category_cat, name: 'Miau', description: 'dengoso e muito carinhoso.', birth_date: Date.new)
  Pet.create!(owner: user, address: address, category: category_cat, name: 'Chocolate', description: 'independente e muito curioso.', birth_date: Date.new)
  Pet.create!(owner: user, address: address, category: category_cat, name: 'Mingau', description: 'carente, precisa de uma família atenciosa.', birth_date: Date.new)
  Pet.create!(owner: user, address: address, category: category_bird, name: 'Piu Piu', description: 'extremamente iterativo, adora cantar.', birth_date: Date.new)
  Pet.create!(owner: user, address: address, category: category_bird, name: 'Louro', description: 'gosta de uma boa conversa, adora crianças.', birth_date: Date.new)
  Pet.create!(owner: user, address: address, category: category_bird, name: 'Fifi', description: 'colorido e muito extrovertido.', birth_date: Date.new)
end
