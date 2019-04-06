//
//  Podcast.swift
//  Podcast
//
//  Created by student on 05/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Podcast{
    
    let nome: String
    let foto: String
    
    init(nome: String, foto: String){
        self.nome = nome
        self.foto = foto
        
    }
    
}

class PodcastDAO{
    
    static func getPodcast() -> [Podcast]{
        
        return [
            
            Podcast (nome: "99 vidas",foto: "99vidas"),
            Podcast (nome: "Canal 42", foto: "canal42"),
            Podcast (nome: "Macmagazine no ar (mm)", foto: "mm"),
            Podcast (nome: "Não ouvo", foto: "naoouvo"),
            Podcast (nome: "Nerdcast", foto: "nerdcast"),
            Podcast (nome: "O Melhor Podcast do Brasil", foto: "ompdb"),
            Podcast (nome: "Rapaduracast", foto: "rapaduracast"),
            Podcast (nome: "Reloading", foto: "reloading"),
            Podcast (nome: "Scicast", foto: "scicast"),
            
        ]
        
    }
    
}
