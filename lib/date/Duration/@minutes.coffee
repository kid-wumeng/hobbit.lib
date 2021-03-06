moment    = require('moment')
errors    = require('../../errors')
error     = require('../../core/error')
isBoolean = require('../../is/isBoolean')


module.exports = ( float = false ) ->

   ########################################
   #|
   #|   @params {boolean}     float
   #|   @return {number ≥ 0} minutes
   #|
   ########################################

   if !isBoolean( float )
      throw error({ name: errors.INVALID_PARAMS, message: "`float` should be a boolean" })

   from = moment(@_from)
   to   = moment(@_to)

   return to.diff(from, 'minutes', float)