//
//  ProfileView.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 07/06/22.
//

import SwiftUI


struct ProfileView: View {
    
    
    
    
    @AppStorage("rollNumber") var sroll = "";
    @AppStorage("name") var sname = "";
    @AppStorage("campus") var campus="";
    @AppStorage("academicProgram") var academicProgram="";
    @AppStorage("branch") var branch = "";
    @AppStorage("section") var section = "";
    @AppStorage("advisor") var advisor = "";
    @AppStorage("joiningyear") var year = "";
    @AppStorage("gender") var gender = "";
    @AppStorage("dob") var dob = "";
    @AppStorage("bloodGroup") var bloodGroup = "";
    @AppStorage("state") var state = "";
    @AppStorage("resident") var resident = "";
    @AppStorage("mobile") var mobile = "";
    @AppStorage("email") var email = "";
    @AppStorage("nationality") var nationality = "";
    @AppStorage("community") var community = "";
    @AppStorage("mothertongue") var mothertongue = "";
    @AppStorage("communicationadress") var communicationaddress = "";
    @AppStorage("permanentaddress") var permanentaddress = "";
    @AppStorage("fathername") var fathername = "";
    @AppStorage("fathercontact") var fathercontact = "";
    @AppStorage("fatheremail") var fatheremail = "";
    @AppStorage("passcount") var passscount = "";
    @AppStorage("inorout") var inorout = "";
    @AppStorage("currentsemester") var currentSemester = "";
    @AppStorage("CGPA") var cgpa = "";
    @AppStorage("SGPA") var sgpa = "";
    @AppStorage("currentarrear") var currentArrear = "";
    @AppStorage("arrearhistory") var arrearhistory = "";
    @AppStorage("activedisc") var activedisc = "";
    @AppStorage("totaldisc") var totaldisc = "";
    @AppStorage("activescholarship") var activescholarship = "";
    @AppStorage("totalscholarship") var totalscholarship = "";
    @AppStorage("activedues") var activedues = "";
    @AppStorage("totaldues") var totaldues = "";
    @AppStorage("hostel") var hostel = "";
    @AppStorage("room") var room = "";
    @AppStorage("warden") var warden = "";
    @AppStorage("chief") var chief = "";
    @AppStorage("image") var image = "";
    @State private var rollNumber:String = ""
    @State private var password:String = ""
    @State var code : String = ""
    
    var body: some View {
        
        let img = URL(string: image)
        
        
        
        
        
        
        
        VStack {
            ZStack
            {
                LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 148/255, blue: 130/255), Color(red: 125/255, green: 119/255, blue: 250/255)]),
                               startPoint: .topTrailing,
                               endPoint: .leading)
                .edgesIgnoringSafeArea(.all)
                
                
                VStack
                {
                    
                    
                    
                    
                    
                    
                    AsyncImage(url: img) { image in image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 140, height: 140, alignment: .center)
                            .cornerRadius(140)
                        
                    }
                    placeholder :
                    {
                        ProgressView()
                            .scaleEffect(2)
                            .frame(width: 140, height: 140, alignment: .center)
                        
                    }
                    
                    
                    
                    
                    Text(sname)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text(sroll)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.bottom)
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: 200, alignment: .center)
            
            
            HStack
            {
                Spacer()
                Text("Click here to Logout")
                
                Spacer()
                NavigationLink {
                    LoginView()
                    
                        .navigationTitle("")
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                    
                }
            label: {
                Text("Logout")
                    .padding(.horizontal,18)
                    .padding(.vertical,10)
                    .background(Color(red: 168/255, green: 20/255, blue: 60/255))
                    .foregroundColor(.white)
                    .cornerRadius(15)
                
                
            }
                
                Spacer()
                
            }
            
            .padding(.vertical,10)
            
            List {
                Section(header: Text("General Details")) {
                    
                    
                    HStack
                    {
                        Text("Mobile : ")
                        Spacer()
                        Text(mobile)
                    }
                    
                    HStack
                    {
                        Text("Email : ")
                        Spacer()
                        Text(email)
                    }
                    
                    HStack
                    {
                        Text("Gender : ")
                        Spacer()
                        Text(gender)
                    }
                    
                    HStack
                    {
                        Text("Admitted Campus : ")
                        Spacer()
                        Text(campus)
                    }
                    
                    HStack
                    {
                        Text("Academic Program : ")
                        Spacer()
                        Text(academicProgram)
                    }
                    HStack
                    {
                        Text("Branch : ")
                        Spacer()
                        Text(branch)
                    }
                    HStack
                    {
                        Text("Section : ")
                        Spacer()
                        Text(section)
                    }
                    
                    HStack
                    {
                        Text("Joining Year : ")
                        Spacer()
                        Text(year)
                    }
                    
                    HStack
                    {
                        Text("Class Advisor : ")
                        Spacer()
                        Text(advisor)
                    }
                    HStack
                    {
                        Text("Date of Birth : ")
                        Spacer()
                        Text(dob)
                    }
                    
                    
                    
                }
                
                Section(header: Text("Academic Details")) {
                    
                    
                    HStack
                    {
                        Text("Current Semester : ")
                        Spacer()
                        Text(currentSemester)
                    }
                    
                    HStack
                    {
                        Text("CGPA : ")
                        Spacer()
                        Text(cgpa)
                    }
                    HStack
                    {
                        Text("SGPA : ")
                        Spacer()
                        Text(sgpa)
                    }
                    HStack
                    {
                        Text("Current Arrears : ")
                        Spacer()
                        Text(currentArrear)
                    }
                    HStack
                    {
                        Text("Total Arrears : ")
                        Spacer()
                        Text(arrearhistory)
                    }
                    
                    
                }
                
                
                Section(header: Text("Disciplinary Actions")) {
                    
                    
                    HStack
                    {
                        Text("Total Actions : ")
                        Spacer()
                        Text(totaldisc)
                        
                    }
                    HStack
                    {
                        Text("Current Status : ")
                        Spacer()
                        Text(activedisc)
                    }
                }
                
                Section(header: Text("Hostel Details")) {
                    
                    HStack
                    {
                        Text("Hostel : ")
                        Spacer()
                        Text(hostel)
                    }
                    HStack
                    {
                        Text("Room No : ")
                        Spacer()
                        Text(room)
                    }
                    HStack
                    {
                        Text("Warden : ")
                        Spacer()
                        Text(warden)
                    }
                    HStack
                    {
                        Text("Chief Faculty Warden(s) : ")
                        Spacer()
                        Text(chief)
                    }
                    
                }
                
                Section(header: Text("Father Details (Primary Contact)")) {
                    
                    HStack
                    {
                        Text("Name : ")
                        Spacer()
                        Text(fathername)
                    }
                    HStack
                    {
                        Text("Mobile : ")
                        Spacer()
                        Text(fathercontact)
                    }
                    HStack
                    {
                        Text("Email : ")
                        Spacer()
                        Text(fatheremail)
                    }
                    
                }
                
                
                Section(header: Text("Other Details")) {
                    HStack
                    {
                        Text("Communication Address : ")
                        Spacer()
                        Text(communicationaddress)
                    }
                    HStack
                    {
                        Text("Permanent Address : ")
                        Spacer()
                        Text(permanentaddress)
                    }
                    HStack
                    {
                        Text("Total Passes Taken : ")
                        Spacer()
                        Text(passscount)
                        
                    }
                    HStack
                    {
                        Text("Status : ")
                        Spacer()
                        Text(inorout)
                    }
                }
                
                
            }
            .listStyle(.grouped)
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
        
        
    }
}




struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
        
        
    }
}
