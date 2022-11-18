# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying all users..."
User.destroy_all
puts "Destroying all bookings..."
Booking.destroy_all
puts "Destroying all homestays..."
Homestay.destroy_all



User.create!(
  email: "savi@me.com",
  password: "123456",
  first_name: "Savithri",
  last_name: "Wewala",
  age: rand(20..50),
  gender: "female",
  description: "Hello, my name is Savithri, but you can call me Savi or Sabi. I am originally from Canada, but I was living in Sendai for the last two years (studying linguistics, but my background is psychology) and only just recently moved to Tokyo for the coding camp. I am still quite new to coding in general, so I look forward to learning together with everyone!",
  img_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1664769848/vdngpd4bmtp7oioig3bo.jpg")

User.create!(
  email: "keita@me.com",
  password: "123456",
  first_name: "Keita",
  last_name: "Wilson",
  age: rand(20..50),
  gender: "male",
  description: "Hi everyone I'm Keita. Born and raised in Tokyo Half Japanese/American Former salesman and Japanese/English Medical translator My personality type is an ENFP.",
  img_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1664721811/macovccaszdtnctrjxbt.jpg")

User.create!(
  email: "ayhem@me.com",
  password: "123456",
  first_name: "Ayhem",
  last_name: "Chelly",
  age: rand(20..50),
  gender: "male",
  description: "Hi there! my name is Ayhem, living in Japan for a few years now , I want to learn coding and boost my technical skills to be able to land a job as a software engineer .",
  img_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1667954065/heegtqhasvkercvbbzi4.jpg")

User.create!(
  email: "yulia@me.com",
  password: "123456",
  first_name: "Yulia",
  last_name: "Naumenko",
  age: rand(20..50),
  gender: "female",
  description: "Hi, nice to see you here) My name is Yulia. I like to travel. I so exited to see you)",
  img_url: "https://avatars.githubusercontent.com/u/114731843?v=4")

User.create!(
  email: "doug@me.com",
  password: "123456",
  first_name: "Doug",
  last_name: "Berkley",
  age: rand(20..50),
  gender: "male",
  description: "I am a web developer from the States, currently in Tokyo running Le Wagon web development and data science courses in Japan. I went through the web development bootcamp (#58) in February 2017 and data science (#719) in Sep 2021.",
  img_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1523933095/viqfqp0tfkmcwmj7cfwe.jpg")

User.create!(
  email: "trouni@me.com",
  password: "123456",
  first_name: "Trouni",
  last_name: "Tiet",
  age: rand(20..50),
  gender: "male",
  description: "Engineer by background, but spent most of my career launching and growing startups on the business end of the fight. I attended the full-stack web development bootcamp in Tokyo in 2019 (#252) and had a blast, so I decided to stick around.",
  img_url: "https://avatars.githubusercontent.com/u/34345789?v=4")

User.create!(
  email: "yann@me.com",
  password: "123456",
  first_name: "Yann",
  last_name: "Klein",
  age: rand(20..50),
  gender: "male",
  description: "Le Wagon Tokyo Part-time bootcamp driver. VR/AR lover ❤️coding for people and magic.",
  img_url: "https://avatars.githubusercontent.com/u/26819547?v=4")


puts "... created #{User.count} users."

tag = ["No smoking", "Has Pets", "Has Kids", "No Pets", "No Kids"]

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "Escape the busy life and relax in the countryside. Our Friendly cows will meet you off your private back patio! This serene, private guest home on our family ranch. Enjoy our friendly farm animals, orchard, and seasonal garden. ",
  price: rand(10..50),
  availability: true,
  family_description: "In my family, basically, we are five members altogether. They are - my parents, my younger sister and younger brother and me. We, five people, live in our own Apartment. Besides, we have some other relatives who are family members too and they live adjacent to us. If I count them, the number will be more. Most of the members are related to me either from my father or my mother. But the number of my maternal relatives and family member is more from my paternal part. I am too lucky that all of them love me much.",
  accomodation: ["Apartment", "House"].sample,
  address: "913-14 Jogasawa, Mutsu shi, Aomori ken, Japan",
  user: User.find(1),
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/1128318/pexels-photo-1128318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)


Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House with a big grass garden. You can get the house by subway as well. You can enjoy a lot of sight-seeing and amusements in around house.",
  price: rand(10..50),
  availability: true,
  family_description: "My family consists of my mother, father and my little sister.",
  accomodation: ["Apartment", "House"].sample,
  address: "229-5 Higashimachi, Iwakura shi, Aichi ken, Japan",
  user: User.find(3),
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/1835927/pexels-photo-1835927.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "Stilt house is built according to the traditional architecture of ethnic minority. The house has airy and cool floor with beautiful view, closed-room model, suitable for those who prefer quiet space or for couples who want privacy. ",
  price: rand(10..50),
  availability: true,
  family_description: "I teaching English as a Foreign Language since 2008. Having spent 30 years as a British policeman, he teaches English not as an academic but as a communicator. He has degrees in Psychology, IT, Accounting, and English. Larry has experience in teaching IELTS, CAE, CPE, and Business English (including Accounting, Logistics, and Architecture).",
  accomodation: ["Apartment", "House"].sample,
  address: "695-16 Saidaiji gomyo, Okayama shi higashi ku, Okayama ken, Japan",
  user: User.find(4),
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/2253879/pexels-photo-2253879.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)


Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House with a big grass garden. You can get the house by subway as well. You can enjoy a lot of sight-seeing and amusements in around house.",
  price: rand(10..50),
  availability: true,
  family_description: "I am extremely lucky to born in this family. The family bonding is great here. Everyone comes out to help the others in needs and emergencies. In fact, the entire family backs the other family member. My one thing should be made clear here – my family does not favour any illicit activities. If someone is found guilty of any illegal cause, my grandfather does not support him/ her and the similar issue is for us. We do not favour anything illegitimate and in our early childhood, we were taught to follow the standard rules and laws for everything. The entire family spends quality time when there is an occasion or during the weekly lunch. In fact, this has become a tradition for us to take a weekly meal together on the weekly holiday afternoon. It has been possible only for the strong bond we maintain.",
  accomodation: ["Apartment", "House"].sample,
  address: "626-6 Ogi, Kikuchi shi, Kumamoto ken, Japan",
  user: User.find(6),
  tag_list: tag.sample(2),
  img_url: "https://images.pexels.com/photos/6530679/pexels-photo-6530679.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)


Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "In my family, basically, we are five members altogether. They are - my parents, my younger sister and younger brother and me. We, five people, live in our own Apartment. Besides, we have some other relatives who are family members too and they live adjacent to us. If I count them, the number will be more. Most of the members are related to me either from my father or my mother. But the number of my maternal relatives and family member is more from my paternal part. I am too lucky that all of them love me much.",
  accomodation: ["Apartment", "House"].sample,
  address: "3-589-7 Kuminoki, Osakasayama shi, Osaka fu, Japan",
  user: User.find(7),
  tag_list: tag.sample(2),
  img_url: "https://eriefamilycenter.org/wp-content/uploads/2017/08/two.jpg"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House with a big grass garden. You can get the house by subway as well. You can enjoy a lot of sight-seeing and amusements in around house.",
  price: rand(10..50),
  availability: true,
  family_description: "In my family, basically, we are five members altogether. They are - my parents, my younger sister and younger brother and me. We, five people, live in our own Apartment. Besides, we have some other relatives who are family members too and they live adjacent to us. If I count them, the number will be more. Most of the members are related to me either from my father or my mother. But the number of my maternal relatives and family member is more from my paternal part. I am too lucky that all of them love me much.",
  accomodation: ["Apartment", "House"].sample,
  address: "814-10 Kuchida, Chita gun taketoyo cho, Aichi ken, Japan",
  user: User.find(1),
  tag_list: tag.sample(2),
  img_url: "https://images.pexels.com/photos/1128318/pexels-photo-1128318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "I am extremely lucky to born in this family. The family bonding is great here. Everyone comes out to help the others in needs and emergencies. In fact, the entire family backs the other family member. My one thing should be made clear here – my family does not favour any illicit activities. If someone is found guilty of any illegal cause, my grandfather does not support him/ her and the similar issue is for us. We do not favour anything illegitimate and in our early childhood, we were taught to follow the standard rules and laws for everything. The entire family spends quality time when there is an occasion or during the weekly lunch. In fact, this has become a tradition for us to take a weekly meal together on the weekly holiday afternoon. It has been possible only for the strong bond we maintain.",
  accomodation: ["Apartment", "House"].sample,
  address: "833-18 Ishidamachi, Nobeoka shi, Miyazaki ken, Japan",
  user: User.find(2),
  tag_list: tag.sample(1),
  img_url: "https://images.pexels.com/photos/160994/family-outdoor-happy-happiness-160994.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "In my family, basically, we are five members altogether. They are - my parents, my younger sister and younger brother and me. We, five people, live in our own Apartment. Besides, we have some other relatives who are family members too and they live adjacent to us. If I count them, the number will be more. Most of the members are related to me either from my father or my mother. But the number of my maternal relatives and family member is more from my paternal part. I am too lucky that all of them love me much.",
  accomodation: ["Apartment", "House"].sample,
  address: "Austrasse 27, 77977 Rust, Germany",
  user: User.find(6),
  tag_list: tag.sample,
  img_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/winter-day-by-fireplace-royalty-free-image-1639519069.jpg"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House in a beautiful area. Enjoy your time with us. We will be happy to see you any time. We have subway and bus stop near and it7s not far from centre.",
  price: rand(10..50),
  availability: true,
  family_description: "My family is the place where I return at the end of the day. This is the place that takes care of me. It supports me when I am sick, when I am down – it cheers me up to move ahead. The other members also take care of me in various aspects. There is a strong feeling inside me for my family. The feeling is the same to the family members as well. We love to be happy in contact with each other. As a matter of fact, this is the very best family I have ever seen or met where there are no major conflicting issues. I have learnt a lot of real-life things from here. Based on such things, my family is important to me than any other things in the world.",
  accomodation: ["Apartment", "House"].sample,
  address: "29 Seel Street Liverpool L1 4AU England",
  user: User.find(5),
  tag_list: tag.sample(2),
  img_url: "https://images.pexels.com/photos/4205505/pexels-photo-4205505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)
Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "In my family, basically, we are five members altogether. They are - my parents, my younger sister and younger brother and me. We, five people, live in our own Apartment. Besides, we have some other relatives who are family members too and they live adjacent to us. If I count them, the number will be more. Most of the members are related to me either from my father or my mother. But the number of my maternal relatives and family member is more from my paternal part. I am too lucky that all of them love me much.",
  accomodation: ["Apartment", "House"].sample,
  address: "464-18 Mitsuyamotocho, Nagahama shi, Shiga ken, Japan",
  user: User.find(4),
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/2253879/pexels-photo-2253879.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House in a beautiful area. Enjoy your time with us. We will be happy to see you any time. We have subway and bus stop near and it7s not far from centre.",
  price: rand(10..50),
  availability: true,
  family_description: "I am extremely lucky to born in this family. The family bonding is great here. Everyone comes out to help the others in needs and emergencies. In fact, the entire family backs the other family member. My one thing should be made clear here – my family does not favour any illicit activities. If someone is found guilty of any illegal cause, my grandfather does not support him/ her and the similar issue is for us. We do not favour anything illegitimate and in our early childhood, we were taught to follow the standard rules and laws for everything. The entire family spends quality time when there is an occasion or during the weekly lunch. In fact, this has become a tradition for us to take a weekly meal together on the weekly holiday afternoon. It has been possible only for the strong bond we maintain.",
  accomodation: ["Apartment", "House"].sample,
  address: "1470 S Washington St, North Attleboro MA 2760",
  user: User.find(2),
  tag_list: tag.sample(1),
  img_url: "https://images.pexels.com/photos/160994/family-outdoor-happy-happiness-160994.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)


Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "I am extremely lucky to born in this family. The family bonding is great here. Everyone comes out to help the others in needs and emergencies. In fact, the entire family backs the other family member. My one thing should be made clear here – my family does not favour any illicit activities. If someone is found guilty of any illegal cause, my grandfather does not support him/ her and the similar issue is for us. We do not favour anything illegitimate and in our early childhood, we were taught to follow the standard rules and laws for everything. The entire family spends quality time when there is an occasion or during the weekly lunch. In fact, this has become a tradition for us to take a weekly meal together on the weekly holiday afternoon. It has been possible only for the strong bond we maintain.",
  accomodation: ["Apartment", "House"].sample,
  address: "0 Soojian Dr, Leicester MA 1524",
  user: User.find(6),
  tag_list: tag.sample(2),
  img_url: "https://images.pexels.com/photos/6530679/pexels-photo-6530679.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House with a big grass garden. You can get the house by subway as well. You can enjoy a lot of sight-seeing and amusements in around house.",
  price: rand(10..50),
  availability: true,
  family_description: "In my family, basically, we are five members altogether. They are - my parents, my younger sister and younger brother and me. We, five people, live in our own Apartment. Besides, we have some other relatives who are family members too and they live adjacent to us. If I count them, the number will be more. Most of the members are related to me either from my father or my mother. But the number of my maternal relatives and family member is more from my paternal part. I am too lucky that all of them love me much.",
  accomodation: ["Apartment", "House"].sample,
  address: "777 Brockton Avenue, Abington MA 2351",
  user: User.find(7),
  tag_list: tag.sample(3),
  img_url: "https://eriefamilycenter.org/wp-content/uploads/2017/08/two.jpg"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House with a big grass garden. You can get the house by subway as well. You can enjoy a lot of sight-seeing and amusements in around house.",
  price: rand(10..50),
  availability: true,
  family_description: "My family consists of my mother, father and my little sister.",
  accomodation: ["Apartment", "House"].sample,
  address: "832-3 Fukuyoshi, Tohaku gun misasa cho, Tottori ken, Japan",
  user: User.find(5),
  tag_list: tag.sample,
  img_url: "https://cdn2.momjunction.com/wp-content/uploads/2019/09/151-Interesting-Would-You-Rather-Questions-For-Couples-2.jpg"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "My family is the place where I return at the end of the day. This is the place that takes care of me. It supports me when I am sick, when I am down – it cheers me up to move ahead. The other members also take care of me in various aspects. There is a strong feeling inside me for my family. The feeling is the same to the family members as well. We love to be happy in contact with each other. As a matter of fact, this is the very best family I have ever seen or met where there are no major conflicting issues. I have learnt a lot of real-life things from here. Based on such things, my family is important to me than any other things in the world.",
  accomodation: ["Apartment", "House"].sample,
  address: "72 Main St, North Reading MA 1864",
  user: User.find(1),
  tag_list: tag.sample,
  img_url: "https://images.pexels.com/photos/1128318/pexels-photo-1128318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)


Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House with a big grass garden. You can get the house by subway as well. You can enjoy a lot of sight-seeing and amusements in around house.",
  price: rand(10..50),
  availability: true,
  family_description: "My family consists of my mother, father and my little sister.",
  accomodation: ["Apartment", "House"].sample,
  address: "8 Sentosa Gateway, Singapore 098269",
  user: User.find(3),
  tag_list: tag.sample,
  img_url: "https://images.pexels.com/photos/1835927/pexels-photo-1835927.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "My family is the place where I return at the end of the day. This is the place that takes care of me. It supports me when I am sick, when I am down – it cheers me up to move ahead. The other members also take care of me in various aspects. There is a strong feeling inside me for my family. The feeling is the same to the family members as well. We love to be happy in contact with each other. As a matter of fact, this is the very best family I have ever seen or met where there are no major conflicting issues. I have learnt a lot of real-life things from here. Based on such things, my family is important to me than any other things in the world.",
  accomodation: ["Apartment", "House"].sample,
  address: "Via Angelo Maspoli 18, Mendrisio 6850 Switzerland",
  user: User.find(4),
  tag_list: tag.sample,
  img_url: "https://t4.ftcdn.net/jpg/02/77/68/51/360_F_277685185_UAYxm224UPelni1rxsuAUZQbfhly0RpL.jpg"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "It is a space where you can take a day off from your everyday life and be completely surrounded by natural and beautiful things.",
  price: rand(10..50),
  availability: true,
  family_description: "I am lucky to have such a family. All the members of the family are highly intimate with me and I am to them too. The interpersonal relationship with all the family members in my family is fine and we do truly care for each other. When someone is in any sort of trouble or in any difficulty, we try to provide necessary supports immediately so the situation could be solved. Moreover, I always try to help my siblings in their studies and sometimes my father also helps them in completing their school assignments. Besides, my mother takes every form of care for us all. She is the one who is the key member of the family. I have a very good relationship with my father but the relationship is better with my mother and I pass more time with her when I am at home on my off-days.",
  accomodation: ["Apartment", "House"].sample,
  address: "838-14 Kumanogawacho nishi, Shingu shi, Wakayama ken, Japan",
  user: User.find(2),
  tag_list: tag.sample(2),
  img_url: "https://images.pexels.com/photos/160994/family-outdoor-happy-happiness-160994.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "My family is the place where I return at the end of the day. This is the place that takes care of me. It supports me when I am sick, when I am down – it cheers me up to move ahead. The other members also take care of me in various aspects. There is a strong feeling inside me for my family. The feeling is the same to the family members as well. We love to be happy in contact with each other. As a matter of fact, this is the very best family I have ever seen or met where there are no major conflicting issues. I have learnt a lot of real-life things from here. Based on such things, my family is important to me than any other things in the world.",
  accomodation: ["Apartment", "House"].sample,
  address: "690-17 Tonemachi okkai, Numata shi, Gumma ken, Japan",
  user: User.find(5),
  tag_list: tag.sample,
  img_url: "https://cdn2.momjunction.com/wp-content/uploads/2019/09/151-Interesting-Would-You-Rather-Questions-For-Couples-2.jpg"
)



Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House in a beautiful area. Enjoy your time with us. We will be happy to see you any time. We have subway and bus stop near and it7s not far from centre.",
  price: rand(10..50),
  availability: true,
  family_description: "My family consists of my mother, father and my little sister.",
  accomodation: ["Apartment", "House"].sample,
  address: "989-8 Tomizawa, Soma shi, Fukushima ken, Japan",
  user: User.find(3),
  tag_list: tag.sample(1),
  img_url: "https://images.pexels.com/photos/1835927/pexels-photo-1835927.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House with a big grass garden. You can get the house by subway as well. You can enjoy a lot of sight-seeing and amusements in around house.",
  price: rand(10..50),
  availability: true,
  family_description: "My family consists of my mother, father and my little sister.",
  accomodation: ["Apartment", "House"].sample,
  address: "Klewinowo 116, 16-061 Klewinowo, Poland",
  user: User.find(7),
  tag_list: tag.sample(1),
  img_url: "https://eriefamilycenter.org/wp-content/uploads/2017/08/two.jpg"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "My family is the place where I return at the end of the day. This is the place that takes care of me. It supports me when I am sick, when I am down – it cheers me up to move ahead. The other members also take care of me in various aspects. There is a strong feeling inside me for my family. The feeling is the same to the family members as well. We love to be happy in contact with each other. As a matter of fact, this is the very best family I have ever seen or met where there are no major conflicting issues. I have learnt a lot of real-life things from here. Based on such things, my family is important to me than any other things in the world.",
  accomodation: ["Apartment", "House"].sample,
  address: "Fischerstrasse 33, 77977 Rust, Germany",
  user: User.find(1),
  tag_list: tag.sample(2),
  img_url: "https://images.pexels.com/photos/1128318/pexels-photo-1128318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

puts "... created #{Homestay.count} homestays."

15.times do
  Booking.create!(
    booking_end: Faker::Date.forward(days: 23),
    booking_start: Faker::Date.backward(days: 14),
    user: User.all.sample,
    homestay: Homestay.all.sample)
end

puts "... created #{Booking.count} booking."
