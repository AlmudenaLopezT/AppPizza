//
//  VistaEtapa3.swift
//  Pizza
//
//  Created by Almudena on 4/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import UIKit

class VistaEtapa3: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    //variables para guardar el tamaño y la masa para mostrar en confirmacion
    var mas = ""
    var mas2 = ""
    var tam = ""
    var tam2 = ""
    
    //variable envio queso
    var envio_queso = ""
    
    var datos_queso:[String]=[]
   
    @IBOutlet weak var queso: UIPickerView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Conexion Datos
        self.queso.delegate=self
        self.queso.dataSource=self
        
        //Datos
        datos_queso=["Mozzarella","Chedar","Parmesano","Sin queso"]
        
        //Guardar masa y tamaño
        tam2 = tam
        mas2 = mas
        //Comprobacion por consola que funciona
        print(tam2)
        print(mas2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datos_queso.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        envio_queso = datos_queso[row]
        return datos_queso[row]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! VistaEtapa4
        destino.mas = mas2
        destino.tam = tam2
        destino.que = envio_queso
        navigationItem.title="Editar Queso"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
