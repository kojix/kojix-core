mongoose = require 'mongoose'
Schema = mongoose.Schema

exports = module.exports

exports.name = 'Base'
exports.schema = new Schema
  
  createdAt:
    type: Date
    required: true
    default: Date.now
    
  updatedAt:
    type: Date
    required: true
    default: Date.now
    
  
