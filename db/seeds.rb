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
  description: "Hi everyone I'm Keita. Born and raised in Tokyo Half Japanese/American Former salesman and Japanese/English Medical translator My personality type is an ENFP. I attended an international school in Tokyo, then went to the States to Uni. transferred to a Japanese Uni. and then got into a high pressure sales company(very bad experience, but lots of stories). Got out of a toxic environment then got into a translation firm(good environment) but wanted change after 2 years. I wanted to try something new and here I am. Loves meeting new people, broad listener of music(hip-hop, r&b, pop, rock, j-pop, k-pop), board games(has a huge collection), video games(updates his console every time a new smash bros. came out), beer(currently has a part time job at a tap room in Ome, Tokyo. Loves stouts) and cafe hopping. Excited to learn/grow together through this boot camp. Hope I get to meet all of you soon and get to know you all well by the end of the bootcamp.",
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
families = ["https://images.pexels.com/photos/1128318/pexels-photo-1128318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
"https://images.pexels.com/photos/160994/family-outdoor-happy-happiness-160994.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
"https://images.pexels.com/photos/1835927/pexels-photo-1835927.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
"https://images.pexels.com/photos/2253879/pexels-photo-2253879.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
"https://images.pexels.com/photos/4205505/pexels-photo-4205505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
"https://images.pexels.com/photos/6530679/pexels-photo-6530679.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
"https://images.pexels.com/photos/7728916/pexels-photo-7728916.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
"https://strongfamilies.ca/wp-content/uploads/2020/08/shutterstock_312464672.jpg",
"https://www.verywellmind.com/thmb/EdKoDwJmV7Z3qGBkio6QiC2H-CE=/2122x1415/filters:no_upscale():max_bytes(150000):strip_icc()/family-parents-grandparents-Morsa-Images-Taxi-56a906ad3df78cf772a2ef29.jpg",
"https://www.helpguide.org/wp-content/uploads/young-boy-and-girl-touch-fathers-beard-768.jpg",
"https://www.familiesinc.net/sites/default/files/content/slides/iStock-472183457-web.jpg",
"https://www.salvationarmy.org.uk/sites/default/files/styles/social/public/images/2020-05/families%20-%20landing%20page.jpg?h=3ed5e577&itok=enNQJPGJ",
"https://images.squarespace-cdn.com/content/v1/5c0f697e9d5abb8c65cd6857/1585003121412-9ZNUW07XW0QX72YTU5CG/iStock-1185347539.jpg?format=750w",
"https://www.kylielepri.com.au/wp-content/uploads/2019/06/happycouplesjpg.jpg",
"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hbz-couples-meghan-markle-prince-harry-gettyimages-1045629912.jpg",
"https://www.remixmagazine.com/assets/283477083_983704158989224_3255227233707556863_n__ResizedImageWzYwMCw3NDhd.jpg",
"https://cdn2.momjunction.com/wp-content/uploads/2019/09/151-Interesting-Would-You-Rather-Questions-For-Couples-2.jpg",
"https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/field_blog_entry_teaser_image/2021-06/shutterstock_670353409.jpg?itok=SOMYqlVk",
"https://vippets.net/wp-content/uploads/2018/02/depositphotos_151564708_l-2015-1030x675.jpg",
"https://images.theconversation.com/files/447868/original/file-20220222-23-1jsr16x.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=754&fit=clip",
"https://cff2.earth.com/uploads/2018/08/12125816/People-who-have-pets-tend-to-be-happier-healthier-and-wealthier.jpg",
"https://images.onhealth.com/images/slideshow/pet-allergy-s1-people-and-pets.jpg",
"https://thumbs.dreamstime.com/b/family-couple-watching-television-projector-home-sofa-family-couple-watching-television-projector-home-sofa-162144912.jpg",
"https://cdn.mos.cms.futurecdn.net/DbJ4FxAbsrPqR5ULRw2BTR.jpg",
"https://www.westend61.de/images/0001366569pw/smiling-couple-watching-tv-while-enjoying-popcorn-on-sofa-at-home-KIJF02980.jpg",
"https://expatinsurance.com.sg/wp-content/uploads/2021/06/Why-Singapore-Is-One-Of-The-Best-Countries-To-Raise-Families.jpg",
"https://www.dow.catholic.edu.au/assets/Uploads/_resampled/ScaleWidthWyI2MDAiXQ/National-Families-Week-Feature-Photo.jpg",
"https://image.cnbcfm.com/api/v1/image/106131880-1568644045001gettyimages-901214908.jpg?v=1568644112&w=929&h=523",
"https://cdn2.psychologytoday.com/assets/styles/manual_crop_1_91_1_1528x800/public/2020-09/Family_TomWang_Shutterstock_286469927_0.jpg?itok=UUsR6qUm",
"https://apicms.thestar.com.my/uploads/images/2020/05/14/681788.jpg",
"https://nationaltoday.com/wp-content/uploads/2022/06/20-Perfect-Family-1.jpg",
"https://chorus.stimg.co/23010236/ows_78604c56_7781_41d9_803a_edb9e6442dba.jpg?fit=crop&crop=faces",
"https://eriefamilycenter.org/wp-content/uploads/2017/08/two.jpg",
"https://www.cffutures.org/wp-content/uploads/2017/05/Family-Cutout_Heart_Fotolia_101077810.jpg",
"https://media.baamboozle.com/uploads/images/878298/1663010114_210371.jpeg",
"https://roymorgan-cms-dev.s3.ap-southeast-2.amazonaws.com/wp-content/uploads/2021/10/07055256/Conventional-Family-life.jpg",
"https://img.freepik.com/free-photo/medium-shot-happy-family-nature_23-2148996570.jpg?w=2000",
"https://dvyvvujm9h0uq.cloudfront.net/com/articles/1585856768-family-2.jpg"]

tag = ["No smoking", "Has Pets", "Has Kids", "No Pets", "No Kids"]

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "Escape the busy life and relax in the countryside. Our Friendly cows will meet you off your private back patio! This serene, private guest home on our family ranch. Enjoy our friendly farm animals, orchard, and seasonal garden. ",
  price: rand(10..50),
  availability: true,
  family_description: "In my family, basically, we are five members altogether. They are - my parents, my younger sister and younger brother and me. We, five people, live in our own Apartment. Besides, we have some other relatives who are family members too and they live adjacent to us. If I count them, the number will be more. Most of the members are related to me either from my father or my mother. But the number of my maternal relatives and family member is more from my paternal part. I am too lucky that all of them love me much.",
  accomodation: ["Apartment", "House"].sample,
  address: "913-14 Jogasawa, Mutsu shi, Aomori ken",
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
  address: "229-5 Higashimachi, Iwakura shi, Aichi ken",
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
  address: "695-16 Saidaiji gomyo, Okayama shi higashi ku, Okayama ken",
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
  address: "626-6 Ogi, Kikuchi shi, Kumamoto ken",
  user: User.find(6),
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/6530679/pexels-photo-6530679.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)


Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "In my family, basically, we are five members altogether. They are - my parents, my younger sister and younger brother and me. We, five people, live in our own Apartment. Besides, we have some other relatives who are family members too and they live adjacent to us. If I count them, the number will be more. Most of the members are related to me either from my father or my mother. But the number of my maternal relatives and family member is more from my paternal part. I am too lucky that all of them love me much.",
  accomodation: ["Apartment", "House"].sample,
  address: "3-589-7 Kuminoki, Osakasayama shi, Osaka fu",
  user: User.find(7),
  tag_list: tag.sample(3),
  img_url: "https://eriefamilycenter.org/wp-content/uploads/2017/08/two.jpg"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House with a big grass garden. You can get the house by subway as well. You can enjoy a lot of sight-seeing and amusements in around house.",
  price: rand(10..50),
  availability: true,
  family_description: "In my family, basically, we are five members altogether. They are - my parents, my younger sister and younger brother and me. We, five people, live in our own Apartment. Besides, we have some other relatives who are family members too and they live adjacent to us. If I count them, the number will be more. Most of the members are related to me either from my father or my mother. But the number of my maternal relatives and family member is more from my paternal part. I am too lucky that all of them love me much.",
  accomodation: ["Apartment", "House"].sample,
  address: "814-10 Kuchida, Chita gun taketoyo cho, Aichi ken",
  user: User.find(1),
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/1128318/pexels-photo-1128318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "I am extremely lucky to born in this family. The family bonding is great here. Everyone comes out to help the others in needs and emergencies. In fact, the entire family backs the other family member. My one thing should be made clear here – my family does not favour any illicit activities. If someone is found guilty of any illegal cause, my grandfather does not support him/ her and the similar issue is for us. We do not favour anything illegitimate and in our early childhood, we were taught to follow the standard rules and laws for everything. The entire family spends quality time when there is an occasion or during the weekly lunch. In fact, this has become a tradition for us to take a weekly meal together on the weekly holiday afternoon. It has been possible only for the strong bond we maintain.",
  accomodation: ["Apartment", "House"].sample,
  address: "833-18 Ishidamachi, Nobeoka shi, Miyazaki ken",
  user: User.find(2),
  tag_list: tag.sample(3),
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
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/6530679/pexels-photo-6530679.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
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
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/4205505/pexels-photo-4205505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)
Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "In my family, basically, we are five members altogether. They are - my parents, my younger sister and younger brother and me. We, five people, live in our own Apartment. Besides, we have some other relatives who are family members too and they live adjacent to us. If I count them, the number will be more. Most of the members are related to me either from my father or my mother. But the number of my maternal relatives and family member is more from my paternal part. I am too lucky that all of them love me much.",
  accomodation: ["Apartment", "House"].sample,
  address: "464-18 Mitsuyamotocho, Nagahama shi, Shiga ken",
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
  tag_list: tag.sample(3),
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
  tag_list: tag.sample(3),
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
  address: "832-3 Fukuyoshi, Tohaku gun misasa cho, Tottori ken",
  user: User.find(5),
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/4205505/pexels-photo-4205505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
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
  address: "8 Sentosa Gateway, Singapore 098269",
  user: User.find(3),
  tag_list: tag.sample(3),
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
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/1835927/pexels-photo-1835927.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "It is a space where you can take a day off from your everyday life and be completely surrounded by natural and beautiful things.",
  price: rand(10..50),
  availability: true,
  family_description: "I am lucky to have such a family. All the members of the family are highly intimate with me and I am to them too. The interpersonal relationship with all the family members in my family is fine and we do truly care for each other. When someone is in any sort of trouble or in any difficulty, we try to provide necessary supports immediately so the situation could be solved. Moreover, I always try to help my siblings in their studies and sometimes my father also helps them in completing their school assignments. Besides, my mother takes every form of care for us all. She is the one who is the key member of the family. I have a very good relationship with my father but the relationship is better with my mother and I pass more time with her when I am at home on my off-days.",
  accomodation: ["Apartment", "House"].sample,
  address: "838-14 Kumanogawacho nishi, Shingu shi, Wakayama ken",
  user: User.find(2),
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/160994/family-outdoor-happy-happiness-160994.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

Homestay.create!(
  number_of_users: rand(1..4),
  comments: "The horse ranch is located right next to the property, so you can enjoy the beautiful natural scenery. Come and make relaxing and enjoyable memories:)",
  price: rand(10..50),
  availability: true,
  family_description: "My family is the place where I return at the end of the day. This is the place that takes care of me. It supports me when I am sick, when I am down – it cheers me up to move ahead. The other members also take care of me in various aspects. There is a strong feeling inside me for my family. The feeling is the same to the family members as well. We love to be happy in contact with each other. As a matter of fact, this is the very best family I have ever seen or met where there are no major conflicting issues. I have learnt a lot of real-life things from here. Based on such things, my family is important to me than any other things in the world.",
  accomodation: ["Apartment", "House"].sample,
  address: "690-17 Tonemachi okkai, Numata shi, Gumma ken",
  user: User.find(5),
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/4205505/pexels-photo-4205505.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)



Homestay.create!(
  number_of_users: rand(1..4),
  comments: "House in a beautiful area. Enjoy your time with us. We will be happy to see you any time. We have subway and bus stop near and it7s not far from centre.",
  price: rand(10..50),
  availability: true,
  family_description: "My family consists of my mother, father and my little sister.",
  accomodation: ["Apartment", "House"].sample,
  address: "989-8 Tomizawa, Soma shi, Fukushima ken",
  user: User.find(3),
  tag_list: tag.sample(3),
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
  tag_list: tag.sample(3),
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
  tag_list: tag.sample(3),
  img_url: "https://images.pexels.com/photos/1128318/pexels-photo-1128318.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
)

puts "... created #{Homestay.count} homestays."

15.times do
  Booking.create!(booking_start: Faker::Date.backward(days: 14),
  booking_end: Date.today,
  user: User.all.sample,
  homestay: Homestay.all.sample)
end

puts "... created #{Booking.count} booking."
