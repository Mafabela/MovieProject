//
//  MovieDetailView.swift
//  Movies
//
//  Created by Consultant on 1/8/23.
//

import SwiftUI

struct MovieDetailView: View {
    //var movie: movieModel
    
    var body: some View {
        VStack {
            Image("icon")
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            Text("Title")
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Text("Overview")
                .font(.body)
                .padding()
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
