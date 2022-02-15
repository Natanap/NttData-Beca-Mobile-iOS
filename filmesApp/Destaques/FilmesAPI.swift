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

    public func getRequest(url: String,
                     completion: @escaping ([String: Any]?, Error?) -> Void){
        //URL válida
        guard let URL = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=b11f9bc81c43be98fb8a1155d4efcced&language=pt-BR&page=1.") else {
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


    //Coloque a URL da sua API aqui
    //var url = "https://api.themoviedb.org/3/movie/popular?api_key=b11f9bc81c43be98fb8a1155d4efcced&language=pt-BR&page=1."

}
//    //Chamando a funcão GET
//    func getRequest(url: url){
//        (resultado, erro);  in
//          if(resultado != nil) {
//              //O resultado aqui vem como Opcional
//              print("Sua requisicao foi realizada com sucesso: \n \(resultado)")
//          } else {
//              print("A requisicao nao funcionou \(erro)")
//          }
//
//    }
