with Text_IO;
with My_flt_IO;

procedure metricconversion is

-- Converts square meters to square yards

  MetersToYards : CONSTANT Float := 1.196;
  SquareMeters : Float;
  SquareYards: Float;

begin

  -- Read the fabric size in square Meter
  Text_IO.Put (Item => "Enter the fabric size in square meters > ");
  My_Flt_IO.Get (Item => SquareMeters);

  -- Converts the fabric size to square yards
  SquareYards := MetersToYards * SquareMeters;

  --Display the fabric size in square yards
  Text_IO.Put (Item => "The fabric size in square yards is ");
  My_Flt_IO.Put (Item => SquareYards);

end metricconversion;
