//
//  Pelicula.swift
//  Pelicula
//
//  Created by Alumno on 9/18/19.
//  Copyright © 2019 fer. All rights reserved.
//

import Foundation

class Pelicula {
    var titulo : String
    var director : String
    var año : Int
    
    init(titulo: String, director: String, año: Int) {
        self.titulo = titulo;
        self.director = director;
        self.año = año;

    }
}
