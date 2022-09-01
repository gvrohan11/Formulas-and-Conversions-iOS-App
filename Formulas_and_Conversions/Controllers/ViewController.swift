//
//  ViewController.swift
//  Formulas_and_Conversions
//
//  Created by Rohan Venkat on 8/6/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func formulasPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToFormulas", sender: self)
    }
    
    @IBAction func conversionsPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToConversions", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
