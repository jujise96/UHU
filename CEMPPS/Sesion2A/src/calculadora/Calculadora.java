package calculadora;

public class Calculadora {
	
	public static int suma (int Valor1, int Valor2)
	{
		return (Valor1+Valor2);
	}
	
	public static int resta(int Valor1, int Valor2)
	{
		return(Valor1-Valor2);
	}
	
	public static int multiplica(int Valor1, int Valor2)
	{
		return(Valor1*Valor2);
	}
	
	public static int divide(int Valor1, int Valor2)
	{
		if(Valor2 == 0)
			return -1;
		else
			return (Valor1/Valor2);
	}

}
