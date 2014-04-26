# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Surrogate.create!([
    {
    name: 'Dan',
    status: 'applied'
    },
    {
    name: 'Cynthia',
    status: 'accepted'
    },
    {
    name: 'Will',
    status: 'approved'
    }
])


surrogate = Surrogate.find_by(name: 'Dan')
surrogate.tasks.create!(name: 'Write feature spec', description: 'Write a test that describes what the user should be able to do',
                        status: 'open')
surrogate.tasks.create!(name: 'Test feature spec', description: 'Run rSpec to test features',
                        status: 'closed')
surrogate = Surrogate.find_by(name: 'Cynthia')
surrogate.tasks.create!(name: 'Bring coffee', description: 'Bring Dan some coffee!',
                        status: 'open')