//
//  FirebaseDataController.swift
//  NightOut
//
//  Created by Minon Weerasinghe on 16/4/17.
//  Copyright © 2017 Minon Weerasinghe. All rights reserved.
//

import Foundation
import Firebase


class FirebaseDataController {
    // This class will handle all Firebase data controlls
    
    
    // holds the data retrieved from DB
    static var resultsArray = [LocationInfo]()
    
    static var resultsDic: NSDictionary?
    
    
    
    
    
    
    //Firebase Database reference declaration only
    private var ref: FIRDatabaseReference!

    private init(){}
    
    
//    class func loadData(onCompletition: @escaping ([LocationInfo])->Void){
//        let root = FIRDatabase.database().reference()
//        let locationSummary = root.child("LocSummary")
//        
//        locationSummary.observe(.childAdded,with: { (snapshot) in
//            print("inside closure")
//            let values = snapshot.value as? NSDictionary
//            let name = values?["Name"] as? String ?? ""
//            let rating = values?["Rating"] as? Int
//            let latitude = values?["Latitude"] as? Double
//            let longitude = values?["Longitude"] as? Double
//            let musicType = values?["Music"] as? String ?? ""
//            
//            let loc = LocationInfo.init(name: name, rating: rating!, lat: latitude!, long: longitude!, musicTyp: musicType)
//            resultsArray.append(loc)
//            
//            onCompletition(resultsArray)
//        
//        })
//
//    }
    
    
    
    //MARK: - Load data to array
    class func loadData(onCompletition: @escaping ([LocationInfo])->Void){
        
        let root = FIRDatabase.database().reference()
        let locationSummary = root.child("LocSummary")
        
        locationSummary.observe(.value, with: { (snapshot) in
            for item in snapshot.children{
                let locationInfo = LocationInfo(snapshot: item as! FIRDataSnapshot)
                resultsArray.append(locationInfo)
            }
            onCompletition(resultsArray)
        })
    }
    
    class func fetchData(){
        loadData { (data) in
            for item in data{
                print(item.getName())
            }
        }
    }
    
    

    
 
    
   
}//end of class
  
