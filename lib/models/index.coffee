# Logger
log = require('debug')('kojix-core:models')

# Requirements
fs = require "fs"
path = require "path"
mongoose = require "mongoose"

schemaPath = path.join __dirname, "schemas"
files = fs.readdirSync schemaPath

for file in files
    if path.extname(file) is ".coffee"
      mock = require path.join schemaPath, file
      exports[mock.name] = mongoose.model(mock.name, mock.schema)

log Object.keys(exports).length + " Models loaded"
log Object.keys(exports)