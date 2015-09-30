require( "states" )

local state = STATE_MENU
local prompt = {
                  [1] = "Commands: Open or New: "
               }


function interpret()
   local input = nil

   print( "Interpreter thread booting up." )

   while( true ) do
      input = coroutine.yield()
      if( input ~= nil and input ~= "" ) then
         print( "The input is a " .. input )
      end
      io.write( prompt[state] )
   end
end

return coroutine.wrap( interpret )
