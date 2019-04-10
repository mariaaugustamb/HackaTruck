//
//  novaViewController.swift
//  storyboard2
//
//  Created by student on 10/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class novaViewController: UIViewController {

    @IBOutlet weak var corLabel: UILabel!
    
    var cor: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        corLabel.text = cor
        
        if cor != nil{
            
            switch cor!.lowercased() {
                
                case "verde":
                self.view.backgroundColor = UIColor.green
                
                case"rosa":
                self.view.backgroundColor = UIColor.magenta
                
                case "prata":
                self.view.backgroundColor = UIColor.lightGray
                
                case "ciano":
                self.view.backgroundColor = UIColor.cyan
                
                case "marelo":
                self.view.backgroundColor = UIColor.yellow
                s
                
            default:
                self.view.backgroundColor = UIColor.black
                
                
            }
        }
        
    }

    

}
