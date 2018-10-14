# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_users
  user_id = 0
  10.times do
    User.create(
      name: "test#{user_id}",
      email: "test#{user_id}@test.com",
      password: '123456',
      password_confirmation: '123456'
    )
    user_id += 1
  end
end

def seed_lists
  list_id = 1
  10.times do
    Claimlist.create(
      user_id: list_id,
    )
    Wantlist.create(
      user_id: list_id,
    )
    list_id += 1
  end
end

def seed_items
  list_id = 1
  claim_id = 1
  10.times do
    claimed_want_id = 21 - claim_id
    want_id = list_id * 2

    Item.create!(
      claimlist_id: claim_id,
      wantlist_id: claimed_want_id,
      title: "claimed item #{list_id}",
      description: 'blah',
      surprise: false,
    )
    Item.create!(
      claimlist_id: nil,
      wantlist_id: want_id,
      title: "want item #{list_id}",
      description: 'i want it',
      surprise: false,
    )
    claim_id += 2
    list_id += 1
  end
  Item.create!(
    claimlist_id: 3,
    wantlist_id: 8,
    title: 'surprise!!',
    description: 'test surprise gift',
    surprise: true,
  )
end

seed_users
seed_lists
seed_items
