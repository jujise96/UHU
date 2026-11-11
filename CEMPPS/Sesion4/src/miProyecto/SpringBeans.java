package miProyecto;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import core.driven_ports.BookRepository;
import core.driver_ports.BookService;
import core.driver_ports.BookServiceImpl;

@Configuration
public class SpringBeans {
	@Bean
	BookService bookService(final BookRepository bookRepository) {
		return new BookServiceImpl(bookRepository);
	}
}
