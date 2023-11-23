//
//  ExploreViewModel.swift
//  AirBnB
//
//  Created by Martin Wainaina on 22/11/2023.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var listing = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    @Published var listingCopy = [Listing]()

    
    init(service: ExploreService){
        self.service = service
        // trigger fetchListing
        Task { await fetchListing() }
    }
    
    func fetchListing() async{
        do{
            self.listing = try await service.fetchListing()
            self.listingCopy = listing // will act as copy to reference to whenever a user searches, then wants to view the original list
        }
        catch{
            print("DEBUG: Error failed to fetch listing with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingForLocation(){
        let filteredListing = listing.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        // if filteredListing is empty return initial listing, else rsturn filteredListing
        self.listing = filteredListing.isEmpty ? listingCopy : filteredListing
    }
}
