<api jade>
   item
      name test(data, path)
      type -> checker
      desc 测试数据 ( 创建并返回 Checker 对象 )
   item
      name rule(name, check)
      type -> (this)
      desc 注册一条规则
   item
      name format(name, check)
      type -> (this)
      desc 注册一个格式验证方法
</api>