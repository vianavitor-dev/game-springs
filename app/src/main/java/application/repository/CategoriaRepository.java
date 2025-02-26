package application.repository;

import org.springframework.data.repository.CrudRepository;
import application.model.Categoria;
import java.util.Optional;

public interface CategoriaRepository extends CrudRepository<Categoria, Long>{
    Optional<Categoria> findBy(long id);
}
