#Use this perl script to generate random arrays for static levels

open ARRAY,">", "array_txt.txt";

for ($x = 2; $x <= 30; $x++)
{
	for ($y = 2; $y <= 22; $y++)
	{
		$type = rand(100);
		if ($type <= 1)
		{
			print ARRAY "object[$x, $y] = obj_energy;\n";
		}
		elsif ($type >= 60)
		{
			print ARRAY "object[$x, $y] = obj_wall;\n";
		}
		else
		{
			print ARRAY "object[$x, $y] = noone;\n";
		}
	}
}
close ARRAY;


