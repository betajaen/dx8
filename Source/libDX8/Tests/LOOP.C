up()
{
	while(TRUE)
	{
		asm "adq x, 1";
	}
}

down()
{
	while(TRUE)
	{
		asm "sbq y, 2";
	}
}
