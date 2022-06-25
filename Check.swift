//
//  Check.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 21/06/22.
//

import SwiftUI

struct Check: View {
    @State var x: Int = 1;
    var body: some View {
        VStack{
            
            
            Button {
                if(x==0)
                {
                    x = 1;
                }
                else
                {
                    x = 0;
                }
            } label: {
                Text("Click")
            }

            
            if(x==0)
            {
               BroadcastView()
            }
            else
            {
                Text("Bye")
                    
            }
            
            
        }
       
        
        
    }
        
}

struct Check_Previews: PreviewProvider {
    static var previews: some View {
        Check()
    }
}
