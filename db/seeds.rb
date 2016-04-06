
j1 = Juice.create name: "Strawberry"
j2 = Juice.create name: "Cranberry/Blueberry"
j3 = Juice.create name: "Pomegranate"
j4 = Juice.create name: "Mango/Peach"
j5 = Juice.create name: "Pineapple"
j6 = Juice.create name: "Orange"
j7 = Juice.create name: "Takin’ Care Of Business"
j8 = Juice.create name: "Kickstart My Heart"
j9 = Juice.create name: "Lovin’ Touchin’ Squeezin"
j10 = Juice.create name: "Cashew Milk"

digestion = HealthIssue.create name: "Digestion"
heart = HealthIssue.create name: "Heart"
eyes = HealthIssue.create name: "Eyes"
bones = HealthIssue.create name: "Bones"
joints = HealthIssue.create name: "Joints"
teeth = HealthIssue.create name: "Teeth"
gums = HealthIssue.create name: "Gums"
blood = HealthIssue.create name: "Diabetes"
weight = HealthIssue.create name: "Weight Loss"

# Remedy.create juice: j7, weight: "Weight", remedy: "Weight Loss"
# Remedy.create juice: j1, teeth: "Teeth", remedy: "Teeth Health"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
