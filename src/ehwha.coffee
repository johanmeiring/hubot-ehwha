# Description:
#   Display a link to professor Farnsworth saying "Eh wha?"
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   eh wha - display Youtube link to professor Farnsworth saying "Eh wha?"
#
# Author:
#   johanmeiring

module.exports = (robot) ->
  regex = /eh wha/i
  robot.hear regex, (msg) ->
    msg.send "http://www.youtube.com/watch?v=RlbARlVyRAc"
