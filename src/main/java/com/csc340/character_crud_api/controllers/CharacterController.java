package com.csc340.character_crud_api.controllers;

import com.csc340.character_crud_api.characters.Character;
import com.csc340.character_crud_api.services.CharacterService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class CharacterController {

    private final CharacterService characterService;

    public CharacterController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping
    public ResponseEntity<List<Character>> getAllCharacters() {
        return ResponseEntity.ok(characterService.getAllCharacters());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Character> getCharacterById(@PathVariable Long id) {
        Character character = characterService.getCharacterById(id);

        if (character != null) {
            return ResponseEntity.ok(character);
        }

        return ResponseEntity.notFound().build();
    }

    @PostMapping
    public ResponseEntity<Character> addCharacter(@RequestBody Character character) {
        Character newCharacter = characterService.addCharacter(character);
        return ResponseEntity.ok(newCharacter);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Character> updateCharacter(@PathVariable Long id, @RequestBody Character updatedCharacter) {
        Character character = characterService.updateCharacter(id, updatedCharacter);

        if (character != null) {
            return ResponseEntity.ok(character);
        }

        return ResponseEntity.notFound().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable Long id) {
        boolean deleted = characterService.deleteCharacter(id);

        if (deleted) {
            return ResponseEntity.noContent().build();
        }

        return ResponseEntity.notFound().build();
    }

    @GetMapping("/house")
    public ResponseEntity<List<Character>> getCharactersByHouse(@RequestParam String house) {
        return ResponseEntity.ok(characterService.getCharactersByHouse(house));
    }

    @GetMapping("/search")
    public ResponseEntity<List<Character>> searchCharactersByName(@RequestParam String name) {
        return ResponseEntity.ok(characterService.searchCharactersByName(name));
    }
}
