//
//  FilmesAPI.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 14/02/22.
//

import Foundation
import AlamofireImage
import Alamofire
import UIKit

class FilmesAPI: UIImage {
    
    let url = "https://api.themoviedb.org/3/movie/popular?api_key=b11f9bc81c43be98fb8a1155d4efcced&language=pt-BR&page=1."

    func getRequest(url: String,
                     completion: @escaping ([String: Any]?, Error?) -> Void){
        //URL válida
        guard let URL = URL(string: url) else {
            completion(nil, nil)
            return
        }
//        let request = AF.request("https://api.themoviedb.org/3/movie/popular?api_key=b11f9bc81c43be98fb8a1155d4efcced&language=pt-BR&page=1.", method: .get).responseData { response in
//            print(response)
//            do {
//                let data: ResponseModel = try JSONDecoder().decode(ResponseModel.self, from: response)
//                // Do something
//            } catch {
//                print("error")
//            }
//        }
        
    }
}
