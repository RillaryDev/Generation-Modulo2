package com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/objetivos")

public class ObjetivosController {
	@GetMapping
	public String objetivos() {
		return "\nObjetivos de apredizagem da semana: "
				+ "\nResponsabilidade Pessoal"
				+ "\nOrientação ao Detalhe"
				+ "\nOrientação ao Futuro"
				+ "\nTrabalho em Equipe";
		
	}
}
