//
//  TareaCompletadaViewController.swift
//  Tareas
//
//  Created by Josimar on 4/12/19.
//  Copyright © 2019 Josimar. All rights reserved.
//

import UIKit

class TareaCompletadaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if tarea.importante {
            tareaLabel.text = "🙀\(tarea.nombre)"
        } else {
            tareaLabel.text = tarea.nombre
        }
    }
    
    var tarea = Tarea()
    var anteriorVC = ViewController()

    @IBOutlet weak var tareaLabel: UILabel!
    @IBAction func completarTarea(_ sender: Any) {
        anteriorVC.tareas.remove(at: anteriorVC.indexSeleccionado)
        anteriorVC.tableView.reloadData()
    }
    
}
