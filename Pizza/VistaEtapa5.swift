//
//  VistaEtapa5.swift
//  Pizza
//
//  Created by Almudena on 4/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import UIKit

class VistaEtapa5: UIViewController {

    //Variables guardan tamaño,masa,queso,ingredientes
    var tam = ""
    var mas = ""
    var que = ""
    var ingre = [String:Bool] ()
    var ingre2 = [String:Bool]()
    var resultado = 0

    @IBOutlet weak var tamanyo: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var textoIngredientes: UILabel!
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

        self.tamanyo.text = tam
        self.masa.text = mas
        self.queso.text = que
        ingre2 = ingre
        //Comprobacion por consola que funcione el recibo de datos
        resultado = mostrarIngredientes(ingre2: ingre2)
        self.textoIngredientes.text="\(resultado) ingredientes seleccionados"



    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Contamos los ingredientes seleccionados
   func mostrarIngredientes(ingre2:[String:Bool]) -> Int{
        for i in ingre2.keys{
            if(ingre2[i] == true){
                resultado+=1
            }
        }
        return resultado
    }

    //Verifica que ingredientes tenga al menos 1 seleccionado (demas variables imposible que no se seleccione)
    @IBAction func oidoCocina(_ sender: Any) {
        let numIngredientes = mostrarIngredientes(ingre2: ingre2)
        if(numIngredientes == 0){
            error()
        }else{
            oidoCocinaOK()
        }
    }
    
    //Si hay ingredientes (unico que puede que no se seleccione nada) salta este mensaje
    @IBAction func oidoCocinaOK (){
        let alert = UIAlertController(title: "Oido Cocina", message: "Su pizza va de camino al horno", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.performSegue(withIdentifier: "unwindToMenu", sender: self)
        self.present(alert, animated: true, completion: nil)

    }
    //En el caso que no haya ingredientes salta este error
    @IBAction func error() {
        let error = UIAlertController(title: "ERROR", message: "Debe añadir al menos un ingrediente", preferredStyle: UIAlertControllerStyle.alert)
        error.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(error, animated: true, completion: nil)
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
