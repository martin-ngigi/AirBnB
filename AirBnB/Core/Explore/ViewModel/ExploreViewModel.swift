//
//  ExploreViewModel.swift
//  AirBnB
//
//  Created by Martin Wainaina on 22/11/2023.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var listing = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService){
        self.service = service
        // trigger fetchListing
        Task { await fetchListing() }
    }
    
    func fetchListing() async{
        do{
            self.listing = try await service.fetchListing()
        }
        catch{
            print("DEBUG: Error failed to fetch listing with error: \(error.localizedDescription)")
        }
    }
}
