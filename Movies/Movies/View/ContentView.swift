//
//  ContentView.swift
//  Movies
//
//  Created by Consultant on 1/8/23.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var moviesViewModel =  infoMovies()
   // @State private var results = [Details.CodingKeys]
    
    var body: some View {
        NavigationStack {
            List(0..<10){item in
               // NavigationLink(destination: MovieDetailView, label: moviesViewModel) {
                    
                    // List(moviesViewModel.infoMoviesResponse?.results ?? [0], id: \.id){item in
                    //Text("Hi")
                    //ForEach (moviesViewModel.infoMoviesResponse)
                    
                    HStack{
                        VStack(alignment: .leading){
                            if let iconURL = moviesViewModel.infoMoviesResponse?.results.first?.poster,
                               let url = URL(string: "https://image.tmdb.org/t/p/w200/\(iconURL)") {
                                AsyncImage(url: url)
                            }
                        }
                        .fixedSize()
                        VStack(alignment: .leading, spacing: 5){
                            Text(moviesViewModel.infoMoviesResponse?.results.first?.title ?? "NA")
                            //Text (moviesViewModel.infoMoviesResponse?.results.first?.language ?? "Na")
                            //Text(moviesViewModel.infoMoviesResponse?.results.first?.overview ?? "NA")
                        }
                        .padding(10.0)
                        //.background(Color.blue)
                        .font(.title)
                        
                        
                    }
                    .padding()
                    .frame(width: 350.0)
                    //.background(Color.gray)
                    
                }
                .navigationTitle("Movies")
            
        }
        //.padding()
        
        .task {
            await moviesViewModel.getInfo()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
