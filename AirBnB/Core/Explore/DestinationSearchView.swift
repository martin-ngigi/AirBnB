//
//  DestinationSearchView.swift
//  AirBnB
//
//  Created by Martin Wainaina on 21/11/2023.
//

import SwiftUI

enum DestinationSearchOptions{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 1
    
    var body: some View {
        VStack {
            Button{
                withAnimation(.easeOut){ // or .snappy
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            // Location
            VStack(alignment: .leading){
                if selectedOption == .location {
                    Text("Where to ?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destination ", text: $destination)
                            .font(.subheadline)
                        
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.systemGray4))
                    }
                }
                else{
                    CollapesedPickerView(title: "Where", description: "Add destination")
                        .padding()
                    

                }
                
            }
            .padding()
            .background(.white)
            .frame(height: selectedOption == .location ? 120 : 64)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                selectedOption = .location
            }
            
            // Date Selection
            VStack{
                if selectedOption == .dates{
                    Text("When's your trip ?")
                    
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    

                }
                else{
                    CollapesedPickerView(title: "When", description: "Add dates")
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                    selectedOption = .dates
                }
            
            // num guest view
            VStack{
                if selectedOption == .guests{
                    Text("Who's coming")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Stepper {
                        Text("\(numGuests) Adults")
                    } onIncrement: {
                        //NB: To see change, long press or hold it down
                        numGuests += 1
                        //numGuests = numGuests + 1
                        print("Add 1 , total: \(numGuests)")
                    } onDecrement: {
                        //NB: To see change, long press or hold it down
                        guard numGuests > 1 else { return }
                        numGuests -= 1
                        print("Subtract 1, total: \(numGuests)")
                    }

                }
                else{
                    CollapesedPickerView(title: "Who", description: "Add guests")
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                    selectedOption = .guests
                }
            
        }
    }
}

struct DestinationSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationSearchView(show: .constant(false))
    }
}

struct CollapesedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
        
    }
}
