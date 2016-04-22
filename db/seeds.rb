def upload_image(photo_name)
  backend = Refile.store
  path = File.join(Rails.root, "test/fixtures/#{photo_name}.png")
  backend.upload(File.new(path))
end

j1 = Juice.create name: "Strawberry", description: "Excellent source of vitamin C, which helps heal cuts and wounds and keep teeth and gums healthy. Antioxidant, antiviral, and anti-cancer", price: 9.00, photo_id: upload_image('strawberry').id
j2 = Juice.create name: "Cranberry/Blueberry", description: "Cranberries are high in antioxidants, which are known for supporting overall health. They also house numerous nutrients that could protect against tooth cavities, urinary tract infections, and inflammatory diseases. Cranberries are diuretic, which can help to flush out excess water in the body
Blueberries contain pectin, vitamin C, potassium, and significant amounts of tannins which can kill bacteria. Manganese, which contributes to healthy bones as well as in converting macronutrients to energy, is amply found in blueberries. Rich in flavonoids, consuming these little berries is associated with a decreased risk of type-2 diabetes. Loaded with antioxidants", price: 9.50, photo_id: upload_image('cranberry').id
j3 = Juice.create name: "Pomegranate", description: "Pomegranates hold promise in helping reduce the risk of prostate cancer due to their lycopene and other phytonutrient content. They are the 3rd highest fruit source of antioxidants", price: 9.50, photo_id: upload_image('pomegranate').id
j4 = Juice.create name: "Mango/Peach", description: "Excellent source of vitamin A and C, which is very beneficial to maintaining a strong immune system. Has been found to protect against colon, breast, leukemia and prostate cancers and is a good source of potassium, which is important in assisting to control heart rate and blood pressure", price: 9.50, photo_id: upload_image('mango').id
j5 = Juice.create name: "Pineapple", description: "Great for improving digestion. A good source of potassium and has vitamin C and iron. Contains anti-inflammatory compounds such as bromelain", price: 9.50, photo_id: upload_image('pineapple').id
j6 = Juice.create name: "Simply Orange", description: "Excellent source of vitamin C. Vitamin C helps heal cuts and wounds and keep teeth and gums healthy", price: 9.50, photo_id: upload_image('orange').id
j7 = Juice.create name: "Veggie Juice", description: "Numerous studies have shown that beets can help oxygenate blood and enhance exercise performance. Carrots are the ABCs of health they help protect the body from cancer, cardiac disease, and cataract and macular degeneration
Kale is a wonder vegetable! Kale is low calorie and promotes eye and skin health. A great low calorie food. It contains high levels of silicon in celery lend it to helping to strengthen joints, bones, arteries, and connective tissues. High in minerals, including this veggie as part of a healthy diet may help promote healthy blood pressure", price: 9.00, photo_id: upload_image('veggie').id
j8 = Juice.create name: "Renew", description: "Fresh acai, blueberry, pomegranate, apple and fresh, natural mint are blended together to create this berry inspired cleanse juice. Acai and blueberries, high in antioxidants help improve gastro-intestinal function", price: 9.50, photo_id: upload_image('acai_berry').id
j9 = Juice.create name: "Restore", description: "Fresh, natural pineapple, coconut water and freshly pressed wheatgrass are combined to create this fruity and healthy cleanse juice. Wheatgrass contains a hefty nutritional punch, containing high amounts of vitamins. Coconut is rich in naturally occurring bioactive enzymes which help the digestion system and metabolism", price: 9.00, photo_id: upload_image('wheatgrass').id
j10 = Juice.create name: "Cashew Milk", description: "Freshly blended and pressed cashews, combined with agave and cinnamon create a delicious and healthy nut milk cleanse. Cashews contain over 38% of your daily intake of copper, beneficial for various bodily functions, as well as containing an abundance of magnesium and calcium. A cholesterol-free alternative to other milks, this is a delicious and healthy cleanse juice",
price: 8.00, photo_id: upload_image('cashewmilk').id
j11 = Juice.create name: "Revive" , description: "orange, carrot, apple, lemon", price: 9.50, photo_id: upload_image('carrots').id
j12 = Juice.create name: "Nutrify" , description: "kale, spinach, celery, ginger, apple, lemon", price: 9.50, photo_id: upload_image('kale').id

digestion = HealthIssue.create name: "Digestion, Stomach", photo_id: upload_image('stomach').id
heart = HealthIssue.create name: "High Blood Pressure", photo_id: upload_image('heart').id
eyes = HealthIssue.create name: "Eyes", photo_id: upload_image('eye').id
bones = HealthIssue.create name: "Bones", photo_id: upload_image('joint').id
joints = HealthIssue.create name: "Joints", photo_id: upload_image('bone').id
teeth = HealthIssue.create name: "Teeth, Gums", photo_id: upload_image('tooth').id
blood = HealthIssue.create name: "Diabetes", photo_id: upload_image('bloodvessel').id
weight = HealthIssue.create name: "Weight Loss, Detox", photo_id: upload_image('weight').id
respiratory = HealthIssue.create name: "Respiratory System", photo_id: upload_image('lungs').id
inflammation = HealthIssue.create name: "Inflammation", photo_id: upload_image('inflammation').id
immunization = HealthIssue.create name: "Immunize", photo_id: upload_image('immune').id


Remedy.create juice_id: j1.id,
                       health_issue_id: teeth.id
Remedy.create juice_id: j2.id,
                       health_issue_id: blood.id
Remedy.create juice_id: j6.id,
                      health_issue_id: respiratory.id
Remedy.create juice_id: j4.id,
                      health_issue_id: blood.id
Remedy.create juice_id: j5.id,
                      health_issue_id: inflammation.id
Remedy.create juice_id: j2.id,
                      health_issue_id: inflammation.id
Remedy.create juice_id: j6.id,
                      health_issue_id: teeth.id
Remedy.create juice_id: j7.id,
                      health_issue_id: blood.id
Remedy.create juice_id: j8.id,
                      health_issue_id: weight.id
Remedy.create juice_id: j9.id,
                      health_issue_id: digestion.id
Remedy.create juice_id: j10.id,
                      health_issue_id: weight.id
Remedy.create juice_id: j6.id,
                      health_issue_id: respiratory.id
Remedy.create juice_id: j3.id,
                      health_issue_id: immunization.id
Remedy.create juice_id: j4.id,
                      health_issue_id: heart.id
Remedy.create juice_id: j5.id,
                      health_issue_id: digestion.id
Remedy.create juice_id: j6.id,
                      health_issue_id: teeth.id
Remedy.create juice_id: j7.id,
                      health_issue_id: immunization.id
Remedy.create juice_id: j8.id,
                      health_issue_id: weight.id
Remedy.create juice_id: j11.id,
                      health_issue_id: weight.id
Remedy.create juice_id: j12.id,
                      health_issue_id: weight.id
Remedy.create juice_id: j11.id,
                      health_issue_id: eyes.id
Remedy.create juice_id: j12.id,
                      health_issue_id: bones.id
Remedy.create juice_id: j12.id,
                      health_issue_id: joints.id
Remedy.create juice_id: j5.id,
                      health_issue_id: bones.id
Remedy.create juice_id: j5.id,
                      health_issue_id: joints.id

jb1 = Juicebar.create name:"Flow Juice Bar", location: "214 Fairview St, Houston, TX 77006", photo_id: upload_image('flow').id
jb2 = Juicebar.create name:"1-3 Day Juice Cleanses", location: "3030 Travis St, Houston, TX 77006", photo_id: upload_image('1-3day').id
jb3 = Juicebar.create name:"Beet Box Blend Bar", location: "Bakery Square, 1909 W Gray St, Houston, TX 77019", photo_id: upload_image('beetjb').id
jb4 = Juicebar.create name:"Squeezed Juice", location: "Houston Center, 1200 McKinney St, Houston, TX 77002", photo_id: upload_image('squeezedjb').id
jb5 = Juicebar.create name:"Fuel Kitchen and Health Bar", location: "1005 Waugh Dr, Houston, TX 77019", photo_id: upload_image('fuel').id

Juice.find(9).juicebars << Juicebar.find(5)
Juice.find(12).juicebars << Juicebar.find(5)
Juice.find(11).juicebars << Juicebar.find(5)
Juice.find(12).juicebars << Juicebar.find(4)
Juice.find(11).juicebars << Juicebar.find(4)
Juice.find(7).juicebars << Juicebar.find(3)
Juice.find(4).juicebars << Juicebar.find(3)
Juice.find(5).juicebars << Juicebar.find(3)
Juice.find(9).juicebars << Juicebar.find(2)
Juice.find(8).juicebars << Juicebar.find(2)
Juice.find(3).juicebars << Juicebar.find(1)
Juice.find(2).juicebars << Juicebar.find(1)
Juice.find(9).juicebars << Juicebar.find(5)
Juice.find(1).juicebars << Juicebar.find(1)
Juice.find(4).juicebars << Juicebar.find(1)
Juice.find(6).juicebars << Juicebar.find(1)
Juice.find(10).juicebars << Juicebar.find(1)

# Remedy.create juice: j7, weight: "Weight", remedy: "Weight Loss"
# Remedy.create juice: j1, teeth: "Teeth", remedy: "Teeth Health"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
