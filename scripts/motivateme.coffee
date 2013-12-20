# Description:
#   It motivates you.
#
# Commands:
#   hubot motivate me - It motivates you.

module.exports = (robot) ->
  robot.respond /motivate @?([\w .\-]+)\?*$/i, (msg) ->
    name = msg.match[1].trim()

    if name is "me"
      msg.send "You're awesome dude!"
    else
      msg.send "You're awesome @#{name}!"