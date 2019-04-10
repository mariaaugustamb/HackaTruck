//
//  Musica.swift
//  Projeto Musicas
//
//  Created by student on 09/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Musica{
    
    var nome: String?
    var autor: String
    var imagem: String
    var album: String
    
    init(nome: String, autor:String, imagem: String, album: String){
        self.nome = nome
        self.autor = autor
        self.imagem = imagem
        self.album = album
        
    }
}


class MusicaDAO{
    
    static func getMusicas() -> [Musica]{
        return [
            Musica(nome: "Shape of you", autor: "Ed Sheeran", imagem: "divide", album:"Divide"),
            Musica(nome: "wildest Dreams", autor: "Taylor Swift", imagem: "1989", album: "1989")
        
        ]
    }
}
