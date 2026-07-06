package com.csc340.character_crud_api.repositories;

import com.csc340.character_crud_api.characters.Character;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface CharacterRepository extends JpaRepository<Character, Long> {

    List<Character> findByHouse(String house);

    List<Character> findByNameContainingIgnoreCase(String name);
}