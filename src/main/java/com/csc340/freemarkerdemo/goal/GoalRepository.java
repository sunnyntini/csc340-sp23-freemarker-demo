
package com.csc340.freemarkerdemo.goal;

import com.csc340.freemarkerdemo.task.*;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author sentini
 */
public interface GoalRepository extends JpaRepository<Goal, Long>{
    
}
