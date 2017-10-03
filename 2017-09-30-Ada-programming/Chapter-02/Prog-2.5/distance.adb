with Text_IO;
with My_int_IO;

procedure distance is

  How_Long: Natural;
  How_Fast: Natural;
  How_Far: Natural;

begin

  -- Prompt user for hours and average speed
  Text_IO.Put (Item => "How many hours will you be driving?");
  My_int_IO.Get (Item => How_Long);
  Text_IO.Put (Item => "At what average speed (miles per hour)? ");
  My_int_IO.Get (Item => How_Fast);

  -- compute distance driven
  How_Far := How_Fast * How_long;

  -- Display results
  Text_IO.Put (Item => "You will travel about ");
  My_Int_IO.Put (Item => How_Far);
  Text_IO.Put (Item => " miles");
  Text_IO.New_Line;  

end distance;
