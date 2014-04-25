# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    task1 = Task.create(name: 'Write feature spec',
                        description: 'Write a test that describes what the user should be able to do',
                        status: 'open')

    task2 = Task.create(name: 'Write feature spec',
                        description: 'Write a test that describes what the user should be able to do',
                        status: 'closed')

    task3 = Task.create(name: 'Write feature spec',
                        description: 'Write a test that describes what the user should be able to do',
                        status: 'open')

    surrogate1 = Surrogate.create(name: 'Dan',
                        status: 'applied')

    surrogate2 = Surrogate.create(name: 'Cynthia',
                        status: 'accepted')

    surrogate3 = Surrogate.create(name: 'Will',
                        status: 'approved')
