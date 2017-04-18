//
//  LocationInfo.swift
//  NightOut
//
//  Created by Minon Weerasinghe on 17/4/17.
//  Copyright © 2017 Minon Weerasinghe. All rights reserved.
//

import Foundation
import Firebase


// This class is reponsible for creating an object for all the data obtained from the database

class LocationInfo{
    private var Name: String?
    private var Email: String?
    private var PhoneNumber: String?
    private var Price: Double?
    private var Website: String?
    // Rating can only be an int 1 to 5
    private var Rating: Int?
    private var Address: String?
    private var Latitude: Double?
    private var Longitude: Double?
    // type could be BAR PUB OR CLUB
    private var LocType: String?
    private var MusicType: String?
    
    //
    private var Snapshot: FIRDataSnapshot?
    
    
    
    public init(snapshot: FIRDataSnapshot){
        self.Snapshot = snapshot
        let values = self.Snapshot?.value as? NSDictionary
        self.Name = values?["Name"] as? String ?? ""
        self.Rating = values?["Rating"] as? Int
        self.Latitude = values?["Latitude"] as? Double
        self.Longitude = values?["Longitude"] as? Double
        self.MusicType = values?["Music"] as? String ?? ""
        
    }
    
    
    func getName() -> String {
        return self.Name!
    }
    
    func getEmail() -> String {
        return self.Email!
    }
    
    func getPhoneNumber() -> String {
        return self.PhoneNumber!
    }
    
    func getPrice() -> Double  {
        return self.Price!
    }
    
    func getWebsite() -> String {
        return self.Website!
    }
    
    func getRating()->Int{
        return self.Rating!
    }
    
    func getAddress()->String{
        return self.Address!
    }
    
    func getLatitude() -> Double {
        return self.Latitude!
    }
    
    func getLongitude() -> Double {
        return self.Longitude!
    }
    
    func getLocationType()->String{
        return self.LocType!
    }
    
    func getMusicType() -> String {
        return self.MusicType!
    }
    
    

    
    
}
