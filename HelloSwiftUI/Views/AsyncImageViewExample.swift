//
//  AsyncImageViewExample.swift
//  HelloSwiftUI
//
//  Created by Antonio Jesús Ibáñez Barja on 05/06/2023.
//

import SwiftUI

struct AsyncImageViewExample: View {
    
    private let bigBatUrl = URL(string: "https://i0.wp.com/ecos.csiro.au/wp-content/uploads/2019/05/dyer_csiro_cairns_013-blog.jpg?w=1680&ssl=1")!
    
    var body: some View {
        AsyncImage(url: bigBatUrl) { image in
            image
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
        } placeholder: {
            ProgressView("Downloading")
        }

    }
}

struct AsyncImageViewExample_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageViewExample()
    }
}
