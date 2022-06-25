//
//  LoginView.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 14/06/22.
//

import SwiftUI
import SwiftSoup
import Foundation
var details : [String] = [""]



struct LoginView: View {
    
    @State var deg: Double = 0;
    
    @State var click:Bool = false;
    
    @State var isLoading: Bool = false
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
    
    @State var crederror : Bool = false
    
    
    @State var valid: Bool = false
    @State var invalid: Bool = false
    var body: some View {
        
      
            
            
            
            ZStack
            {
                
                
                
                
                
                VStack
                {
                    
                    
                    
                    
                    
                    
                    
                    Image("amritadraw")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top,50)
                    
                    
                    
                    
                    Text("CMS Login")
                        .font(.title)
                        
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                    
                    
                    
                    Form {
                        TextField(text: $rollNumber, prompt: Text("Username")) {
                            Text("Username")
                        }
                        
                        SecureField(text: $password, prompt: Text("Password")) {
                            Text("Password")
                        }
                        
                     
                        
                        
                        HStack
                        {
                            
                            
                            Spacer()
                            
                            
                            
                            Button {
                                
                                
                                click = true
                                
                                do
                                {
                                    
                                    isLoading = true
                                    
                                    let url = URL(string: "https://cms.cb.amrita.edu/login")!
                                    let html = try String(contentsOf: url)
                                    let doc: Document = try SwiftSoup.parse(html)
                                    let p: Element = try doc.select("input").first()!
                                    let token = try p.attr("value")
                                    
                                    print(token)
                                    
                                    let url2 = URL(string: "https://cms.cb.amrita.edu/login")!
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    var request = URLRequest(url: url)
                                    
                                    request.httpMethod = "POST"
                                    
                                    let postString = "_token="+token+"&username="+rollNumber+"&password="+password;
                                    
                                    request.httpBody = postString.data(using: .utf8)
                                    
                                    //log in
                                    URLSession.shared.dataTask(with: request) { data, response, error in
                                        guard let data = data, error == nil else {
                                            // check for fundamental networking error
                                            invalid = true
                                            return
                                        }
                                        
                                        if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode
                                            != 200 {           // check for http errors
                                            print("User and Pass is wrong")
                                        }
                                        
                                        let responseString = String(data: data, encoding: .utf8)
                                        print("Done")
                                        
                                        let urlnext = URL(string: "https://cms.cb.amrita.edu/students")!
                                        //get page after loggin in
                                        URLSession.shared.dataTask(with: urlnext) { datanext, responsenext, errornext in
                                            guard let datanext = datanext, errornext == nil else {
                                                
                                                return
                                            }
                                            
                                            let stringnext = String(data: datanext, encoding: .utf8)
                                            
                                            
                                            do
                                            {
                                                
                                                
                                                
                                                let doc: Document = try SwiftSoup.parse(stringnext!)
                                                
                                                
                                                let name: Element = try doc.getElementsByAttributeValue("style", "margin-top: 0;").select("small").first()!
                                                
                                                if(try! name.text()=="")
                                                {
                                                    invalid = true
                                                }
                                                else
                                                {
                                                    valid = true
                                                }
                                                details.append(try! name.text())
                                                let roll: Element = try doc.select(".weight-400").first()!
                                                details.append(try! roll.text())
                                                let photo: Element = try doc.select(".student-photo").first()!
                                                image = try! photo.attr("src")
                                                
                                                
                                                
                                                let p: Elements = try doc.select("td")
                                                sroll = try! roll.text()
                                                for j in p{
                                                    
                                                    details.append(try! j.text())
                                                    
                                                }
                                                
                                                sname = details[1];
                                                sroll = details[2];
                                                campus = details[3];
                                                academicProgram = details[4];
                                                branch = details[5];
                                                section = details[6];
                                                advisor = details[7];
                                                year = details[8];
                                                gender = details[9];
                                                dob = details[10];
                                                bloodGroup = details[11];
                                                state = details[12];
                                                resident = details[13];
                                                mobile = details[14];
                                                email = details[15];
                                                nationality = details[16];
                                                community = details[17];
                                                mothertongue = details[18];
                                                communicationaddress = details[19];
                                                permanentaddress = details[20];
                                                fathername = details[21];
                                                fathercontact = details[22];
                                                fatheremail = details[23];
                                                passscount = details[24];
                                                inorout = details[25];
                                                currentSemester = details[26];
                                                cgpa = details[27];
                                                sgpa = details[28];
                                                currentArrear = details[29];
                                                arrearhistory = details[30];
                                                activedisc = details[31];
                                                totaldisc = details[32];
                                                activescholarship = details[33];
                                                totalscholarship = details[34];
                                                activedues = details[35];
                                                totaldues = details[36];
                                                hostel = details[37];
                                                room = details[38];
                                                warden = details[39];
                                                chief = details[40];
                                                
                                                isLoading = false
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                            }
                                            
                                            
                                            catch Exception.Error(type: let type, Message: let message){
                                                print(type)
                                                print(message)
                                            }
                                            catch{
                                                print("")
                                                
                                            }
                                            
                                            
                                            
                                        }.resume()
                                        
                                        
                                        
                                    }.resume()
                                    
                                    
                                    
                                }
                                
                                
                                catch Exception.Error(type: let type, Message: let message){
                                    print(type)
                                    print(message)
                                }
                                catch{
                                    print("")
                                    
                                }
                                
                                
                                
                                
                                
                                
                                
                                
                            } label: {
                                Text("Login")
                                    .padding(.horizontal,15)
                                    .padding(.vertical,9)
                                    .background(Color(red: 168/255, green: 20/255, blue: 60/255))
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                
                            }
                           
                            .alert("Credential Error", isPresented: $crederror) {
                                Button("Ok"){}
                            }
                            
                            Spacer()
                            
                            Button {
                                rollNumber = ""
                                password = ""
                            } label: {
                                
                                Text("Reset")
                                    .padding(.horizontal,15)
                                    .padding(.vertical,9)
                                    .foregroundColor(Color(red: 168/255, green: 20/255, blue: 60/255))
                                    
                            }
                           
                            
                            Spacer()
                            
                        }
                        .padding(.vertical,5)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
                if(click && isLoading == false)
                {
                    ContentView(data:details)
                }
                
                
                
                
                
                
                if(isLoading)
                {
                    
                    
                    ZStack
                    {
                        
                        
                        ProgressView()
                        
                            .frame(maxWidth:.infinity, maxHeight: .infinity, alignment: .center)
                            .scaleEffect(2)
                        
                            .rotation3DEffect(.degrees(deg), axis: (x: 1 , y:1, z:1))
                            .onAppear {
                                DispatchQueue.global(qos: .userInitiated).async {
                                    while(true)
                                    {
                                        deg+=10
                                        
                                        usleep(45000)
                                    }
                                    
                                    
                                }
                            }
                        
                    }
                    .background(Color(red:240/255, green: 240/255, blue: 240/255))
                    .frame(maxWidth:90, maxHeight: 90, alignment: .center)
                    .cornerRadius(20)
 
                }
                
            }
  
        }
           
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
