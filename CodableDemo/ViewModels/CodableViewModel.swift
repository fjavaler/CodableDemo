//
//  CodableViewModel.swift
//  CodableDemo
//
//  Created by Fred Javalera on 6/10/21.
//

import Foundation

class CodableViewModel: ObservableObject {
  
  @Published var customer: CustomerModel? = nil
  
  init() {
    getData()
  }
  
  func getData() {
    guard let data = getJSONData() else { return }
    
    //    // Converts data from JSON data to dictionary without using coding keys (not preferred).
    //    // If all of these let statements succeed...
    //    if
    //      let localData = try? JSONSerialization.jsonObject(with: data, options: []),
    //      let dictionary = localData as? [String:Any],
    //      let id = dictionary["id"] as? String,
    //      let name = dictionary["name"] as? String,
    //      let points = dictionary["points"] as? Int,
    //      let isPremium = dictionary["isPremium"] as? Bool {
    //
    //        //...then, create a new customer from the variables and store as customer.
    //        let newCustomer = CustomerModel(id: id, name: name, points: points, isPremium: isPremium)
    //        customer = newCustomer
    //
    //    }
    
    // Using coding keys (preferred).
    do {
      self.customer = try JSONDecoder().decode(CustomerModel.self, from: data)
    } catch let error {
      print("Error decoding. \(error)")
    }
  }
  
  func getJSONData() -> Data? {
    // Manually creating a JSON object without using CodingKeys and Encodable.
    //    let dictionary: [String:Any] = [
    //      "id": "12345",
    //      "name": "Joe",
    //      "points": 5,
    //      "isPremium": true
    //    ]
    //
    //    // Converts dictionary into JSON data
    //    let jsonData = try? JSONSerialization.data(withJSONObject: dictionary, options: [])
    
    // With encodable
    let customer = CustomerModel(id: "111", name: "Emily", points: 100, isPremium: false)
    
    do {
      let jsonData = try JSONEncoder().encode(customer)
      return jsonData
    } catch let error {
      print("Error encoding. \(error)")
    }
    
    return Data()
  }
}
