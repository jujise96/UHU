package test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import banco.Cuenta;

class CuentaTest {
	
	static Cuenta CuentaCliente;
	static Cuenta CuentaCliente1;
	static Cuenta CuentaCliente2;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		
			CuentaCliente = new Cuenta("prueba", "Manuel", 0);
			CuentaCliente1 = new Cuenta("12345", "Manuel", 50);
			CuentaCliente2 = new Cuenta("67890", "Javier", 0);
		
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
		CuentaCliente.setSaldo(50);
		CuentaCliente.setSaldo(0);
		
	}

	@AfterEach
	void tearDown() throws Exception {
	}
	
	@Test
	void testIngresar() {
		CuentaCliente.ingresar(1000);
		assertEquals(CuentaCliente.getSaldo(),1000);
	}
	
	@Test
	void testIngresarNumeroMenor0() {
		CuentaCliente.ingresar(-1000);
		assertEquals(CuentaCliente.getSaldo(),0);
	}
	
	
	@Test
	void testRetirar() {
		CuentaCliente.setSaldo(1000);
		CuentaCliente.retirar(1000);
		assertEquals(CuentaCliente.getSaldo(),0);
	}
	
	@Test
	void testRetirarMasSaldodelquehay() {
		CuentaCliente.retirar(-1000);
		assertEquals(CuentaCliente.getSaldo(),0);
	}
	
	@Test
	void testRetirarNumeroMayor0() {
		CuentaCliente.retirar(1000);
		assertEquals(CuentaCliente.getSaldo(),0);
	}
	
	@Test
	void test14() {
		CuentaCliente1.retirar(200);
		CuentaCliente2.retirar(350);
		CuentaCliente1.ingresar(100);
		CuentaCliente2.retirar(200);
		CuentaCliente2.retirar(150);
		CuentaCliente1.retirar(200);
		CuentaCliente2.ingresar(50);
		CuentaCliente2.retirar(100);
		assertEquals(CuentaCliente1.getSaldo(),-250);
		assertEquals(CuentaCliente2.getSaldo(),-450);
	}

}
