# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Bottle.count == 0
  bottle = Bottle.create(title: 'hoge',
                body: 'poge',
                created_user_id: 1
               )
  Bottle.create(title: 'hogehoge',
                body: 'pogepoge',
                created_user_id: 2
               )
  Bottle.create(title: 'hogehogehoge',
                body: 'pogepogepoge',
                created_user_id: 2
               )
end


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


if HaveBottle.count == 0
  HaveBottle.create(user_id: 1,
                    bottle_id: 1
                   )
  HaveBottle.create(user_id: 2,
                    bottle_id: 2
                   )
  HaveBottle.create(user_id: 1,
                    bottle_id: 3
                   )
end

if DriftPoint.count == 0
  DriftPoint.create(name: '東京タワー',
                    place_lat: 35.710063,
                    place_lng: 139.8107
                   )
  DriftPoint.create(name: '富士山',
                    place_lat: 35.360556,
                    place_lng: 138.727778
                   )
  DriftPoint.create(name: '甲子園',
                    place_lat: 34.721273,
                    place_lng: 135.361573
                   )
  DriftPoint.create(name: '香川大学工学部',
                    place_lat: 34.292932,
                    place_lng: 134.063442
                   )
  DriftPoint.create(name: '時計塔',
                    place_lat: 43.062107,
                    place_lng: 141.354168
                   )
  DriftPoint.create(name: '美ら海水族館',
                    place_lat: 26.694158,
                    place_lng: 127.877932
                   )
end
