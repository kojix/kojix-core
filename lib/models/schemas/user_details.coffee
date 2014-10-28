mongoose = require 'mongoose'
Schema = mongoose.Schema
extend = require 'mongoose-schema-extend'

Base = require './base'
BaseSchema = Base.schema

exports = module.exports

exports.name = 'UserDetails'
exports.schema = BaseSchema.extend
  user:
    type: Schema.ObjectId
    ref: 'User'
  
  firstName: String
  lastName: String
  street: String
  postralCode: String
  city: String
  country: String
  
