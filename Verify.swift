//
//  Verify.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 21/06/22.
//

import SwiftUI

struct Verify: View {
    
    
    @AppStorage("loginroll") var rollNumber = ""
    @AppStorage("loginpass") var password = ""
    
    
    var body: some View {
        Text("HEYYYY")
    }
}

struct Verify_Previews: PreviewProvider {
    static var previews: some View {
        Verify()
    }
}
