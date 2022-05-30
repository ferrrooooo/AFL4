//
//  NaView.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 29/05/22.
//

import SwiftUI

struct NaView: View {
    
    @State var title: String = "This is my text"
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                Button {
                    self.title = "Button #1 Was Pressed"
                } label: {
                    VStack() {
                        HStack {
                            Image(systemName: "pin")
                                .resizable()
                                .frame(width: 23, height: 42)
                                .padding(.leading,15)
                                .padding(.trailing,5)
                            
                            VStack {
                                Text("Tempat Wisata")
                                    .fontWeight(.semibold)
                                    .font(.title)
                                    .padding(.trailing, 134)
                                Text("Tourist Attraction")
                                    .font(.subheadline)
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing,200)
                            }
                        }
                        
                        .background(Color.gray)
                        .cornerRadius(10)
                    }
                }

                Button {
                    self.title = "Button #2 Was Pressed"
                } label: {
                    VStack() {
                        HStack {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .padding(.leading,10)
                            VStack {
                                Text("Favorite")
                                    .fontWeight(.semibold)
                                    .font(.title)
                                    .padding(.trailing, 220)
                                Text("Tourist Attraction")
                                    .font(.subheadline)
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing,205)
                            }
                        }
                        .background(Color.gray)
                        .cornerRadius(10)
                    }
                }

                Button {
                    self.title = "Button #3 Was Pressed"
                } label: {
                    VStack() {
                        HStack {
                            Image(systemName: "gearshape")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .padding(.leading,10)
                            VStack {
                                Text("Settings")
                                    .fontWeight(.semibold)
                                    .font(.title)
                                    .padding(.trailing, 220)
                                Text("Tourist Attraction")
                                    .font(.subheadline)
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing,205)
                            }
                        }
                    .background(Color.gray)
                    .cornerRadius(10)
                    }
                }
                
            }
            .navigationTitle("Hello,Sutthaya")
            
        }
        
    }
}

struct TWMenu: View {
    var body: some View {
        VStack() {
            HStack {
                Image(systemName: "fork.knife")
                    .resizable()
                    .frame(width: 23, height: 42)
                    .padding(.leading,15)
                    .padding(.trailing,5)
                
                VStack {
                    Text("Food & Beverage")
                        .fontWeight(.semibold)
                        .font(.title)
                        .padding(.trailing, 134)
                    Text("Makanan & Minuman")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing,200)
                }
            }
            .background(Color.gray)
            .cornerRadius(10)
        }
    }
}
    

struct MyOtherScreen: View {
    var body: some View {
        ZStack{
            Color.blue
        }
    }
}

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "Well"
    }
}

struct NaView_Previews: PreviewProvider {
    static var previews: some View {
        NaView()
    }
}
