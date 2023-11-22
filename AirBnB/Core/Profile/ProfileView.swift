//
//  ProfileView.swift
//  AirBnB
//
//  Created by Martin Wainaina on 22/11/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // Profile login view
            VStack(alignment: .leading, spacing: 32){
                VStack (alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Login to start planning your trip")
                    
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
                
                HStack{
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            VStack(spacing: 24){
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessbility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
