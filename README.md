# JWT built with Rails API

> A backend API built to store and dispatch data to the frontend UI

## Features

1. User can keep track of the amount of water consumption in a day
2. User can identify if water intake is less or more than target


## Future Feature (v1.12)

1. Add more functionalities
2. Add more data like weight for accurate results


## Screenshots

### Desktop/Laptoop device

<img src="./display.png" alt="">


## Built With

- Ruby
- Ruby on Rails API
- Heroku
- Postgresql

## Live Demo

[Live Demo Link](https://frozen-forest-96999.herokuapp.com/)

## Getting Started

To get a local copy up and running follow these simple example steps.

1. `git clone https://github.com/addod19/track_it.git`
2. `cd track_it`
3. `bundle install`
4. `rails db:create`
5. `rails db:migrate`
5. `rails s`

### Prerequisites

- Ruby v2.7.1
- Heroku
- Rails v6.0.3

## Test using Postman

- To testing the signup page, copy this link into the URL `http://localhost:3000/signup`
- Navigate to the params tab, input the key value pairs
  - `name: "Janet"`
  - `email: "janet100@gmail.com"`
  - `password: "janet@12345"`
- After clicking `send` we either expect a success or failure message, in our case `success` message as seen below: We expect a `json` response in the format
```
{
    "user": {
        "id": 3,
        "name": "Janet",
        "email": "janet100@gmail.com",
        "password_digest": "$2a$12$j/H10rnnLa6K4AP0Eb2tvuMe5sldmMJqnJJMQtT.tXJItxOS4Vpkm",
        "created_at": "2020-09-21T16:09:41.400Z",
        "updated_at": "2020-09-21T16:09:41.400Z"
    },
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjozfQ._J97-icyhhe6kDqfNdWK2v-ItBEYDm8fVMT8cpdyzOE"
}
```
- To Test the Signin page
  - copy this link `http://localhost:3000/signin`
  - Navigate to the params of postman, fill in the key value pairs, `email` and `password`
  - Navigate to the `Authorization` tab, choose `OAuth1` as type, choose `Request headers` under
  `Add authorization data to`
  - Navigate to the `Headers` tab, fill in the key value pairs, `token`: `asdfg.qwertty.cxzcbb.`
  - If we get a `200` or `201` status code, signin successful otherwise `401` or `404` for failure

## RSpec Test

- run `rspec`

### Deployment

- `Heroku create`
- `git push heroku master`
- `Heroku run rails db:migrate`
- `Heroku open`

## Authors

👤 **Daniel Larbi Addo**

- Github: [@addod19](https://github.com/addod19)
- Twitter: [@DanielLarbiAdd1](https://twitter.com/DanielLarbiAdd1)
- Linkedin: [Daniel Larbi Addo](https://linkedin.com/in/daniel-larbi-addo/)
- Email: [Daniel Larbi Addo](addodaniellarbi@gmail.com)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/addod19/track_it/issues).

1. Fork it (https://github.com/addod19/track_it/fork)
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Show your support

Give us a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [Apache](lic.url) licensed.

