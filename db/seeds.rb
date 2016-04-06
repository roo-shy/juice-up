j1 = Juice.create name: "Strawberry", description: "Excellent source of vitamin C, which helps heal cuts and wounds and keep teeth and gums healthy. Antioxidant, antiviral, and anti-cancer"
j2 = Juice.create name: "Cranberry/Blueberry", description: "Cranberries are high in antioxidants, particularly proanthocyanidins, which are known for supporting overall health. They also house numerous nutrients that could protect against tooth cavities, urinary tract infections, and inflammatory diseases. Cranberries are diuretic, which can help to flush out excess water in the body.
Blueberries contain pectin, vitamin C, potassium, and significant amounts of tannins which can kill bacteria. Manganese, which contributes to healthy bones as well as in converting macronutrients to energy, is amply found in blueberries. Rich in flavonoids, consuming these little berries is associated with a decreased risk of type-2 diabetes. Loaded with antioxidants"
j3 = Juice.create name: "Pomegranate", description: "Very rich in tannins and flavonoids. Pomegranates hold promise in helping reduce the risk of prostate cancer due to their lycopene and other phytonutrient content. They are the 3rd highest fruit source of antioxidants. Pomegranates have also been used medicinally to treat tapeworm and diarrhea since Roman times, according to the British Journal of Medicine"
j4 = Juice.create name: "Mango/Peach", description: "Excellent source of vitamin A and C, which is very beneficial to maintaining a strong immune system. Has been found to protect against colon, breast, leukemia and prostate cancers and is a good source of potassium, which is important in assisting to control heart rate and blood pressure. Mango contains a great deal of flavonoids like beta-carotene, alpha-carotene, and beta-cryptoxanthin. Excellent source of vitamin A and potassium"
j5 = Juice.create name: "Pineapple", description: "Great for improving digestion. A good source of potassium and has vitamin C and iron. Contains anti-inflammatory compounds such as bromelain"
j6 = Juice.create name: "Orange", description: "Excellent source of vitamin C. Vitamin C helps heal cuts and wounds and keep teeth and gums healthy"
j7 = Juice.create name: "Takin’ Care Of Business", description: "Numerous studies have shown that beets can help oxygenate blood and enhance exercise performance. Carrots are the ABCs of health they help protect the body from cancer, cardiac disease, and cataract and macular degeneration.
Kale is a wonder vegetable! Kale is low calorie and promotes eye and skin health. A great low calorie food. It contains high levels of silicon in celery lend it to helping to strengthen joints, bones, arteries, and connective tissues. High in minerals, including this veggie as part of a healthy diet may help promote healthy blood pressure"
j8 = Juice.create name: "Kickstart My Heart", description: "Fresh acai, blueberry, pomegranate, apple and fresh, natural mint are blended together to create this berry inspired cleanse juice. Acai and blueberries, high in antioxidants help improve gastro-intestinal function"
j9 = Juice.create name: "Lovin’ Touchin’ Squeezin", description: "Fresh, natural pineapple, coconut water and freshly pressed wheatgrass are combined to create this fruity and healthy cleanse juice. Wheatgrass contains a hefty nutritional punch, containing high amounts of vitamins. Coconut is rich in naturally occurring bioactive enzymes which help the digestion system and metabolism"
j10 = Juice.create name: "Cashew Milk", description: "Freshly blended and pressed cashews, combined with agave and cinnamon create a delicious and healthy nut milk cleanse. Cashews contain over 38% of your daily intake of copper, beneficial for various bodily functions, as well as containing an abundance of magnesium and calcium. A cholesterol-free alternative to other milks, this is a delicious and healthy cleanse juice"

digestion = HealthIssue.create name: "Digestion"
heart = HealthIssue.create name: "High Blood Pressure"
eyes = HealthIssue.create name: "Eyes"
bones = HealthIssue.create name: "Bones"
joints = HealthIssue.create name: "Joints"
teeth = HealthIssue.create name: "Teeth"
gums = HealthIssue.create name: "Gums"
blood = HealthIssue.create name: "Diabetes"
weight = HealthIssue.create name: "Weight Loss"
inflammation = HealthIssue.create name: "Inflammation"

Remedy.create juice_id: j1,
                       health_issue_id: teeth
Remedy.create juice_id: j2,
                       health_issue_id: blood
Remedy.create juice_id: j3,
                      health_issue_id: inflammation
Remedy.create juice_id: j4,
                      health_issue_id: blood
Remedy.create juice_id: j5,
                      health_issue_id: inflammation
Remedy.create juice_id: j6,
                      health_issue_id: teeth
Remedy.create juice_id: j7,
                      health_issue_id: blood
Remedy.create juice_id: j8,
                      health_issue_id: weight
Remedy.create juice_id: j9,
                      health_issue_id: digestion
Remedy.create juice_id: j10,
                      health_issue_id: weight


# Remedy.create juice: j7, weight: "Weight", remedy: "Weight Loss"
# Remedy.create juice: j1, teeth: "Teeth", remedy: "Teeth Health"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
