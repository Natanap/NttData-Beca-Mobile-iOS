//
//  ViewController.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 13/02/22.
//

import UIKit
import Alamofire
import Foundation

class ViewController: UIViewController , UITableViewDataSource {
    
    //MARK: - IBOutlets
    
    
    @IBOutlet weak var filmesTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraTableView()
        func getRequest(_ url: URL){
            
              let resultado = ""
            
              if(resultado != nil) {
                  //O resultado aqui vem como Opcional
                  print("Sua requisicao foi realizada com sucesso: \n \(resultado)")
              } else {
                  print("A requisicao nao funcionou")
              }

        }
        
    }
    
    
    func configuraTableView(){
        filmesTableView.register(UINib(nibName: "FilmesInicialTableViewCell", bundle: nil), forCellReuseIdentifier: "FilmesInicialTableViewCell")
        filmesTableView.dataSource = self
        filmesTableView.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let celulaFilme = tableView.dequeueReusableCell(withIdentifier: "FilmesInicialTableViewCell") as? FilmesInicialTableViewCell else {
            fatalError("error")
            
        }
            return celulaFilme
    }
    

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detalheController = DetalheViewController(nibName: "DetalheViewController", bundle: nil)

        navigationController?.pushViewController(detalheController, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let headerView = Bundle.main.loadNibNamed("InicioTableViewHeader", owner: self, options: nil)?.first as? InicioTableViewHeader

        return headerView
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}

