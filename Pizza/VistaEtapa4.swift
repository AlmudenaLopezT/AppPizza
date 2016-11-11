//
//  VistaEtapa4.swift
//  Pizza
//
//  Created by Almudena on 4/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import UIKit

class VistaEtapa4: UIViewController {

    //Variables guardan tamaño,masa,queso para mostrar en confirmacion
    var mas = ""
    var mas2 = ""
    var tam = ""
    var tam2 = ""
    var que = ""
    var que2 = ""

    //Variable enviar diccionario ingredientes
    var envio_ingredientes = [String:Bool]()
    
    var ingredientes=["Jamon":false,"Pepperoni":false,"Pavo":false,"Salchicha":false,"Aceituna":false,"Cebolla":false,"Pimiento":false,"Piña":false,"Anchoa":false]
    
    
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pepperoni: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var pim: UISwitch!
    @IBOutlet weak var pinya: UISwitch!
    @IBOutlet weak var anchoa: UISwitch!
    
    @IBAction func jamonClick(_ sender: Any) {
        if jamon.isOn{
            ingredientes["Jamon"] = true
            print("Jamon TRUE")
            
        }else{
            ingredientes["Jamon"] = false
            print("Jamon FALSE")
        }
    }

    @IBAction func pepperoni(_ sender: Any) {
        if pepperoni.isOn{
            ingredientes["Pepperoni"] = true
            print("Pepperoni TRUE")
        }else{
            ingredientes["Pepperoni"] = false
            print("PepperoniFALSE")
        }
    }
    
    @IBAction func pavo(_ sender: Any) {
        if pavo.isOn{
            ingredientes["Pavo"] = true
            print("Pavo TRUE")
        }else{
            ingredientes["Pavo"] = false
            print("Pavo FALSE")
        }
    }
    
    @IBAction func salchicha(_ sender: Any) {
        if salchicha.isOn{
            ingredientes["Salchicha"] = true
            print("Salchicha TRUE")
        }else{
            ingredientes["Salchicha"] = false
            print("Salchicha FALSE")
        }
    }
    
    @IBAction func aceituna(_ sender: Any) {
        if aceituna.isOn{
            ingredientes["Aceituna"] = true
            print("Aceituna TRUE")
        }else{
            ingredientes["Aceituna"] = false
            print("Aceituna FALSE")
        }
    }
    @IBAction func cebolla(_ sender: Any) {
        if cebolla.isOn{
            ingredientes["Cebolla"] = true
            print("Cebolla TRUE")
        }else{
            ingredientes["Cebolla"] = false
            print("Cebolla FALSE")
        }
    }

    @IBAction func pim(_ sender: Any) {
        if pim.isOn{
            ingredientes["Pimiento"] = true
            print("Pimiento TRUE")
        }else{
            ingredientes["Pimiento"] = false
            print("Pimiento FALSE")
        }
    }

    @IBAction func pinya(_ sender: Any) {
        if pinya.isOn{
            ingredientes["Piña"] = true
            print("Piña TRUE")
        }else{
            ingredientes["Piña"] = false
            print("Piña FALSE")
        }
    }
    @IBAction func anchoa(_ sender: Any) {
        if anchoa.isOn{
            ingredientes["Anchoa"] = true
            print("Anchoa TRUE")
        }else{
            ingredientes["Anchoa"] = false
            print("Anchoa FALSE")
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        jamon.setOn(false, animated: true)
        pepperoni.setOn(false, animated: true)
        pavo.setOn(false, animated: true)
        salchicha.setOn(false, animated: true)
        aceituna.setOn(false, animated: true)
        cebolla.setOn(false, animated: true)
        pim.setOn(false, animated: true)
        pinya.setOn(false, animated: true)
        anchoa.setOn(false, animated: true)

        

        //Guardar tamaño,masa,queso recibidos
        mas2 = mas
        tam2 = tam
        que2 = que
        
        //Comprobacion por consola que se han recibido correctamente los datos
        print(tam2)
        print(mas2)
        print(que2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! VistaEtapa5
        destino.mas = mas2
        destino.tam = tam2
        destino.que = que2
        envio_ingredientes = ingredientes
        destino.ingre = envio_ingredientes
        navigationItem.title="Editar Ingre"
        
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
