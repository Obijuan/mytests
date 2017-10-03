with Text_IO;
with My_Flt_IO;

procedure inchtocm is

  cm_per_inch : CONSTANT Float := 2.54;
  inches      : Float;
  centimeters : Float;

begin
  Text_IO.Put (Item => "Enter a length in inches> ");
  My_Flt_IO.Get (Item => Inches);

  Centimeters := cm_per_inch * inches;

  Text_IO.Put (Item => "That equals ");
  My_Flt_IO.Put (Item => centimeters);
  Text_IO.Put (Item => " centimeters");
  Text_IO.New_Line;
end inchtocm;
