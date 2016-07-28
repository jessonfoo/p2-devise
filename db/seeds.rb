User.create!([
  {email: "jesson.foo@gmail.com", encrypted_password: "$2a$11$AJNKSsZhn5.S6VnDfQxFc.78Ho6F.u8wenzOZsKrvEuEiYFijfnc.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-07-27 19:24:54", last_sign_in_at: "2016-07-27 19:24:41", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "jessonfoo@gmail.com", encrypted_password: "$2a$11$9XijgEZDzdzWLUiql2D50eOgUGTBg3b6qMJBvVrOVTkh2Jb473U6S", reset_password_token: "1b73b428ce63e9c91d402220dcb34bc33b859c58e12353253c503857601a3bfa", reset_password_sent_at: "2016-07-27 19:28:19", remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2016-07-27 19:28:50", last_sign_in_at: "2016-07-27 19:24:47", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "j@j.com", encrypted_password: "$2a$11$U3MxchhSRaRqaTb9HqgjA.K6IkNqHSTbpA7oUKCn9Cd3e/xN1wowC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2016-07-28 19:14:22", last_sign_in_at: "2016-07-28 19:07:58", current_sign_in_ip: "::1", last_sign_in_ip: "::1"},
  {email: "admin@admin.com", encrypted_password: "$2a$11$zaOUxMHSDc7v7picRuRBVOyp.RrWmMweGDToUN/RE2Kt2a4wBhEd.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-07-28 19:41:54", last_sign_in_at: "2016-07-28 19:41:54", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Picture.create!([
  {url: "https://cdn.filestackcontent.com/CPxdfqE1SR6tDFhSkiAt", title: "guitar"},
  {url: "https://cdn.filestackcontent.com/6zZWUKkQBKUvnvHMZ6BQ", title: "testsa"},
  {url: "https://cdn.filestackcontent.com/CZ2uLRV1SYQTcJGTZa0L", title: "abas"},
  {url: "https://cdn.filestackcontent.com/SQ3e02cCRT4rEEsnV6pL", title: "badasdf"},
  {url: "https://cdn.filestackcontent.com/dkmTbgG9RPSZZvO0los8", title: "my picture"},
  {url: "https://cdn.filestackcontent.com/CtgjLAbqTDSZelpZUmGK", title: ""}
])
Post.create!([
  {title: "Dolores sunt ab quaerat mollitia minim in amet esse officia mollit amet aut reprehenderit incididunt suscipit blanditiis", url: "https://cdn.filestackcontent.com/jKXU4QtThmQ8nBWzm7fQ", content: "Rerum voluptatem necessitatibus nemo doloremque culpa aut omnis consectetur, unde labore quibusdam reprehenderit, lorem dolores sed obcaecati ea laborum.", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "acasdava", url: "https://cdn.filestackcontent.com/TJMKrSnXSyyD6eCYt3Nu", content: "basdbas", latitude: 34.0254652, longitude: -118.2701922, user_id: 3},
  {title: "awww", url: "https://cdn.filestackcontent.com/m1saXhoiTvKIzJnYo5Iw", content: "yisss", latitude: 34.0254652, longitude: -118.2701922, user_id: 4},
  {title: "asdfasdf", url: "https://cdn.filestackcontent.com/eRzOcC0QgKCXQSqEqhXF", content: "aasdbas", latitude: 34.0254652, longitude: -118.2701922, user_id: 4},
  {title: "asdfasdf", url: "https://cdn.filestackcontent.com/3LrpayyrSxu85hn5xgJ3", content: "asdfasdf", latitude: nil, longitude: nil, user_id: 4},
  {title: "abvasdbas", url: "https://cdn.filestackcontent.com/MPbNcFPRmWH8gJHcuG0u", content: "basdbasdb", latitude: nil, longitude: nil, user_id: 4},
  {title: "acdbasdba", url: "https://cdn.filestackcontent.com/aADbJdy9Q46JUJdDw4ea", content: "badbasdbas", latitude: nil, longitude: nil, user_id: 4},
  {title: "asdfasdf", url: "https://cdn.filestackcontent.com/Xfaf9lAYRFur1SP5XxMt", content: "asdfasdfasdfasdf", latitude: nil, longitude: nil, user_id: 4},
  {title: "monster", url: "https://cdn.filestackcontent.com/vdM0QvNvSXGknuej6cYq", content: "gif testtt", latitude: 34.0254652, longitude: -118.2701922, user_id: 1},
  {title: "hat", url: "https://cdn.filestackcontent.com/dJRhlYPPTRuspAlzK0Kl", content: "the avasba", latitude: 34.0254652, longitude: -118.25, user_id: 1},
  {title: "skate taco", url: "https://cdn.filestackcontent.com/iCwV3WxTSe6Bl3tyAhUk", content: "some guy in some skatepark doing something", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "Bjorska", url: "https://cdn.filestackcontent.com/Gi2lpJqRmedqd4RKBlon", content: "motorcycle guy", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "Srf", url: "https://cdn.filestackcontent.com/oBqo2wr5R0iIBGAyGv0j", content: "omg cold play", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "english", url: "https://cdn.filestackcontent.com/MZf17wD1QcC1Vaa3qyme", content: "are", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "OMG", url: "https://cdn.filestackcontent.com/yyjJs9rgTOizRmampK32", content: "RYAN SHECKLER?!", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "ITZ ROBBY RAY", url: "https://cdn.filestackcontent.com/HYMc3oz2Q6mgjed6oXIy", content: "ROBERT GRAYSON CYRUS", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "asdf", url: "https://cdn.filestackcontent.com/Jj5TIsVFSx6mSuUZTNKv", content: "asdfasdf", latitude: 34.0254652, longitude: -118.2701922, user_id: 3},
  {title: "OMG COLDPLAY", url: "https://cdn.filestackcontent.com/Hc2Olu9bSnez8ivUghwd", content: "Similique accusamus laudantium, hic tenetur aut rerum sunt, totam optio, et rem ut cumque aliquam consequat. Distinctio. Id distinctio. Qui.", latitude: 34.0254652, longitude: -118.2701922, user_id: 3},
  {title: "motorcycle", url: "https://cdn.filestackcontent.com/Bc8lNAkDRL2X1KhEJcmb", content: "me", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "EMINEM?", url: "https://cdn.filestackcontent.com/UEIQqSv1RTmnQ0ja1Abv", content: "YOU LOOK GOOOD BOiiii", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "EMINEM?", url: "https://cdn.filestackcontent.com/Bk7JQhZSmueMX7cf4Cfw", content: "YOU LOOK GOOOD BOiiii", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "FUCK WORK DAMN", url: "https://cdn.filestackcontent.com/TzrFQvrQtKi8jBGvGorV", content: "", latitude: 34.0254652, longitude: -118.2701922, user_id: 3},
  {title: "METAL", url: "https://cdn.filestackcontent.com/xLJbUNvcSD6nhyKzRUuT", content: " AAAAHHHHH AAAAHHHHH", latitude: 34.0254652, longitude: -118.2701922, user_id: 3},
  {title: "BOBBY MELENDEZ", url: "https://cdn.filestackcontent.com/KMMh94k9R06gIFlVjjwu", content: "BOBBY IN A CAR", latitude: 34.0254652, longitude: -118.2701922, user_id: 3},
  {title: "mg", url: "https://cdn.filestackcontent.com/NV6CA9LVTR2BEE0wY972", content: "asdfasdfaasdf", latitude: 34.0254652, longitude: -118.2701922, user_id: 3},
  {title: "In culpa minim tempore nihil", url: "https://cdn.filestackcontent.com/wIZ0RNmTT1uH8o6YLhdB", content: "Nostrud ipsum, magni qui est, obcaecati voluptatibus ut nulla suscipit omnis ut.", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "asdfasdf", url: "https://cdn.filestackcontent.com/6HErmoK0QqWsW65UGc14", content: "asdfasdf", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "Suscipit corrupti  commodo", url: "https://cdn.filestackcontent.com/1AGFF8vSSGGMoYJvgExS", content: "Dolore quibusdam accusamus qui qui est sed labore velit, eligendi aut illo praesentium et autem eius omnis.\r\n", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "asdf", url: "https://cdn.filestackcontent.com/IsjMEoejRrGu9DSV8VNS", content: "asdfasdf\r\n", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "Incididunt non consequuntur labore qui maxime facere aliquip debitis ad maiores dolore", url: "https://cdn.filestackcontent.com/booXgkglRvmWEaIh9HTU", content: "Optio, in ipsam molestiae quis qui error sed dolore expedita occaecat omnis rerum iusto.", latitude: 34.007889, longitude: -118.2585096, user_id: 3},
  {title: "Sed iste eu in sit expedita dolorem sit proident magnam lorem eu cum assumenda voluptates ut ut odit dolorem mollit", url: "https://cdn.filestackcontent.com/m4AfRKdjThuloJylKiqw", content: "Incidunt, nihil elit, irure hic aliquip repellendus. Veniam, ullamco nostrum necessitatibus adipisicing cum nemo et pariatur.", latitude: 34.0254652, longitude: -118.2701922, user_id: 3}
])
