with Ada.Text_IO; -- We declare we are using the Ada.Text_IO package
use Ada.Text_IO;  -- We have access to all the procedures and functions
                  -- of the Ada.Text_IO package witout having to write
                  -- Ada.Text_IO all the time

procedure Hello3 is
begin
  Put_Line("Hello world!!!");
  New_Line;
  Put_Line("I am an Ada program with package use.");
end Hello3;
