suite "time", ->

   test "time(date)", -> sai.time(new Date(2018, 3, 12, 6, 15, 45, 666)).should.eql(1523484945666)