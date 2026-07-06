package com.csc340.character_crud_api.services;

import com.csc340.character_crud_api.characters.Character;
import com.csc340.character_crud_api.repositories.CharacterRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CharacterService {

    private final CharacterRepository characterRepository;

    public CharacterService(CharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    public List<Character> getAllCharacters() {
        return characterRepository.findAll();
    }

    public Character getCharacterById(Long id) {
        return characterRepository.findById(id).orElse(null);
    }

    public Character addCharacter(Character character) {
        return characterRepository.save(character);
    }

    public Character updateCharacter(Long id, Character updatedCharacter) {
        Character existingCharacter = getCharacterById(id);

        if (existingCharacter != null) {
            existingCharacter.setName(updatedCharacter.getName());
            existingCharacter.setDescription(updatedCharacter.getDescription());
            existingCharacter.setHouse(updatedCharacter.getHouse());
            existingCharacter.setRole(updatedCharacter.getRole());

            return characterRepository.save(existingCharacter);
        }

        return null;
    }

    public boolean deleteCharacter(Long id) {
        Character existingCharacter = getCharacterById(id);

        if (existingCharacter != null) {
            characterRepository.deleteById(id);
            return true;
        }

        return false;
    }

    public List<Character> getCharactersByHouse(String house) {
        return characterRepository.findByHouse(house);
    }

    public List<Character> searchCharactersByName(String name) {
        return characterRepository.findByNameContainingIgnoreCase(name);
    }
}