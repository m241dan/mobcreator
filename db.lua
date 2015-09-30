local sqldriver = require( "luasql.mysql" )

db = {}

function db.start()
   print( "DB Driver booting!" );

   sqlenv = assert( sqldriver.mysql() )
   print( "DB MySQL Environment booted." )
end

function db.shutdown()
   if( sqlenv ) then
      sqlenv:close()
   end
   print( "DB shutdown!" );
end

function db.newSql( name, user, passwd, addr, port )
   port = port or 3306
   if( sqlenv == nil ) then
      error( "DB not started up yet!" )
   end
   print( "Creating new MySQL database handle." )
   return assert( sqlenv:connect( name, user, passwd, addr, port ) )
end

return db;
