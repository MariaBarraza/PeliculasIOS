//
//  ViewController.swift
//  Pelicula
//
//  Created by Alumno on 9/18/19.
//  Copyright © 2019 fer. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITabBarDelegate,UITableViewDataSource {

    var peliculas : [Pelicula] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        peliculas.append(Pelicula(titulo: "La risa en vacaciones 3", director: "Director1", año: 1992))
        peliculas.append(Pelicula(titulo: "Pepito y Chabelo contra los monstruos", director: "Director2", año: 1978))
        peliculas.append(Pelicula(titulo: "Pelicula 3", director: "Director3", año: 2000))
    }

    //Numeros de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //numero de celdas
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    //Contenido de cada seccion
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as? CeldaPeliculaController
        
        celda?.lblPelicula.text = peliculas[indexPath.row].titulo
        celda?.lblDirector.text = peliculas[indexPath.row].director
        celda?.lblAño.text = "\(peliculas[indexPath.row].año)"
        return celda!
    }
}

