between = require('./between')



module.exports = to = ( end ) =>

   ########################################
   #|
   #|   Count the duration to end.
   #|
   #|   @params {Date}   end
   #|   @return {object} duration - the attributes same as time.between()
   #|
   ########################################

   return between( new Date(), end )