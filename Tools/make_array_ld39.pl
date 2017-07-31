open ARRAY,">", "array_txt.txt";

for ($x = 2; $x <= 29; $x++)
{
	for ($y = 2; $y <= 21; $y++)
	{
		$type = rand(100);
		if ($type <= 1)
		{
			print ARRAY "object[$x, $y] = obj_energy;\n";
		}
		elsif ($type >= 70)
		{
			print ARRAY "object[$x, $y] = obj_wall;\n";
		}
		elsif ($type >= 65 and $type < 70)
		{
			print ARRAY "object[$x, $y] = obj_mine;\n";
		}
		else
		{
			print ARRAY "object[$x, $y] = noone;\n";
		}
	}
}
close ARRAY;


