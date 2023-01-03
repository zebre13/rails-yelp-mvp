puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
royal_dragon = {
  name: 'Royal Dragon',
  address: '98 boulevard De Montparnasse, 75014 Paris France',
  phone_number: '+33 1 43 35 37 30',
  category: 'chinese'
}
pizza_caratello = {
  name: 'Pizza Caratello',
  address: '8 rue Audran, 75018 Paris France',
  phone_number: '+33 1 42 64 88 51',
  category: 'italian'
}
mian_fan = {
  name: 'Mian Fan',
  address: '15 boulevard Montmartre, 75002 Paris France',
  phone_number: '+33 9 67 47 47 06',
  category: 'japanese'
}
a_la_chataigne = {
  name: 'A La Chataigne',
  address: '22 rue de Miromesnil, 75008 Paris France',
  phone_number: '+33 1 40 07 90 86',
  category: 'french'
}
au_rendez_vous_des_belges = {
  name: 'Au Rendez-Vous des Belges',
  address: '23 rue de Dunkerque, 75010 Paris France',
  phone_number: '+33 1 42 82 04 72',
  category: 'belgian'
}

[royal_dragon, pizza_caratello, mian_fan, a_la_chataigne, au_rendez_vous_des_belges].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
