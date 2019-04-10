//
//  azulViewController.swift
//  storyboard2
//
//  Created by student on 10/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class azulViewController: UIViewController {

    @IBOutlet weak var corTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "corSegueIdentifier"{
            
            if let novaView = segue.destination as? novaViewController{
                
                novaView.cor = corTextField.text
                
            }
        
        }
        
    }
        
}
