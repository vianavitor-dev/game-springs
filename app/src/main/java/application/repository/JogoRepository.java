package application.repository;

import org.springframework.data.repository.CrudRepository;

import application.model.Jogo;

// import java.util.Optional;

public interface JogoRepository extends CrudRepository<Jogo, Long>{
    // Optional<Jogo> findBy(long id);
}
