with Text_IO;
with my_flt_IO;

procedure payroll is

  subtype NonNegFloat is Float Range 0.0 .. Float'Last;

  Tax : constant NonNegFloat := 25.0;
  Hours: NonNegFloat;
  Rate: NonNegFloat;
  Gross: NonNegFloat;
  Net: NonNegFloat;

begin
  Text_IO.Put (Item => "Enter hours worked > ");
  my_flt_IO.Get (Item => Hours);
  Text_IO.New_Line;
  Text_IO.Put (Item => "Enter hourly rate > ");
  my_flt_IO.Get (Item => Rate);
  Text_IO.New_Line;

  Gross := Hours * Rate;
  Net := Gross - Tax;

  Text_IO.Put (Item => "Gross pay is $ " );
  my_flt_IO.Put (Item => Gross, Fore => 6, Aft => 2, Exp => 0);
  Text_IO.New_Line;

  Text_IO.Put (Item => "Net pay is  $ ");
  my_flt_IO.Put (Item => Net, Fore => 6, Aft => 2, Exp => 0);
  Text_IO.New_Line;

end payroll;
