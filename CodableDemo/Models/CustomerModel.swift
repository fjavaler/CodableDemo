//
//  CustomerModel.swift
//  CodableDemo
//
//  Created by Fred Javalera on 6/10/21.
//

import Foundation

struct CustomerModel: Identifiable, Codable {
  let id: String
  let name: String
  let points: Int
  let isPremium: Bool
  
  // Not needed when conforming to codable
//  enum CodingKeys: String, CodingKey {
//    case id
//    case name
//    case points
//    case isPremium
////    case isPremium = "is_premium" //<- if data is coming in with an underscore e.g.
//  }
//
//  init(id: String, name: String, points: Int, isPremium: Bool) {
//    self.id = id
//    self.name = name
//    self.points = points
//    self.isPremium = isPremium
//  }
//
//  init(from decoder: Decoder) throws {
//    let container = try decoder.container(keyedBy: CodingKeys.self)
//    self.id = try container.decode(String.self, forKey: .id)
//    self.name = try container.decode(String.self, forKey: .name)
//    self.points = try container.decode(Int.self, forKey: .points)
//    self.isPremium = try container.decode(Bool.self, forKey: .isPremium)
//  }
//
//  func encode(to encoder: Encoder) throws {
//    var container = encoder.container(keyedBy: CodingKeys.self)
//    try container.encode(id, forKey: .id)
//    try container.encode(name, forKey: .name)
//    try container.encode(points, forKey: .points)
//    try container.encode(isPremium, forKey: .isPremium)
//  }
}
