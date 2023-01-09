//
//  MoviesViewModel.swift
//  Movies
//
//  Created by Consultant on 1/8/23.
//

import Foundation
//https://api.themoviedb.org/3/movie/popular?api_key=cca028e85441fc7558f8ad340b62f44a&language=en-US&page=1

final class infoMovies: ObservableObject {
    
    @Published var infoMoviesResponse: movieModel?
    
    func getInfo() async{
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=cca028e85441fc7558f8ad340b62f44a&language=en-US&page=1")!
        do {
            async let (data, _) = try await URLSession.shared.data(from: url)
            let dataModel = try! await JSONDecoder().decode(movieModel.self, from:data)
            print(dataModel.results.first?.title ?? "NA")
            print(dataModel)
            
            DispatchQueue.main.async {
                self.infoMoviesResponse = dataModel
            }
            
            
        } catch {
            print ("Some error: \(error.localizedDescription)")
        }
    }
}
