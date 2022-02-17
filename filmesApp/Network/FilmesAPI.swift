//
//  FilmesAPI.swift
//  filmesApp
//
//  Created by Natanael Alves Pereira on 14/02/22.
//

import Foundation
import UIKit

class FilmesAPI{

    
    private var dataTask : URLSessionDataTask?
    
    func getPopularMoviesData( completion: @escaping (Result<MoviesData, Error>) -> Void) {
        let popularMoviesURL =
        "https://api.themoviedb.org/3/movie/popular?api_key=b11f9bc81c43be98fb8a1155d4efcced&language=pt-BR&page=1."
        guard let url = URL(string: popularMoviesURL) else {return}
        
        dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                print("DataTask error: \(error.localizedDescription)")
                return
            }
            guard let response = response as? HTTPURLResponse else {
                
                print ("Empty Response")
                return
            }
            print ("Response status code: \(response.statusCode)")
            
            guard let data = data else {
                
                print ("Empty Data")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MoviesData.self, from: data)
                
                DispatchQueue.main.async {
                    completion(.success(jsonData))
                }
            } catch let error {
                completion(.failure(error))
            }
        }
        dataTask?.resume()
    }
    
}
    
    

 
