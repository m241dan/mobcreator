local sqldriver = require( "luamysql.mysql" )

local db = {}

function db.start()
   sqlenv = assert( sqldriver.mysql() )
end

function db.shutdown()
   sqlenv:close()
end

function db.newSql( name, user, passwd, addr, port = 3306 )
   if( sqlenv == nil ) then
      error( "db not started up yet" )
   end
   return assert( sqlenv:connect( name, user, passwd, addr, port ) )
end

return db;
