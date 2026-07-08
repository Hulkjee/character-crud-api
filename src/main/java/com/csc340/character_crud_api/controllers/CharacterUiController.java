package com.csc340.character_crud_api.controllers;

import com.csc340.character_crud_api.characters.Character;
import com.csc340.character_crud_api.services.CharacterService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class CharacterUiController {

    private final CharacterService characterService;

    public CharacterUiController(CharacterService characterService) {
        this.characterService = characterService;
    }

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("characters", characterService.getAllCharacters());
        return "index";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping("/Chars/{id}")
    public String getCharById(@PathVariable("id") Long id, Model model) {
        Character character = characterService.getCharacterById(id);
        model.addAttribute("character", character);
        return "details";
    }

    @GetMapping("/new")
    public String newCharacterForm(Model model) {
        model.addAttribute("character", new Character());
        return "new-character-form";
    }
}