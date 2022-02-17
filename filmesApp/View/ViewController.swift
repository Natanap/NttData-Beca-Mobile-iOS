//
//  ViewController.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 13/02/22.
//

import UIKit
import Foundation

class ViewController: UIViewController  {

    //MARK: - IBOutlets
    @IBOutlet weak var filmesTableView: UITableView!
    
    var viewModel = MovieViewModel()
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraTableView()
        loadPopularMoviesData()
    }
    
    private func loadPopularMoviesData(){
        viewModel.fetchPopularMoviesData{ [weak self] in
            self?.filmesTableView.reloadData()
            
        }
    }
    
    func configuraTableView(){
        filmesTableView.register(UINib(nibName: "FilmesInicialTableViewCell", bundle: nil), forCellReuseIdentifier: "FilmesInicialTableViewCell")
        filmesTableView.dataSource = self
        filmesTableView.delegate = self
        filmesTableView.reloadData()

    }
    
}
    
    
// MARK: - Extension

extension ViewController: UITableViewDelegate , UITableViewDataSource {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let filmeSelecionado = viewModel.popularMovies[indexPath.row]
        print(filmeSelecionado)

        let detalheController = DetalheViewController(nibName: "DetalheViewController", bundle: nil)
        
        navigationController?.pushViewController(detalheController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return InicioTableViewHeader()
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 120
    }
    
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  viewModel.numberOfRowsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FilmesInicialTableViewCell") as? FilmesInicialTableViewCell else {
            fatalError("error") }
        
          cell.setCellWithValuesOf(viewModel.popularMovies[indexPath.row])
        
        
         return cell
    }
}

