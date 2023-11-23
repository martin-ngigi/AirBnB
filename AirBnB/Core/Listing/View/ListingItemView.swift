//
//  ListingItemView.swift
//  AirBnB
//
//  Created by Martin Wainaina on 20/11/2023.
//

import SwiftUI

struct ListingItemView: View {
    
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
        VStack(spacing: 8){
            ///image
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
           
            // listing details
            HStack(alignment: .top){
                //Details
                VStack(alignment: .leading){
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 min away")
                        .foregroundColor(.gray)
                    
                    Text("Nov 3 -10 ")
                        .foregroundColor(.gray)
                    
                    HStack(spacing: 4){
                        Text("\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                // Rating
                HStack{
                    Image(systemName: "star.fill")
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView(listing: DeveloperPreview.shared.listings[0])
    }
}
