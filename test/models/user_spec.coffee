should = require 'should'

core = require process.cwd()
User = core.models.User

mongoose = require 'mongoose'

describe 'Model: User', ->
  user = null
  
  before (done) ->
    mongoose.connect "mongodb://localhost/test", (error) ->
      console.error "Error while connecting:\n%\n", error  if error
      done error
  
  beforeEach ->
    user = new User
      email: 'test@test.de'
      password: 'test'
      
  it "should save a user", (done) ->
    user.save (err) ->
      should.not.exist err
      done()
      
  after (done) ->
    User.remove done

