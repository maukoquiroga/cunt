# Description:
#   It motivates you.
#
# Commands:
#   hubot motivate me - It motivates you.

module.exports = (robot) ->
  robot.respond /motivate @?([\w .\-]+)\?*$/i, (msg) ->
    name = msg.match[1].trim()

    switch name
      when "me" then msg.send "You're awesome dude!"
      when "welldan97" then msg.send "You're awesome @#{name} (#{name})!"
      else msg.send "You're awesome @#{name}!"