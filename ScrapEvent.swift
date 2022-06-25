//
//  ScrapEvent.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 15/06/22.
//

import Foundation
import SwiftSoup


var data1 = ["Hi Amrita\nWelcome to iOS!"]
var data2 = [""]
var data3 = [""]

struct message
{
    
    
    func fetchTitle() -> [String]
    {
        do
        {
           
            let url = URL(string: "https://intranet.cb.amrita.edu/events")!
            let html = try String(contentsOf: url)
           // let doc: Document = try SwiftSoup.parse(html)
           //let p: Element = try doc.select("div")
           
           // print(html)
            let soup: Document = try! SwiftSoup.parseBodyFragment(html)
            let p : Elements = try! soup.select(".views-field-title").select("a")
            for elem in p{
               
                data1.append(try! elem.text())
            }
           
            
            
        }
        
      
        
        catch Exception.Error(type: let type, Message: let message){
            print(type)
            print(message)
        }
        catch{
            print("Error")
            
   
    }
        
        return data1
        
    
}
    
    
    
    func fetchBody() -> [String]
    {
        do
        {
           
            let url = URL(string: "https://intranet.cb.amrita.edu/events")!
            let html = try String(contentsOf: url)
           // let doc: Document = try SwiftSoup.parse(html)
           //let p: Element = try doc.select("div")
           
           // print(html)
            let soup: Document = try! SwiftSoup.parseBodyFragment(html)
            let p : Elements = try! soup.select(".views-field-body")
            for elem in p{
               
                data2.append(try! elem.text())
            }
           
            
            
        }
        
      
        
        catch Exception.Error(type: let type, Message: let message){
            print(type)
            print(message)
        }
        catch{
            print("Error")
            
   
    }
        
        return data2
        
    
}
    
    func fetchDate() -> [String]
    {
        do
        {
           
            let url = URL(string: "https://intranet.cb.amrita.edu/events")!
            let html = try String(contentsOf: url)
           // let doc: Document = try SwiftSoup.parse(html)
           //let p: Element = try doc.select("div")
           
           // print(html)
            let soup: Document = try! SwiftSoup.parseBodyFragment(html)
            let p : Elements = try! soup.select(".views-field-field-mt-event-date").select(".datetime")
            for elem in p{
               
                data3.append(try! elem.text())
            }
           
            
            
        }
        
      
        
        catch Exception.Error(type: let type, Message: let message){
            print(type)
            print(message)
        }
        catch{
            print("Error")
            
   
    }
        
        return data3
        
    
}


    
    


}


