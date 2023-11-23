//
//  ExploreService.swift
//  AirBnB
//
//  Created by Martin Wainaina on 22/11/2023.
//

import Foundation

class ExploreService{
    func fetchListing() async throws -> [Listing]{
        return DeveloperPreview.shared.listings
    } 
}
