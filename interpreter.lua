function interpret()
   local input

   print( "Interpreter thread booting up." )
   while( true ) do
      input = coroutine.yield()
      print( "The input is a " .. input )
   end
end

return coroutine.wrap( interpret )
