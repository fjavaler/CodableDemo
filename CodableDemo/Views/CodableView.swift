//
//  ContentView.swift
//  CodableDemo
//
//  Created by Fred Javalera on 6/10/21.
//

import SwiftUI

struct CodableView: View {

  @StateObject var vm = CodableViewModel()
  
  var body: some View {
    
    VStack(spacing: 20) {
      
      if let customer = vm.customer {
        Text(customer.id)
        Text(customer.name)
        Text("\(customer.points)")
        Text(customer.isPremium.description)
      }
      
    }
  
  }

}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    CodableView()
  }
}
