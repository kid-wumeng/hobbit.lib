suite '~core', ->

   # → Common
   require('./type')
   require('./len')
   require('./equal')
   require('./clone')

   # → Object
   require('./get')

   # → Array-like
   require('./index_')
   require('./contain')
   require('./first')
   require('./last')
   require('./concat')

   # → String
   require('./match')

   # → Function
   require('./Switcher')
   require('./Switcher@case')
   require('./Switcher@then')
   require('./Switcher@default')

   # → Others
   require('./error')