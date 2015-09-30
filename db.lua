local sqldriver = require( "luasql.mysql" )

db = {}

function db.start()
   sqlenv = assert( sqldriver.mysql() )
end

function db.shutdown()
   if( sqlenv ) then
      sqlenv:close()
   end
   print( "DB shutdown" );
end

function db.newSql( name, user, passwd, addr, port )
   port = port or 3306
   if( sqlenv == nil ) then
      error( "db not started up yet" )
   end
   return assert( sqlenv:connect( name, user, passwd, addr, port ) )
end

return db;
