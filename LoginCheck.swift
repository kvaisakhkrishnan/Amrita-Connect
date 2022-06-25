//
//  LoginCheck.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 17/06/22.
//

import Foundation
import SwiftSoup


class Code{
        
  
    private var isActive = false

    
    
    func getData(data: String)
    {
       // print(data)
        
        
        
        if self.isActive
        {
           LoginView()
               
           

                
        }
        
        else
        {
           
            
            
            
            
            do
            {
               
              
                let doc: Document = try SwiftSoup.parse(data)
                let p: Elements = try doc.select("td")
               // let token = try p.attr("src")
               
                for j in p{
                    print(try! j.text())

                }
                
                self.isActive = true
                
                
            
            }


            catch Exception.Error(type: let type, Message: let message){
               print(type)
                print(message)
            }
            catch{
                print("")
                
            }
            
            
        }
        
        
      
        
        
        }
    
   
       
        
       

 
    
    
}
