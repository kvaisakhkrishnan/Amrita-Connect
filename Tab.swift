//
//  Tab.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 07/06/22.
//

import SwiftUI

struct Tab: View {
    var data:[String]
    var body: some View {
        
        
        
        
        
      TabView
        {
            MainView(data: data)
                .tabItem {
                    Label("Home", systemImage: "house")
                    
                }
                .navigationBarHidden(true)
               
            
            
        EducationalView()
               
                .tabItem {
                    Label("Education", systemImage: "books.vertical")
                }
                .navigationBarHidden(true)
            
            
        GeneralView()
               
                .tabItem {
                    Label("General", systemImage: "clock")
                }
                .navigationBarHidden(true)
               
            
      DeveloperView()
               
                .tabItem {
                    Label("About", systemImage: "person.2")
                }
                .navigationBarHidden(true)
               
            
        
        
        }
        .navigationBarHidden(true)
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab(data: [""])
    }
}
