require( "config" )
require( "db" )

shutdown = false

function main()
   -- initialize the db
   db.start()
   sql_handle = db.newSql( sqlcfg.DB_NAME, sqlcfg.DB_LOGIN, sqlcfg.DB_PASS, sqlcfg.DB_ADDR )
   interp = require( "interpreter" );
   
   while( shutdown ~= true ) do
   end

end

main()
db.shutdown()

