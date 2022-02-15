//
//  FilmesAPI.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 14/02/22.
//

import Foundation
import Alamofire
import UIKit

class FilmesAPI{

    let url = "https://api.themoviedb.org/3/movie/popular?api_key=b11f9bc81c43be98fb8a1155d4efcced&language=pt-BR&page=1."
    
     func getRequest(url: String,
                     completion: @escaping ([String: Any]?, Error?) -> Void){
        //URL válida
        guard let URL = URL(string: url) else {
            completion(nil, nil)
            return
        }
      
      
        //Cria a representacão da requisição
        let request = NSMutableURLRequest(url: URL)

        
        //Atribui à requisiçāo o método GET
        request.httpMethod = "GET"
        
      
        //Cria a tarefa de requisição
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            (data, response, error) in
            do {
                
                if let data = data {
                    //A resposta chegou
                    let response = try JSONSerialization.jsonObject(with: data, options: [])
                    completion(response as? [String : Any], nil)
                }
                else {
                    //Não houve resposta
                    completion(nil, nil)
                }
            } catch let error as NSError {
                // Houve um erro na comunicao com o servidor
                completion(nil, error)
            }
        }
        
        
        //Aciona a tarefa
        task.resume()
        
    }
    
}
 
