//
//  TableViewController1.swift
//  Projeto Musicas
//
//  Created by student on 09/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class TableViewController1: UITableViewController {

    var musicas = [Musica]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.musicas = MusicaDAO.getMusicas()
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return musicas.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicaCell", for: indexPath)
        
        if let musicaCell = cell as? TableViewCell1{
            
            let musica = self.musicas[indexPath.row]
            musicaCell.nomeMusicaUILabel.text = musica.nome
            musicaCell.nomeArtistaUILabel.text = musica.autor
            
            
        }
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "maisSobreMusica", let destination = segue.destination as? ViewController2, let index = tableView.indexPathForSelectedRow?.row {
           
            let music = self.musicas[index]
            
            destination.nomeMusica = music.nome
            
            destination.nomeAlbum = music.album
            
            destination.nomeAutor = music.autor
            
            destination.imagemAlbum = music.imagem
            
        }
        
            
    
    
    }
    

}
