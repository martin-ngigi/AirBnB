//
//  ListingImageCarouselView.swift
//  AirBnB
//
//  Created by Martin Wainaina on 20/11/2023.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    /**
    var images = [
        "bathroom",
        "bedroom1",
        "bedroom2",
        "front",
        "kitchen",
        "living_room",
        "master_bedroom"
    ]
    **/
     
    let listing: Listing
    
    var body: some View {
        ///image
        TabView{
            ForEach(listing.imageUrls, id: \.self) {image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                
            }
        }
        .tabViewStyle(.page)
    
    }
}

struct ListingImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
    }
}
