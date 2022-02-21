//
//  ContentView.swift
//  Uitesting
//
//  Created by shehan karunarathna on 2022-02-21.
//

import SwiftUI

class UitestingViewModel:ObservableObject{
    @Published var textFileldText:String = ""
    let placeHolderText :String = "Add your name ..."
    @Published var userSignIn:Bool = false
    func signupButtonPressed (){
        guard !textFileldText.isEmpty else {return}
        userSignIn = true
    }
}
struct SignInView: View {
    @State var showAlert : Bool = false
    var body: some View {
        NavigationView{
            VStack(spacing:20){
                Button{
                    showAlert.toggle()
                }label: {
                    Text("Show welcome alert")
                        .font(.headline)
                        .frame(maxWidth:.infinity)
                        .padding()
                        .background(.red)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Welcome to the app!"))
                }
                NavigationLink {
                    Text("Destination")
                } label: {
                    Text("Navigate")
                        .font(.headline)
                        .frame(maxWidth:.infinity)
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }

            }
            .padding()
            .navigationTitle("Welcome!")
        }
      
    }
}
struct ContentView: View {
    @StateObject var vm = UitestingViewModel()
    var body: some View {
        ZStack{
            LinearGradient(colors: [.black,.blue], startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            ZStack{
                if vm.userSignIn {
                    SignInView()
                } else {
                    signUpForm
                        .frame(maxWidth:.infinity, maxHeight: .infinity)
                        .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .leading)))
                }
            }
            

        }
    }
}

extension ContentView {
    var signUpForm : some View{
        VStack{
            TextField(vm.placeHolderText, text: $vm.textFileldText)
                .font(.headline)
                .padding()
                .background(.white)
                .cornerRadius(20)
                .accessibilityIdentifier("textField")
            
            Button{
                withAnimation(.spring()) {
                    vm.signupButtonPressed()
                }
               
            }label: {
                Text("sign up")
                    .font(.headline)
                    .frame(maxWidth:.infinity)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                
            }
              
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
