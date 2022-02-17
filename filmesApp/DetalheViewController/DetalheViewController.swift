//
//  DetalheViewController.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 15/02/22.
//

import UIKit
import Foundation


class DetalheViewController: UIViewController {
   
    var filmeSelecionado : Movie!
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var tituloFilmeLabel: UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var voteLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
