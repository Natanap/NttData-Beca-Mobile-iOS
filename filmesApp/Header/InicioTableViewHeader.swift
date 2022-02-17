//
//  InicioTableViewHeader.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 16/02/22.
//

import Foundation
import UIKit

class InicioTableViewHeader: UITableViewHeaderFooterView {
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setup()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    func setup (){
        let label = UILabel()
        label.text = "Filmes \nDestaques da semana"
        label.numberOfLines = 2;
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.backgroundColor = UIColor(red: 0.131, green: 0.16, blue: 0.16, alpha: 1)
        
        label.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
