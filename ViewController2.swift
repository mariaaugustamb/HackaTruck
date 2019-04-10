//
//  ViewController2.swift
//  Projeto Musicas
//
//  Created by student on 09/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet weak var nomeMusicaUILabel: UILabel!
    
    @IBOutlet weak var nomeAutorUILabel: UILabel!
    
    @IBOutlet weak var imagemAlbumUIImageView: UIImageView!
    
    @IBOutlet weak var nomeAlbumUILabel: UILabel!
    
    
    var nomeMusica: String?
    var nomeAlbum: String?
    var nomeAutor: String?
    var imagemAlbum: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nomeMusicaUILabel.text = nomeMusica
        
        nomeAutorUILabel.text = nomeAutor
        
        imagemAlbumUIImageView.image = UIImage(named: (imagemAlbum)!)
        
        nomeAlbumUILabel.text = nomeAlbum
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
