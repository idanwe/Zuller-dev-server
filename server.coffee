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
  [
    _id: "21931284150151458143"
    name: "Grega"
    logo: "url/gregaLogo"
    minAge: "20"
    address:
      city: "Herzelia"
      street: "Harash"
      streetNumber: "1"

    date:
      day: "14"
      month: "4"
      year: "2013"

    weight: "1"
    phoneNumber: "034124141"
    music: ["main_stream", "rock", "israeli"]
  ,
    _id: "21931284150151458143"
    name: "Clara"
    logo: "url/claraLogo"
    minAge: "22"
    address:
      city: "Tel Aviv"
      street: "Kaufman"
      streetNumber: "1"

    date:
      day: "22"
      month: "4"
      year: "2013"

    weight: "2"
    music: ["main_stream", "house", "pop"]
    phoneNumber: "034124141"
  ]