//
//  ViewController.swift
//  Tareas
//
//  Created by Josimar on 4/11/19.
//  Copyright © 2019 Josimar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tareas = crearTareas()
        tableView.dataSource = self
        tableView.delegate = self
    }

    @IBOutlet weak var tableView: UITableView!
    var tareas:[Tarea] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tareas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell()
        let tarea = tareas[indexPath.row]
        if tarea.importante{
            cell.textLabel?.text = "🙀\(tarea.nombre)"
        }else {
            cell.textLabel?.text = tarea.nombre
        }
        
        return cell
    }
    
    
    func crearTareas() -> [Tarea]{
        let tarea1 = Tarea()
        tarea1.nombre = "pasear al perro"
        tarea1.importante = true
        
        let tarea2 = Tarea()
        tarea2.nombre = "lavar la ropa"
        tarea2.importante = true
        
        let tarea3 = Tarea()
        tarea3.nombre = "comprar pan"
        tarea3.importante = false
        
        return [tarea1, tarea2 ,tarea3]
    }
    
    @IBAction func agregarTarea(_ sender: Any) {
        performSegue(withIdentifier: "agregarTarea", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let siguienteVC = segue.destination as! CrearTareaViewController
        siguienteVC.anteriorVC = self
    }
}

