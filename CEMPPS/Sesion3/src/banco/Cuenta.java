package banco;

public class Cuenta {

	private String numeroCuenta;
	private String titular;
	private double Saldo = 0;


	
	
	
	public Cuenta(String numeroCuenta, String titular, double saldo) {
		super();
		this.numeroCuenta=numeroCuenta;
		this.titular=titular;
		this.Saldo = saldo;
	}

	

	public double getSaldo() {
		return Saldo;
	}

	public void setSaldo(double saldo) {
		this.Saldo = saldo;
	}
	
	

	public String getNumeroCuenta() {
		return numeroCuenta;
	}



	public void setNumeroCuenta(String numeroCuenta) {
		this.numeroCuenta = numeroCuenta;
	}



	public String getTitular() {
		return titular;
	}



	public void setTitular(String titular) {
		this.titular = titular;
	}



	public void ingresar(int i) {
		if(i >=0)
		Saldo = Saldo+i;
		else
			System.out.println("No se pueden ingresar numeros negativos");
		
	}
	
	public void retirar(int i) {
		if(Saldo-i>=-500 && i>=0)
		Saldo = Saldo-i;
		else
			System.out.println("No tiene suficiente saldo en su cuenta o ha intentado introducir un numero positivo");
		
	}
	
	

}
