//
//  SearchAndFilter.swift
//  AirBnB
//
//  Created by Martin Wainaina on 20/11/2023.
//

import SwiftUI

struct SearchAndFilter: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2){
                Text("Where to")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any week - Ass guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                
                
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            }
            
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray))
                .shadow(color: .black.opacity(0.4), radius: 2)
                
        }
        .padding()
    }
}

struct SearchAndFilter_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndFilter()
    }
}
