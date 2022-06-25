//
//  LibraryView.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 06/06/22.
//

import SwiftUI

struct LibraryView: View {
   @State var search:String
@State private var choice = 1
    @State private var key = 1
    var body: some View {
        
        
        
        NavigationView
        {
            
          
                
                
                ZStack
                    {
                        LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 148/255, blue: 130/255), Color(red: 125/255, green: 119/255, blue: 250/255)]),
                            startPoint: .topTrailing,
                                             endPoint: .leading)
                        .edgesIgnoringSafeArea(.top)
                        
                        
                        
                        
                        
                        
                        ScrollView
                        {
                            
                            VStack
                            {
                                
                                Text("Central Library")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                ZStack
                                {
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .cornerRadius(30)
                                        .padding(.top,70)
                                        .edgesIgnoringSafeArea(.top)
                                VStack
                                    {
                                        Text("OPAC Search")
                                            .font(.title)
                                            .fontWeight(.medium)
                                            .padding(.top, 95)
                                            .padding(.bottom, 30)
                                        
                                       
                                        Text("Select Database")
                                            .font(.title3)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.horizontal,35)
                                        Picker(selection: $choice, label: Text("Database")) {
                                                        Text("Books, Amrita School of Engineering").tag(1)
                                                        Text("Books, Amrita School of Engineering").tag(2)
                                                        Text("CD, Amrita School of Business").tag(3)
                                                        Text("Dissertations").tag(4)
                                                        Text("Book Bank").tag(5)
                                                        Text("CD, Amrita School of Business").tag(6)
                                                        Text("Project, Amrita School of Business").tag(7)
                                                        Text("Articles Data").tag(8)
                                        }
                                        .padding(.bottom, 25)
                                       
                                       
                                        
                                        
                                       
                                        
                                        Text("Search based on")
                                            .font(.title3)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.horizontal,35)
                                        Picker(selection: $key, label: Text("Key")) {
                                                        Text("Resource Title").tag(1)
                                                        Text("Subject Name").tag(2)
                                                        Text("Resource Author Name").tag(3)
                                                        Text("Any Field").tag(4)

                                        }
                                        .padding(.bottom, 10)
                                        
                                        
                                        
                                        
                                        Text("Search Here")
                                            .font(.title3)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.horizontal,35)
                                        TextField("Enter word (or) phrase", text: $search)
                                            .padding(.vertical,12)
                                            .padding(.horizontal,15)
                                            .border(Color(.gray))
                                            .padding(.horizontal,35)
                                            .padding(.bottom, 25)
                                            
                                        
                                        
                                        HStack(spacing:40)
                                        {
                                            Button {
                                               
                                                   //todo
                                                   
                                            } label: {
                                                Text("Search")
                                                    .foregroundColor(.white)
                                                    .padding(.vertical, 12)
                                                    .padding(.horizontal, 25)
                                                    .background(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 148/255, blue: 130/255), Color(red: 125/255, green: 119/255, blue: 250/255)]),
                                                                               startPoint: .topTrailing,
                                                                                                endPoint: .leading))
                                                    .cornerRadius(12)
                                                   
                                            }
                                            
                                            
                                            Button {
                                                search = ""
                                                choice = 1
                                                key = 1
                                            } label: {
                                                Text("Reset")
                                                
                                                    .foregroundColor(.black)
                                                    .padding(.vertical, 12)
                                                    .padding(.horizontal, 25)
                                                
                                                    
                                                
                                            }

                                            
                                        }
                                        .padding(.top,20)
                                        .padding(.bottom,100)
                                           
                                            

                                        
                                        
                                        
                                        
                                        
                                           
                                            
                                       
                                    }
                                   
                                }
                               
                                
                                
                                
                              
                                   
                            }
                            
                            
                        }
                        
                        
                        
                        
                    }
                   
                
                
            }
            
               
      
           
        }
        
    
    }


struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView(search: "")
    }
}
