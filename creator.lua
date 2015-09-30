require( "config" );

local driver = require( "luasql.mysql" )
local env = driver.mysql();

dspdb = assert( env:connect( DB_NAME, DB_LOGIN, DB_PASS, DB_ADDR ) )
run = true;

while( true ) do
   local input = io.read("*line")
   
end




dspdb:close()
env:close()
