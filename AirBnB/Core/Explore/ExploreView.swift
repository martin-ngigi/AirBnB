//
//  ExploreView.swift
//  AirBnB
//
//  Created by Martin Wainaina on 20/11/2023.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView{
                DestinationSearchView(show: $showDestinationSearchView)
            }
            
            else{
                ScrollView{
                    //search bar
                    SearchAndFilter()
                        .onTapGesture {
                            withAnimation(.easeInOut){ // or .snappy
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32){
                        ForEach(0 ... 10, id: \.self) {listing in
                            NavigationLink(value: listing){
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
            

        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
