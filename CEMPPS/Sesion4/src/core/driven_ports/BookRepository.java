package core.driven_ports;

import core.domain.Book;

public interface BookRepository {

	Book findById(Long id);

}
