require('coffeescript/register')
require('colors')
moment = require('moment')
_ = require('lodash')



module.exports = sai = require('./lib')



;(async function(){

   try {


      server = new sai.http.Server({
         paramCastBoolean: true,
         paramCastNumber:  true,
         queryCastBoolean: true,
         queryCastNumber:  true
      })

      server.all('*', async function(data){
         console.log(111);
         try{
            await this.next()
         }catch(error){
            return error
         }
         console.log(333);
      })

      server.all(':id', async function(data){
         await sai.sleep(1000)
         console.log(222);
         return data;
      })

      server.listen(5555)


   } catch (error) {
      // console.log(error.name.red)
      console.log(error.message.red)
   }

})()





