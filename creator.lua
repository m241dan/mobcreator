require( "config" )
require( "db" )

shutdown = false

function main()
   -- initialize the db
   local input
   db.start()
   sql_handle = db.newSql( sqlcfg.DB_NAME, sqlcfg.DB_LOGIN, sqlcfg.DB_PASS, sqlcfg.DB_ADDR )
   interp = require( "interpreter" );

   interp();

   while( shutdown ~= true ) do
      input = io.read()
      if( input == "shutdown" ) then
         shutdown = true
      else
         interp( input );
      end
   end

end

main()
db.shutdown()

