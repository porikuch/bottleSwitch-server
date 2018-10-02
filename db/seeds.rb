# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0
  User.create(name: 'ueyuki',
              password: Digest::SHA256.hexdigest('ueyuki'),
              nickname: 'ueyuki'
             )
  User.create(name: 'ishiireo',
              password: Digest::SHA256.hexdigest('ishiireo'),
              nickname: 'ishiireo'
             )
end

if Bottle.count == 0
  Bottle.create(title: 'hoge',
                body: 'poge',
                created_user_id: 1
               )
  Bottle.create(title: 'hogehoge',
                body: 'pogepoge',
                created_user_id: 1
               )
  Bottle.create(title: 'hogehogehoge',
                body: 'pogepogepoge',
                created_user_id: 2
               )
end
end
