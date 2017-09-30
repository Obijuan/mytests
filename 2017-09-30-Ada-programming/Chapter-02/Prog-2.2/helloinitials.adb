with Text_IO;

procedure HelloInitials is

  Initial1 : Character;
  Initial2 : Character;

begin
  Text_IO.Put (Item => "Enter your two initials> " );
  Text_IO.Get (Item => Initial1);
  Text_IO.Get (Item => Initial2);
  Text_IO.New_Line;

  Text_IO.Put (Item => "Hello ");
  Text_IO.Put (Item => Initial1);
  Text_IO.Put (Item => Initial2);
  Text_IO.Put (Item => ". We hope you enjoy studying Ada!");
  Text_IO.New_Line;
end HelloInitials;
