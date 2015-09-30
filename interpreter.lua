function interpret( input )
   while( true )
      print( "The input is" .. input )
      coroutine.yield()
   end
end

return coroutine.wrap( interpret )
