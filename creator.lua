require( "config" )
require( "db" )

shutdown = false

local function main()
   local input

   -- initialize the db
   db.start()
   sql_handle = db.newSql( sqlcfg.DB_NAME, sqlcfg.DB_LOGIN, sqlcfg.DB_PASS, sqlcfg.DB_ADDR )

   -- get the interpreter coroutine and initialize it
   interp = require( "interpreter" );
   interp();

   -- a welcoming message
   print( "\nWelcome to the FFXI MobCreator\nAt its heart, this is a simple tool to interface with and create or edit database data.\nIt could easilly be extended with additional lua types." )

   -- the input grabbing loop
   while( shutdown ~= true ) do
      input = io.read("*line")
      if( input == "shutdown" ) then
         shutdown = true
      else
         interp( input );
      end
   end

   -- the clean up
   db.shutdown()
   interp = nil
end

main()

