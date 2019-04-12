//
//  CrearTareaViewController.swift
//  Tareas
//
//  Created by Josimar on 4/11/19.
//  Copyright © 2019 Josimar. All rights reserved.
//

import UIKit

class CrearTareaViewController: UIViewController {
    
    
    @IBOutlet weak var txtNombreTarea: UITextField!
    @IBOutlet weak var swImportante: UISwitch!
    
//    var anteriorVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func agregar(_ sender: Any) {
//        let tarea = Tarea()
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let tarea = Tarea(context: context
        )
        tarea.nombre = txtNombreTarea.text!
        tarea.importante = swImportante.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
//        anteriorVC.tareas.append(tarea)
//        anteriorVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
}
