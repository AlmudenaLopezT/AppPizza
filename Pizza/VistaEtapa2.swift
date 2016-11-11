//
//  VistaEtapa2.swift
//  Pizza
//
//  Created by Almudena on 4/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import UIKit

class VistaEtapa2: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {

    //variables para guardar el tamaño enviado por ViewController, para mostrar en confirmacion
    var tam = ""
    var tam2 = ""
    
    //variable envio masa
    var envio_masa = ""
    
    var datos_masa:[String] = []
    @IBOutlet weak var masa: UIPickerView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Conexion Datos
        self.masa.delegate=self
        self.masa.dataSource=self
        
        //Guardar parametro ya elegido
        masa.selectRow(<#T##row: Int##Int#>, inComponent: <#T##Int#>, animated: <#T##Bool#>)
        //Datos
        datos_masa=["Delgada","Crujiente","Gruesa"]
        
        //Guardar tamaño para luego mostrarlo en confirmacion
        tam2 = tam
        //Comprobacion por consola que se envia correctamente
        print(tam2)
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datos_masa.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        envio_masa = datos_masa[row]
        return datos_masa[row]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! VistaEtapa3
        destino.mas = envio_masa
        destino.tam = tam2
        navigationItem.title="Editar Masa"
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
