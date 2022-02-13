//
//  ViewController.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 13/02/22.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {
    
    //MARK: - IBOutlets
    
    
    @IBOutlet var filmeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmeTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "filme \(indexPath.row)"

        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       
        let headerView = 
    }
}
