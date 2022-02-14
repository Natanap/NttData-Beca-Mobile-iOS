//
//  FilmesAPI.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 14/02/22.
//

import Foundation
import AlamofireImage
import Alamofire

class FilmesAPI: NSObject{
    let API_KEY = "b11f9bc81c43be98fb8a1155d4efcced"

func recuperaFilmes() {
    Alamofire.request("https://api.themoviedb.org/3/trending/movie/week?api_key=b11f9bc81c43be98fb8a1155d4efcced&language=pt-BR", method: .get).responseJSON { (response) in
        switch response.result {
        case.success:
            
            break
            
        case .failure:
            print(response.error!)
            break
        }
        
        
    }
  }
}
