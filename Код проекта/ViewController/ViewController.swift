//
//  ViewController.swift
//  ПередачаДанныхИПеремещениеНаРазныхЭкранахПриложения
//
//  Created by Игорь Островский on 30.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginTextField:UITextField!
    @IBOutlet weak var passwordTextField:UITextField!
    @IBOutlet weak var unwindLabel:UILabel!
    @IBAction func sendPress(button:UIButton){
    performSegue(withIdentifier: "segueOne", sender: nil)
    }
    @IBAction func unwindSegue(segue:UIStoryboardSegue){
        guard segue.identifier == "unwindSegue" else {return}
        guard let svc = segue.source as? SecondViewController else {return}
        self.unwindLabel.text = svc.label.text
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else{return}
        dvc.login = loginTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

