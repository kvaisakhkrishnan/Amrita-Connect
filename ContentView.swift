//
//  ContentView.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 04/06/22.
//

import SwiftUI

struct ContentView: View {
    var data: [String]
    var body: some View {
        
      
        Tab(data: data)
       
      
       
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(data: [""])
            
    }
}
