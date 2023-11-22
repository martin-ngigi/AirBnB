//
//  WishListView.swift
//  AirBnB
//
//  Created by Martin Wainaina on 22/11/2023.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 4){
                    Text("Login to view your wishlist")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you;ve logged in.")
                        .font(.footnote)
                    
                }
                
                Button{
                    
                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlist")
        }
    }
}

struct WishListView_Previews: PreviewProvider {
    static var previews: some View {
        WishListView()
    }
}
