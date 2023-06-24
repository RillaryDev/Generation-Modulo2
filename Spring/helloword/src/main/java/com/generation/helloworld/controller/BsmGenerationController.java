package com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bsm")

public class BsmGenerationController {
	
	@GetMapping
	public String bsm() {
		return "\nBSM’s da Generation Brasil: "
				+ "\nProatividade"
				+ "\nMentalidade de Crescimento"
				+ "\nOrientação ao Detalhe"
				+ "\nResponsabilidade Pessoal"
				+ "\nComunicação"
				+ "\nPersistência"
				+ "\nOrientação ao Futuro"
				+ "\nTrabalho em Equipe";
		
	}
}
