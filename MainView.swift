//
//  MainView.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 05/06/22.
//

import SwiftUI




struct MainView: View {
    @State var deg: Double = 0
    var data: [String]
    @AppStorage("rollNumber") var sroll = "";
    @AppStorage("name") var sname = "";
    @State var from:Int = 2020
    @State var till:Int = 2024
    @State private var textSwitch = false
    
   
    
    var body: some View {
        
        
        
        NavigationView
        {
           

           
            ScrollView {
                
                VStack
                      {
                          
                          Text("Home")
                              .font(.largeTitle)
                              .fontWeight(.semibold)
                              .frame(maxWidth: .infinity, alignment: .leading)
                              .padding(.leading,25)
                              .padding(.top,20)
                          
                          
                          Image("amritadraw")
                              .resizable()
                              .frame(width: 400, height: 150, alignment: .center)
                              .padding(.vertical,20)
                              .padding(.bottom,10)
                          
                    
                         
                         NavigationLink(destination: ProfileView()){
                             
                             
                             
                             
                              ZStack
                              {
                                  
                                  
                                  Rectangle()
                                      .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 148/255, blue: 130/255), Color(red: 125/255, green: 119/255, blue: 250/255)]),
                                                           startPoint: .topTrailing,
                                                                            endPoint: .bottomLeading))
                                      .frame(width: 345, height: 215, alignment: .center)
                                      .cornerRadius(25)
                                      .shadow(color: .black, radius: 7, x: 0, y: 0)
                                  
                                  VStack{
                                      
                                      Text("AVV")
                                          .font(.title2)
                                          .foregroundColor(.white)
                                          .padding(.leading,250)
                                          .padding(.bottom,30)
                                      Text(sroll)
                                          .font(.title2)
                                          .foregroundColor(.white)
                                          .padding(.trailing,100)
                                          
                                      Text(sname)
                                          .font(.headline)
                                          .foregroundColor(.white)
                                          .padding(.trailing,155)
                                          .padding(.bottom,20)
                                          
                                      HStack(spacing: 30)
                                      {
                                          VStack
                                          {Text("Valid from")
                                                  .font(.footnote)
                                                  .fontWeight(.bold)
                                                  .foregroundColor(.white)
                                              Text(String(from))
                                                  .font(.footnote)
                                                  .fontWeight(.bold)
                                                  .foregroundColor(.white)
                                          }
                                      
                                          VStack
                                          {Text("Valid till")
                                                  .font(.footnote)
                                                  .fontWeight(.bold)
                                                  .foregroundColor(.white)
                                              Text(String(till))
                                                  .font(.footnote)
                                                  .fontWeight(.bold)
                                                  .foregroundColor(.white)
                                          }
                                      }
                                  }
                              }
                             
                              
                              .navigationTitle("Home")
                               
                             
                             
                             
                          }
                          
                        

                         
                              
                                  
                              
                              Rectangle()
                                  .padding(.top,40)
                                .edgesIgnoringSafeArea(.all)
                                  .foregroundColor(.white)
                              
                        


                             
                         
                          
                          
                          
                          
                          
                          
                          
                          
                          //Announcements
                          
                        
                          Text("Announcements")
                              .font(.title)
                              .fontWeight(.semibold)
                              .padding(.bottom, 10)
                         
                        
                          
                          
                      
                          
                        
                        
                          
                          
                          
                      }
                     
                      
                        
                         
                
               
              
                
                
            }
           
      
               
            
            
            .navigationTitle("")
            .navigationBarHidden(true)
                     
        }
        
      
      
        .navigationBarBackButtonHidden(true)
        
       
    }
    
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(data: [""])
    }
}
