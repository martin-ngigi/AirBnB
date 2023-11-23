//
//  Listing.swift
//  AirBnB
//
//  Created by Martin Wainaina on 22/11/2023.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable{
    let id: String
    let owenerUid: String
    let owenerName: String
    let owenerImageImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    let pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let imageUrls: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    let rating: Double
    let features: [ListingFeatures]
    let amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable{
    case selfCheckin
    case superHost
    
    var imageName: String {
        switch self{
        case .selfCheckin: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String{
        switch self{
        case .selfCheckin: return "Self Checkin"
        case .superHost: return "SuperHost"
        }
    }
    
    var subTitle: String{
        switch self{
        case .selfCheckin: return "Check yourself with the keypad"
        case .superHost: return "Superhost are experinced, highly rated who are commited to providong greate stars for guests"
        }
    }
    
    var id: Int { return self.rawValue}
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable{
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String{
        switch self{
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "WiFi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }
    
    var imageName: String{
        switch self{
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }
    
    var id: Int { return self.rawValue}
}

enum ListingType: Int, Codable, Identifiable, Hashable{
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String{
        switch self{
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town House"
        case .villa: return "Villa"
        }
    }
    
    var id: Int { return self.rawValue}

}


