# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.create!([
    {
    name: 'Write feature spec',
    description: 'Write a test that describes what the user should be able to do',
    status: 'open'
    },
    {
    name: 'Write feature spec',
    description: 'Write a test that describes what the user should be able to do',
    status: 'closed'
    },
    {
    name: 'Write feature spec',
    description: 'Write a test that describes what the user should be able to do',
    status: 'open'
    }
])

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
