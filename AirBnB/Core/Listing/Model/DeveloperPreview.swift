//
//  DeveloperPreview.swift
//  AirBnB
//
//  Created by Martin Wainaina on 22/11/2023.
//

import Foundation

struct DeveloperPreview{
    
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            owenerUid:  NSUUID().uuidString,
            owenerName: "John Smith",
            owenerImageImageUrl: "default",
            numberOfBedrooms: 4,
            numberOfBathrooms: 2,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 100,
            latitude: -1.2920659,
            longitude: 36.82194619,
            imageUrls: [
                "bedroom2",
                "bathroom",
                "bedroom1",
                "front",
                "kitchen",
                "living_room",
                "master_bedroom"
            ],
            address: "Kileleshwa, Nairobi, Kenya",
            city: "Kiambu",
            state: "Kenya",
            title: "Nairobi Kenya",
            rating: 4.3,
            features: [.selfCheckin, .superHost],
            amenities: [.wifi, .tv, .pool, .balcony],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            owenerUid:  NSUUID().uuidString,
            owenerName: "John Smith",
            owenerImageImageUrl: "default",
            numberOfBedrooms: 3,
            numberOfBathrooms: 1,
            numberOfGuests: 3,
            numberOfBeds: 2,
            pricePerNight: 90,
            latitude: -1.2820659,
            longitude: 36.72194619,
            imageUrls: [
                "front",
                "bathroom",
                "bedroom1",
                "bedroom2",
                "kitchen",
                "living_room",
                "master_bedroom"
            ],
            address: "Muthaiga, Nairobi, Kenya",
            city: "Nairobi",
            state: "Kenya",
            title: "Nairobi Kenya",
            rating: 3.9,
            features: [.selfCheckin],
            amenities: [.tv, .pool, .balcony],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            owenerUid:  NSUUID().uuidString,
            owenerName: "John Smith",
            owenerImageImageUrl: "default",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 120,
            latitude: -1.3720659,
            longitude: 36.84194619,
            imageUrls: [
                "master_bedroom",
                "bathroom",
                "bedroom1",
                "bedroom2",
                "front",
                "kitchen",
                "living_room",
            ],
            address: "Lavington, Nairobi, Kenya",
            city: "Nairobi",
            state: "Kenya",
            title: "Nairobi Kenya",
            rating: 4.7,
            features: [.selfCheckin, .superHost],
            amenities: [.wifi, .alarmSystem, .tv, .pool, .balcony],
            type: .villa
        ),
        
            .init(
                id: NSUUID().uuidString,
                owenerUid:  NSUUID().uuidString,
                owenerName: "John Smith",
                owenerImageImageUrl: "default",
                numberOfBedrooms: 4,
                numberOfBathrooms: 3,
                numberOfGuests: 4,
                numberOfBeds: 4,
                pricePerNight: 120,
                latitude: -1.3720659,
                longitude: 36.84194619,
                imageUrls: [
                    "kitchen",
                    "bathroom",
                    "bedroom1",
                    "bedroom2",
                    "front",
                    "living_room",
                    "master_bedroom"
                ],
                address: "Lavington, Nairobi, Kenya",
                city: "Nairobi",
                state: "Kenya",
                title: "Nairobi Kenya",
                rating: 4.7,
                features: [.selfCheckin, .superHost],
                amenities: [.wifi, .alarmSystem, .tv, .pool, .balcony],
                type: .villa
            ),
    ]
}
