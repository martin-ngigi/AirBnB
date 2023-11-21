//
//  ListingDetailView.swift
//  AirBnB
//
//  Created by Martin Wainaina on 20/11/2023.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    var images = [
        "bathroom",
        "bedroom1",
        "bedroom2",
        "front",
        "kitchen",
        "living_room",
        "master_bedroom"
    ]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            ///sliding images
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
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
                Text("Miami, Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        
                        Text("4.8")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
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
                    Text("Entire Villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2){
                        Text("4 guests -")
                        Text("4 bedroom -")
                        Text("4 beds -")
                        Text("4 baths -")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("default")
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
                ForEach(0 ..< 2) { feature in
                    HStack(spacing: 12){
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are experienced, highly rated hosts who are commited to providing great stars for guests ")
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
                        ForEach(1 ..< 5) { bedroom in
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
                
                ForEach(0 ..< 5 ){ feature in
                    HStack{
                        
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("Wifi")
                        
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
                    
                    Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -1.292066, longitude: 36.821946), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))))
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                }.padding()
            }
            
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                
                HStack{
                    VStack(alignment: .leading){
                        Text("$500")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Total before Taxes")
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
        ListingDetailView()
    }
}
