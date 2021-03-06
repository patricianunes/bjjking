Belt.destroy_all
b1 = Belt.create :name => 'White'
b2 = Belt.create :name => 'Blue'
b3 = Belt.create :name => 'Purple'
b4 = Belt.create :name => 'Brown'
b5 = Belt.create :name => 'Black'
b6 = Belt.create :name => 'Red and black'
b7 = Belt.create :name => 'Red and white'
b8 = Belt.create :name => 'Red'

Team.destroy_all
t1 = Team.create :name => 'Gracie Barra', :logo => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Gb-company_offcial-logo.jpg/220px-Gb-company_offcial-logo.jpg', :address => '4/332 Oxford St, Bondi Junction NSW 2022'
t2 = Team.create :name => 'Art of Jiu Jitsu', :logo => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVUKsLFbySR7lbQonK8W3kMYexlS_o-fj45ucJ6Npqi9EAW5OA', :address => '411 E 17th St, Costa Mesa, CA 92627, USA'
t3 = Team.create :name => 'Renzo Gracie', :logo => 'https://txbjjcalendar.com/wp-content/uploads/2018/11/2237_33980103_1022602641246539_2935242338701672448_n.jpg', :address => '224 W 30th St, New York, NY 10001, USA'
t4 = Team.create :name => 'Atos', :logo => 'https://i0.wp.com/www.alavancayyc.com/wp-content/uploads/2015/05/atos-logo.png?resize=283%2C236&ssl=1', :address => '567 NE 81st St, Miami, FL 33138, US'

Athlete.destroy_all
a1 = Athlete.create :name => 'Renzo Gracie', :photo => 'https://static1.squarespace.com/static/542189b3e4b0e98b8cb06334/t/5473b25be4b0f9926cc69b0d/1416868448510/Renzo-Staff.jpg', :weight => '82', :team => t3, :belt => b5
a2 = Athlete.create :name => 'Rafael Mendes', :photo => 'https://artofjiujitsu.com/wp-content/uploads/2016/10/RAFAEL-EUROPE-2016-326x279.jpg', :weight => '60', :team => t2, :belt => b5
a3 = Athlete.create :name => 'Guilherme Mendes', :photo => 'https://caryjiujitsu.com/wp-content/uploads/2019/01/Gui-Mendes.jpg', :weight => '65', :team => t2, :belt => b5
a4 = Athlete.create :name => 'Galvao Atos', :photo => 'http://jiu-jitsu.news/wp-content/uploads/2018/06/750f96b361.jpg', :weight => '90', :team => t4, :belt => b5
a5 = Athlete.create :name => 'Romulo Barral', :photo => 'https://www.sherdog.com/image_crop/200/300/_images/fighter/20100108071500_rominho.JPG', :weight => '70', :belt => b5
a6 = Athlete.create :name => 'Helio Gracie', :photo => 'https://www.bjjee.com/wp-content/uploads/2015/04/helio-grace-sobrejiu.jpg', :weight => '50', :belt => b8

User.destroy_all
u1 = User.create :email => 'user@ga.co', :password => 'password'
u2 = User.create :email => 'user1@ga.co', :password => 'password', :admin => true
