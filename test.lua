local driver = require( "luasql.mysql" )
local env = driver.mysql();

env:close();
