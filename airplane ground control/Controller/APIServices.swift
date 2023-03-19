//
//  APIServices.swift
//  airplane ground control
//
//  Created by Varun Sharma on 18/03/23.
//

import Foundation
import SwiftyJSON
import UIKit



//class FetchData {
var arrData = [InformationElement]()
 
    func FetchAPI() {
        
        
        let get_url:String = "http://127.0.0.1:3000/info/"
       
      
        
        let url = URL(string: get_url)
                 let request = NSURLRequest(url: url! as URL)
                 let session = URLSession(configuration:URLSessionConfiguration.default)
                 let task = session.dataTask(with: request as URLRequest) {(data, response, error) -> Void in
                     if error == nil {
                         
                             let swiftyJSON = try? JSON(data: data!)
                         let Info = swiftyJSON![].arrayValue
                           
                         print(Info[1])
                         print(Info)
                         
                         for arr in Info {
                             print(arr["distance"])
                            arrData.append(InformationElement(swiftyJSON: arr))
                         }
                         
                         
                         
                         
                         
                         print(arrData)
                        
                       
                        }
                     else{
                         print("There was an error")
                     }
                     
                    
                     
                     
                 }
                 task.resume()
           // let sample = InformationElement(json: response)
            
            //print(NotificationVariable[])
            
        }

//}
