//
//  ContentView.swift
//  pomodoroUI
//
//  Created by Said Tura Saidazimov on 05.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var selectedTab: Int = 1
    init(){
        UITabBar.appearance().unselectedItemTintColor = .white
    }
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            /// Page 1
            ZStack{
                
                Image("backGround")
                    .resizable()
                    .ignoresSafeArea()
               
                VStack{
                    Button(action: {}) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 24)
                            .fill(Color.white)
                            .frame(width: 170, height: 36)
                            .opacity(0.2)
                        HStack{
                            Image(systemName: "pencil")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                            Text("Focus Category")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .medium, design: .default))
                        }
                    }.padding(.bottom, 36)
                        
                    }
                    ZStack{
                        Circle()
                            .stroke(Color.white, lineWidth: 6)
                            .opacity(0.3)
                            .frame(width: 250, height: 250)
                            .overlay(
                                Circle()
                                    .trim(from: 0.0, to: 0.0) // first page, comment out and uncomment the next statement to activate the second page
                                //  .trim(from: 0.0, to: 0.1) // second page
                                    .stroke(Color.white, lineWidth: 6)
                                    .rotationEffect(.degrees(270)))
                        VStack
                        {Text("25:00")
                            // Text("24:32") // second page
                            // Text("04:48") // third page
                                .foregroundColor(.white)
                                .font(.system(size: 44, weight: .bold, design: .default))
                       
                        Text("Focus on your task")
                        //Text("Break")  // third page
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular, design: .default))
                        }
                    }
                    
                    
                    HStack {
                        /// Commend the button below and activate the second button for page 2
                        Button(action: {}) {
                            Image(systemName: "play.circle.fill")
                                .resizable()
                                .frame(width: 56, height: 56)
                                .foregroundColor(.white)
                                .opacity(0.8)
                                .padding(.trailing, 80)
                        }
                        /// This is a button for the pause in page 2 of HW, uncomment to apply
//                        Button(action: {}) {
//                            Image(systemName: "pause.circle.fill")
//                                .resizable()
//                                .frame(width: 56, height: 56)
//                                .foregroundColor(.white)
//                                .opacity(0.8)
//                                .padding(.trailing, 80)
//                        }
                        
                        Button(action: {}) {
                            Image(systemName: "stop.circle.fill")
                                .resizable()
                                .frame(width: 56, height: 56)
                                .foregroundColor(.white)
                                .opacity(0.8)
                        }
                    }.padding(.top, 40)
                }
                // Page 3: Uncomment to check
//                VStack {
//                    Spacer()
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 20)
//                            .fill(Color.white)
//                            .frame( height: 392, alignment: .bottom)
//                            .opacity(1)
//                        VStack{
//                            HStack{
//                                Spacer()
//                                Text("Hello").frame(alignment: .center)
//                                Spacer()
//                                Image(systemName: "xmark")
//                            }.padding(.trailing, 26)
//                            HStack{
//                                Button(action: {}) {
//                                    ZStack{
//
//                                        RoundedRectangle(cornerRadius: 16)
//                                            .fill(Color.gray.opacity(0.2))
//                                            .frame(width: 172, height: 60)
//                                        Text("Work").foregroundColor(.black)
//                                    }
//                                }
//                                Button(action: {}) {
//                                    ZStack{
//
//                                        RoundedRectangle(cornerRadius: 16)
//                                            .fill(Color.gray.opacity(0.2))
//                                            .frame(width: 172, height: 60)
//                                        Text("Study").foregroundColor(.black)
//                                    }
//                                }
//
//                            }
//                            HStack{
//                                Button(action: {}) {
//                                    ZStack{
//
//                                        RoundedRectangle(cornerRadius: 16)
//                                            .fill(Color.black)
//                                            .frame(width: 172, height: 60)
//                                        Text("Workout").foregroundColor(.white)
//                                    }
//                                }
//
//                                Button(action: {}) {
//                                    ZStack{
//
//                                        RoundedRectangle(cornerRadius: 16)
//                                            .fill(Color.gray.opacity(0.2))
//                                            .frame(width: 172, height: 60)
//                                        Text("Reading").foregroundColor(.black)
//                                    }
//                                }
//
//
//                            }
//                            HStack{
//                                Button(action: {}) {
//                                    ZStack{
//
//                                        RoundedRectangle(cornerRadius: 16)
//                                            .fill(Color.gray.opacity(0.2))
//                                            .frame(width: 172, height: 60)
//                                        Text("Meditation").foregroundColor(.black)
//                                    }
//                                }
//
//                                Button(action: {}) {
//                                    ZStack{
//
//                                        RoundedRectangle(cornerRadius: 16)
//                                            .fill(Color.gray.opacity(0.2))
//                                            .frame(width: 172, height: 60)
//                                        Text("Others").foregroundColor(.black)
//                                    }
//                                }
//
//
//                            }
//
//
//                        }
//
//
//                    }
//
//                }
//                .edgesIgnoringSafeArea(.all)
                
            }.tabItem {
                Label("Main", systemImage: "house")
            }
            .tag(1)
            
            /// Page 2
            ZStack{
                Color.black.ignoresSafeArea()
                VStack{
                    HStack{
                        Image(systemName: "chevron.backward")
                            .frame(width: 24, height: 18)
                            .foregroundColor(.white)
                        Spacer()
                        Text("Settings").foregroundColor(.white)
                            .font(.system(size: 17, weight: .semibold, design: .default))
                        Spacer()
                        Text("Save").foregroundColor(.white)
                            .font(.system(size: 17, weight: .semibold, design: .default))
                    }.padding(.bottom, 56)
                        .padding(.trailing, 9)
                        .padding(.leading, 6)
                    Group{
                        HStack{
                            Text("Focus Time").foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular, design: .default))
                            Spacer()
                            Text("25:00").foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 17, weight: .regular, design: .default))
                        }
                        Divider().background(Color.white).frame( height: 20)
                        HStack{
                            Text("Break time").foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular, design: .default))
                            Spacer()
                            Text("05:00").foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 17, weight: .regular, design: .default))
                            //TextField("Break Time", text: $text).foregroundColor(.white).frame(width: 46).keyboardType(.numberPad)
                        }
                        Spacer()
                    }.padding(.trailing, 6)
                        .padding(.leading, 16)
                  
                }.padding(.top, 56)
                Spacer()
                
            }
            .tabItem{
                Label("Settings", systemImage: "circle.grid.3x3.circle")
            }
            .background(Color.black)
            .tag(2)
            
            /// Page 3
            ZStack{
                Color.black.ignoresSafeArea(.all)
                VStack{
                    HStack{
                        Text("History").foregroundColor(.white).font(.system(size: 17, weight: .semibold))
                    }
                    .padding(.top, 56)
                    .padding(.bottom, 26)
                    
                    VStack{
                        HStack{
                            Text("21.11.21").foregroundColor(.white)
                                .font(.system(size: 20, weight: .semibold, design: .default))
                            Spacer()
                        }.padding(.bottom, 12)
                        HStack{
                            Text("Focus time").foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular, design: .default))
                            Spacer()
                            Text("01:28:32").foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 17, weight: .regular, design: .default))
                        }
                        Divider().background(Color.white)
                        HStack{
                            Text("Break time").foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular, design: .default))
                            Spacer()
                            Text("05:00").foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 17, weight: .regular, design: .default))
                        }.padding(.bottom, 32)
                    }
                    // day 1
                    
                    // day 2
                    VStack{
                        HStack{
                            Text("20.11.21").foregroundColor(.white)
                                .font(.system(size: 20, weight: .semibold, design: .default))
                            Spacer()
                        }.padding(.bottom, 12)
                        HStack{
                            Text("Focus time").foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular, design: .default))
                            Spacer()
                            Text("01:28:32").foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 17, weight: .regular, design: .default))
                        }
                        Divider().background(Color.white)
                        HStack{
                            Text("Break time").foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular, design: .default))
                            Spacer()
                            Text("05:00").foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 17, weight: .regular, design: .default))
                        }.padding(.bottom, 32)
                    }
                   
                    // day 3
                    VStack{
                        HStack{
                            Text("20.11.21").foregroundColor(.white) .font(.system(size: 20, weight: .semibold, design: .default))
                            Spacer()
                        }.padding(.bottom, 12)
                        HStack{
                            Text("Focus time").foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular, design: .default))
                            Spacer()
                            Text("01:28:32").foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 17, weight: .regular, design: .default))
                            
                        }
                        Divider().background(Color.white)
                        HStack{
                            Text("Break time").foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular, design: .default))
                            Spacer()
                            Text("05:00").foregroundColor(.white.opacity(0.6))
                                .font(.system(size: 17, weight: .regular, design: .default))
                        }
                    }
                    Spacer()
                }.padding(.leading, 16)
                .padding(.trailing, 16)
                
            }
                .tabItem{
                    Label("History", systemImage: "doc")
                }.tag(3)
            

        }
        
    }}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
