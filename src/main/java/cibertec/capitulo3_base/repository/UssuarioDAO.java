package cibertec.capitulo3_base.repository;

import cibertec.capitulo3_base.dto.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UssuarioDAO extends JpaRepository<User, String>{
    
}
