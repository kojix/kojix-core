mongoose = require 'mongoose'
Schema = mongoose.Schema
extend = require 'mongoose-schema-extend'

Base = require './base'
BaseSchema = Base.schema

exports = module.exports

exports.name = 'User'
exports.schema = BaseSchema.extend
  
  email:
    type: String
    required: true
    unique: true
  
  password:
    type: String
    required: true
    
  active:
    type: Boolean
    default: true
  
  confirmedMail:
    type: Boolean
    default: false
    
  
  
