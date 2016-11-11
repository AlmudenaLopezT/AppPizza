//
//  ViewController.swift
//  Pizza
//
//  Created by Almudena on 4/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{


    var datos_grandaria:[String]=[]
    @IBOutlet weak var grandaria: UIPickerView!
    //variable para envio tamaño
    var envio_grand = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Conexion Datos
        self.grandaria.delegate=self
        self.grandaria.dataSource=self
        
        //Datos
        datos_grandaria = ["Chica","Mediana","Grande"]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datos_grandaria.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        envio_grand = datos_grandaria[row]
        return datos_grandaria[row]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! VistaEtapa2
        destino.tam = envio_grand
        navigationItem.title = "Editar Tamaño"

        
        
    }


}

