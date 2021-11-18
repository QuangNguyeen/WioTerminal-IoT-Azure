//
//  MonitorView.swift
//  WioTerminal
//
//  Created by nguyen.van.quangf on 18/11/2021.
//

import SwiftUI

struct MonitorView: View {
    
    private let width: CGFloat = 165
    private let height: CGFloat = 165
    @State var speakerToggle = false
    @State var lockToggle = false
    @State var pumpToggle = false
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: Constant.backgroundColor)
                    .ignoresSafeArea(edges: .top)
                
                ScrollView (.vertical, showsIndicators: false ) {
                    
                    VStack {
                        HStack {
                            // MARK: -  temp
                            ZStack {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.white)
                                    .frame(width: width, height: height)
                                    .shadow(color: Color(hex: "e5e5e5"), radius: 2, x: -1, y: 1.5)
                                VStack {
                                    Image("temp")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                        .padding(10)
                                    
                                    Text("Nhiệt độ")
                                        .font(.custom(Font.nunitoRegular, size: 15))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                    
                                    Text("5")
                                        .font(.custom(Font.nunitoRegular, size: 40))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                    + Text("°C")
                                        .font(.custom(Font.nunitoRegular, size: 20))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                }
                            }
                            
                            Spacer()
                            
                            // MARK: -  humi
                            ZStack {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.white)
                                    .frame(width: width, height: height)
                                    .shadow(color: Color(hex: "e5e5e5"), radius: 2, x: -1, y: 1.5)
                                
                                VStack {
                                    Image("humi")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                        .padding(10)
                                    
                                    Text("Độ ẩm")
                                        .font(.custom(Font.nunitoRegular, size: 15))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                    
                                    Text("30")
                                        .font(.custom(Font.nunitoRegular, size: 40))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                    + Text("%RH")
                                        .font(.custom(Font.nunitoRegular, size: 20))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                }
                            }
                        }
                        .padding(.bottom)
                        
                        HStack {
                            // MARK: -  light
                            ZStack {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.white)
                                    .frame(width: width, height: height)
                                    .shadow(color: Color(hex: "e5e5e5"), radius: 2, x: -1, y: 1.5)
                                VStack {
                                    Image("light")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                        .padding(10)
                                    
                                    Text("Ánh sáng")
                                        .font(.custom(Font.nunitoRegular, size: 15))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                    
                                    Text("27")
                                        .font(.custom(Font.nunitoRegular, size: 40))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                    + Text("%")
                                        .font(.custom(Font.nunitoRegular, size: 20))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                }
                            }
                            
                            Spacer()
                            
                            // MARK: -  speaker
                            ZStack {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.white)
                                    .frame(width: width, height: height)
                                    .shadow(color: Color(hex: "e5e5e5"), radius: 2, x: -1, y: 1.5)
                                
                                VStack {
                                    Image("speaker")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                        .padding(10)
                                    
                                    Text("Phát nhạc")
                                        .font(.custom(Font.nunitoRegular, size: 15))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                    
                                    Toggle(isOn: $speakerToggle) {
                                        Text("")
                                    }
                                    .offset(x: -65)
                                }
                            }
                        }.padding(.bottom)
                        
                        HStack {
                            // MARK: -  lock
                            ZStack {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.white)
                                    .frame(width: width, height: height)
                                    .shadow(color: Color(hex: "e5e5e5"), radius: 2, x: -1, y: 1.5)
                                
                                VStack {
                                    Image("lock")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                        .padding(10)
                                    
                                    Text("Chống trộm")
                                        .font(.custom(Font.nunitoRegular, size: 15))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                    
                                    Toggle(isOn: $lockToggle) {
                                        Text("")
                                    }
                                    .offset(x: -65)
                                }
                            }
                            
                            Spacer()
                            
                            // MARK: -  pump
                            ZStack {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.white)
                                    .frame(width: width, height: height)
                                    .shadow(color: Color(hex: "e5e5e5"), radius: 2, x: -1, y: 1.5)
                                
                                VStack {
                                    Image("pump")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40)
                                        .padding(10)
                                    
                                    Text("Máy bơm")
                                        .font(.custom(Font.nunitoRegular, size: 15))
                                        .foregroundColor(Color(hex: Constant.greyColor))
                                    
                                    Toggle(isOn: $pumpToggle) {
                                        Text("")
                                    }
                                    .offset(x: -65)
                                }
                            }
                        }.padding(.bottom)
                        
                        HStack {
                            // MARK: -  light
                            ZStack {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.white)
                                    .frame(width: width, height: height)
                                    .shadow(color: Color(hex: "e5e5e5"), radius: 2, x: -1, y: 1.5)
                                Text("+")
                                    .font(.custom(Font.nunutiBold, size: 50))
                                    .foregroundColor(Color(hex: Constant.greyColor))
                            }
                            
                            Spacer()
                            
                            // MARK: -  speaker
                            ZStack {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color.white)
                                    .frame(width: width, height: height)
                                    .shadow(color: Color(hex: "e5e5e5"), radius: 2, x: -1, y: 1.5)
                                
                                Text("+")
                                    .font(.custom(Font.nunutiBold, size: 50))
                                    .foregroundColor(Color(hex: Constant.greyColor))
                            }
                        }.padding(.bottom)
                    // MARK: -  VStack
                    }
                    .padding(.horizontal, 38)
                }
            }
            .navigationTitle("Monitor")
        }
    }
}

struct MonitorView_Previews: PreviewProvider {
    static var previews: some View {
        MonitorView()
    }
}