# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do

    Cat.destroy_all

    cat1 = Cat.create!(birth_date: '2015/01/20', color: 'Orange', name: 'Frank', sex: 'F', description: 'Cute cat from upper Manhattan')
    cat2 = Cat.create!(birth_date: '1996/10/25', color: 'Black', name: 'Marco', sex: 'F', description: 'Cute cat from Queens')
    cat3 = Cat.create!(birth_date: '1850/08/07', color: 'White', name: 'Eleanor', sex: 'F', description: 'Oldest can in the world')
end