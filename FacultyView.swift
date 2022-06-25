//
//  LibraryView.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 06/06/22.
//

import SwiftUI



struct FacultyView: View {

   @State var search:String
@State private var choice = 7
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
                                
                                Text("Faculty Time Table")
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
                                        Text("Faculty Search")
                                            .font(.title)
                                            .fontWeight(.medium)
                                            .padding(.top, 95)
                                            .padding(.bottom, 30)
                                        
                                       
                                        Text("Faculty Name")
                                            .font(.title3)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.horizontal,35)
                                       
                                        TextField("Enter faculty name", text: $search)
                                            .padding(.vertical,12)
                                            .padding(.horizontal,15)
                                            .border(Color(.gray))
                                            .padding(.horizontal,35)
                                            .padding(.bottom, 25)
                                       
                                        
                                        
                                       
                                        
                                        Text("Academic Year")
                                            .font(.title3)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.horizontal,35)
                                        Picker(selection: $key, label: Text("Key")) {
                                                        Text("2015 - 2016").tag(1)
                                            Text("2016 - 2017").tag(2)
                                            Text("2017 - 2018").tag(3)
                                            Text("2018 - 2019").tag(4)
                                            Text("2019 - 2020").tag(5)
                                            Text("2020 - 2021").tag(6)
                                            Text("2021 - 2022").tag(7)

                                        }
                                        .padding(.bottom, 10)
                                        
                                        
                                        
                                        
                                        Text("Semester")
                                            .font(.title3)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.horizontal,35)
                                        Picker(selection: $key, label: Text("Key")) {
                                                        Text("Even Semester").tag(1)
                                            Text("Odd Semester").tag(2)
                                           

                                        }
                                        .padding(.bottom, 10)
                                            
                                        
                                        
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


struct FacultyView_Previews: PreviewProvider {
    static var previews: some View {
        FacultyView(search: "")
    }
}
