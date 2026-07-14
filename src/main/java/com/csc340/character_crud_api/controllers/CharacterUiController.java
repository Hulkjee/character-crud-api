package com.csc340.character_crud_api.controllers;

import com.csc340.character_crud_api.characters.Character;
import com.csc340.character_crud_api.services.CharacterService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CharacterUiController {

    private final CharacterService characterService;

    public CharacterUiController(CharacterService characterService) {
        this.characterService = characterService;
    }

    // Display all characters
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute(
                "characters",
                characterService.getAllCharacters()
        );

        return "index";
    }

    // Display all characters at /characters
    @GetMapping("/characters")
    public String getAllCharacters(Model model) {
         model.addAttribute(
                 "characters",
                characterService.getAllCharacters()
        );

        return "index";
    }

    // Display About page
    @GetMapping("/about")
    public String about() {
        return "about";
    }

    // Display one character
    @GetMapping("/Chars/{id}")
    public String getCharById(
            @PathVariable("id") Long id,
            Model model
    ) {
        Character character = characterService.getCharacterById(id);

        if (character == null) {
            return "redirect:/";
        }

        model.addAttribute("character", character);

        return "details";
    }

    // Display new-character form
    @GetMapping("/new")
    public String newCharacterForm(Model model) {
        model.addAttribute("character", new Character());

        return "new-character-form";
    }

    // Save a new character
    @PostMapping("/create")
    public String createCharacter(Character character) {
        characterService.addCharacter(character);

        return "redirect:/";
    }

    // Display update form
    @GetMapping("/updateForm/{id}")
    public String showUpdateForm(
            @PathVariable("id") Long id,
            Model model
    ) {
        Character character = characterService.getCharacterById(id);

        if (character == null) {
            return "redirect:/";
        }

        model.addAttribute("character", character);

        return "update-character-form";
    }

    // Save updated character
    @PostMapping("/update/{id}")
    public String updateCharacter(
            @PathVariable("id") Long id,
            Character character
    ) {
        characterService.updateCharacter(id, character);

        return "redirect:/Chars/" + id;
    }

    // Delete a character
    @GetMapping("/delete/{id}")
    public String deleteCharacter(@PathVariable("id") Long id) {
        characterService.deleteCharacter(id);

        return "redirect:/";
    }
}