# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#if Rails.env.development?
  Role.all.delete_all
  Post.all.delete_all
  Instrument.all.delete_all
  User.all.delete_all
  role = Role.create(name: 'Admin')
  post = PostType.create(title: 'Продажа')
  role1 = Role.create(name: 'User')
  #AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', role: role)
  user = User.create(login: 'DdiavaLL', password: '12345', email: 'ddiavall@yandex.ru', role: role1, telephone_number: '89281800979')
  instrument = Instrument.create(title: 'Esp Custom Shop Kirk Hammett Metallica White', description: '2009 ESP KH-2 Kirk Hammett Signature White Ouija Number Two!!!', user: user)
  Instrument.create(title: 'Musima Eterna Deluxe V электрогитара редкий советский винтаж ГДР СССР', description: 'Beautiful old Musima Elektra De Luxe V guitar, built in the mid to late 1960s in communist East Germany (GDR).', user: user)
  Post.create(content: 'Продам Esp Custom Shop', date: '21.11.2019', instrument: instrument, user: user, post_type: post)
#end