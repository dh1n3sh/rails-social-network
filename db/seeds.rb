# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Skill.create(name: 'node.js')
Skill.create(name: 'Mysql')
Skill.create(name: 'C++')
Skill.create(name: 'Rails')
Skill.create(name: 'AWS')
Skill.create(name: 'React')
Skill.create(name: 'Django')

Profile.create(name: 'Alex', role: 'Full Stacker', \
    company: 'Reddit', skills:[Skill.find(1),Skill.find(2)])
Profile.create(name: 'Liam', role: 'SDE', \
    company: 'Google', skills:[Skill.find(3),Skill.find(4)])
Profile.create(name: 'Max', role: 'Intern', \
    company: 'Microsoft', skills:[Skill.find(3),Skill.find(5)])