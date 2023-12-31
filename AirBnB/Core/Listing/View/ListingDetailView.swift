//
//  ListingDetailView.swift
//  AirBnB
//
//  Created by Martin Wainaina on 20/11/2023.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {

    @Environment(\.dismiss) var dismiss
    let listing: Listing
    
    var body: some View {
        ScrollView{
            ///sliding images
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView(listing: listing)
                    .frame(height: 320)
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }
           
            VStack(alignment: .leading){
                Text(listing.title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        
                        Text("\(listing.rating)")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("\(listing.city), \(listing.state)")
                }
                .font(.caption)
                
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
        
            /// horizontal divider
            Divider()
            
            // host info view
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Entire \(listing.type.description) hosted by \(listing.owenerName)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2){
                        Text("\(listing.numberOfGuests) guests -")
                        Text("\(listing.numberOfBedrooms) bedrooms-")
                        Text("\(listing.numberOfBeds) beds -")
                        Text("\(listing.numberOfBathrooms) baths -")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image(listing.owenerImageImageUrl)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            /// horizontal divider
            Divider()
            
            // Listing features
            VStack(alignment: .leading, spacing: 16){
                ForEach(listing.features) { feature in
                    HStack(spacing: 12){
                        Image(systemName: feature.imageName)
                        
                        VStack(alignment: .leading){
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text(feature.subTitle)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .padding()
            
            /// horizontal divider
            Divider()
            
            // Bedrom view
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1 ... listing.numberOfBeds, id: \.self) { bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
            }.padding()
            
            // Listing amenities
            VStack(alignment: .leading, spacing: 16){
                Text("What this place offers.")
                    .font(.headline)
                
                ForEach(listing.amenities){ amenity in
                    HStack{
                        
                        Image(systemName: amenity.imageName)
                            .frame(width: 32)
                        
                        Text(amenity.title)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            // Where you'll be
            VStack{
                /// horizontal divider
                Divider()
                
                VStack{
                    Text("Where you'll be ")
                        .font(.headline)
                    
                    Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: listing.latitude, longitude: listing.longitude), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))))
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                }.padding()
            }
            
        }
        .toolbar(.hidden, for: .tabBar) // hide tabBar
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                
                HStack{
                    VStack(alignment: .leading){
                        Text("$\(listing.pricePerNight)")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Total before Taxes")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button{
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

struct ListingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailView(listing: DeveloperPreview.shared.listings[0])
    }
}
