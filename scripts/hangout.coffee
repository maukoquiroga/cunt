# Description:
#   It pastes a hangout link.
#
# Commands:
#   hubot hangout
#   hubot dsum

module.exports = (robot) ->
  robot.respond /hangout$/i, (msg) ->
    msg.send "https://plus.google.com/hangouts/_/calendar/ZnRvcGlhLmNvbV8zcXVzYzF0Z2drdnVqdWVzazRxb3BjcnI2b0Bncm91cC5jYWxlbmRhci5nb29nbGUuY29t.ka0uqi0ceto7sh0cv2t3cjs4lo"

  robot.respond /dsum$/i, (msg) ->
    msg.send "Hello @all, the meeting room is ready :) https://plus.google.com/hangouts/_/calendar/ZnRvcGlhLmNvbV8zcXVzYzF0Z2drdnVqdWVzazRxb3BjcnI2b0Bncm91cC5jYWxlbmRhci5nb29nbGUuY29t.ka0uqi0ceto7sh0cv2t3cjs4lo"
