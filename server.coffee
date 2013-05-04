express = require 'express'
path = require 'path'
app = express()

app.configure ->
  app.set('port', process.env.PORT || 2222)
  app.use express.logger('dev') #  'default', 'short', 'tiny', 'dev' 
  app.use express.bodyParser()
  app.use app.router

app.listen app.get('port'), ->
  console.log 'server listening on ' + app.get('port')

app.get '/', (req,res) ->
  res.send 'Zuller my Night'

app.post '/search', (req, res) ->
  res.send zullerJSON
app.get '/search', (req, res) ->
  res.send zullerJSON


zullerJSON = 
  "Attractions": [
    {
      "bar": {
          "_id": "21931284150151458143",
          "name": "Grega",
          "logo": "url/gregaLogo",
          "minAge": "20",
          "address": {
              "city": "Herzelia",
              "street": "Harash",
              "streetNumber": "1"
          },
          "date": {
              "day": "14",
              "month": "4",
              "year": "2013"
          },
          "weight": "1",
          "phoneNumber": "034124141",
          "music": [
              "main_stream",
              "rock",
              "israeli"
          ]
      }
    },
    {
      "bar": {
          "_id": "51498214311234233254",
          "name": "Margoza",
          "logo": "url/margozaLogo",
          "minAge": "20",
          "address": {
              "city": "Tel Aviv Jaffa",
              "street": "Oley Ziun",
              "streetNumber": "20"
          },
          "date": {
              "day": "25",
              "month": "5",
              "year": "2013"
          },
          "weight": "3",
          "phoneNumber": "030230322",
          "music": [
              "main_stream",
              "folk rock"
          ]
      }
    },
    {
      "bar": {
          "_id": "51498214311234938123",
          "name": "Freinds",
          "logo": "url/freindsLogo",
          "minAge": "20",
          "address": {
              "city": "Tel Aviv Jaffa",
              "street": "Dobnov",
              "streetNumber": "18"
          },
          "date": {
              "day": "22",
              "month": "5",
              "year": "2013"
          },
          "weight": "1",
          "phoneNumber": "0356423222",
          "music": [
              "main_stream",
              "rock",
              "israeli"
          ]
      }
    },
    {
      "club": {
          "_id": "29876545124219856232",
          "name": "Clara",
          "logo": "url/claraLogo",
          "minAge": "22",
          "address": {
              "city": "Tel Aviv",
              "street": "Kaufman",
              "streetNumber": "1"
          },
          "date": {
              "day": "22",
              "month": "4",
              "year": "2013"
          },
          "weight": "2",
          "music": [
              "main_stream",
              "house",
              "pop"
          ],
          "phoneNumber": "034124141"
      }
    },
    {
      "club": {
          "_id": "34526545124219856232",
          "name": "Dizingof",
          "logo": "url/dizingofLogo",
          "minAge": "22",
          "address": {
              "city": "Tel Aviv",
              "street": "Dizingof",
              "streetNumber": "3"
          },
          "date": {
              "day": "21",
              "month": "5",
              "year": "2013"
          },
          "weight": "2",
          "music": [
              "main_stream",
              "house",
              "pop"
          ],
          "phoneNumber": "036543211"
      }
    }
  ],
  "User": {
    "name": "Aram",
    "isHomo": "YES"
  }