
# 📚 Homestopia

Web app to find a homestay
![image](https://user-images.githubusercontent.com/99112509/203449208-5435ce20-409a-451f-b68a-fc6c5517c312.png)
![image](https://user-images.githubusercontent.com/99112509/203449261-c4db9b76-6b4a-4274-900f-343af3ab4789.png)
![image](https://user-images.githubusercontent.com/99112509/203449288-79d5fa2a-742d-47ec-83e2-83007c4a6517.png)
![image](https://user-images.githubusercontent.com/99112509/203449339-09c0dd6c-b57f-4bb1-941f-15c107685d0d.png)
![image](https://user-images.githubusercontent.com/99112509/203449360-de057721-67db-49ce-aec9-dda00a35f216.png)
![image](https://user-images.githubusercontent.com/99112509/203449377-5f5909ee-71e3-406e-aa6e-000c166aefcb.png)
<br>

   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=cloudinary://482279922763549:5tcC79BwTV8IXG2sBzPxMev7EtE@djnxkxxw9

MAPBOX_API_KEY=pk.eyJ1IjoiZGt3aWxzb24xOTkxIiwiYSI6ImNsYWtmbHhtZjA1Mmgzb3BqNnVvZm9tZ3EifQ.jqERiLo3qGRnI21NTc1YDA
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Acknowledgements
Inspired from my trip to japan and being surrounded by local .
## Team Members
[Keita Wilson](https://www.linkedin.com/in/keita-wilson-1234aa142/)
[Yulia Naumenko](https://www.linkedin.com/in/yulia-naumenko-bba121119/)
[Savithri Wewala](https://www.linkedin.com/in/savithri-wewala-507308a1/)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License
