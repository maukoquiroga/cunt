# Description:
#   It wanks someone!
#
# Commands:
#   hubot wank <user> - Wanks `user`!
#
# Dependencies:
#  "jsdom": "0.2.14"
#  "underscore.string": "2.3.0"

jsdom   = require 'jsdom'
_       = require 'underscore.string'

module.exports = (robot) ->
  robot.respond /wank @?([\w .\-]+)\?*$/i, (msg) ->
    name = "@" + msg.match[1].trim()
    msg.http('http://www.insultgenerator.org/')
      .get() (err, res, body) ->
        jquery = 'http://code.jquery.com/jquery.js'
        jsdom.env body, [jquery], (errors, window) ->
          insult = window.$('center table tr').text()
          msg.send "#{name}, #{insult[0].toLowerCase() + insult.slice(1)}"