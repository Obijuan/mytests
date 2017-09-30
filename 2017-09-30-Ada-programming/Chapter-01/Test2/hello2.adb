with Ada.Text_IO;

procedure Hello2 is
begin
  Ada.Text_IO.Put_Line("Hello world!");
  Ada.Text_IO.Put_Line("this is line 2");
  Ada.Text_IO.Put (Item => "hello");
  Ada.text_IO.Put (Item => "hello2"); -- No new line added
end Hello2;
