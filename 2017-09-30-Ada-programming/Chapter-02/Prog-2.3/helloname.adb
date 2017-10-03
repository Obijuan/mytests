with Text_IO;
procedure Helloname is
  First_name: String(1..10);

begin
  Text_IO.Put (Item => "Enter your first name, exactly 10 letters");
  Text_IO.New_Line;
  Text_IO.Put (Item => "Add spaces at the end if it's shorter > ");
  Text_IO.Get (Item => First_name);
  Text_IO.New_Line;

  Text_IO.Put(Item => "Hello ");
  Text_IO.Put(Item => First_name);
  Text_IO.Put(Item => ". We hope you enjoy studying Ada!");
  Text_IO.New_Line;

end helloname;
