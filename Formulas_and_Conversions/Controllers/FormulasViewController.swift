//
//  ViewController.swift
//  Formulas_and_Conversions
//
//  Created by Rohan Venkat on 6/25/21.
//

import UIKit

class FormulasViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
    
    /*
    @IBAction func calcPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    @IBAction func chemPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    @IBAction func physicsPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    @IBAction func statsPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    */

    @IBAction func calcPressed2(_ sender: UIButton) {
    }
    
    
    @IBAction func chemPressed2(_ sender: UIButton) {
    }
    
    @IBAction func physicsPressed2(_ sender: UIButton) {
    }
    
    @IBAction func statsPressed2(_ sender: UIButton) {
    }
    
}

