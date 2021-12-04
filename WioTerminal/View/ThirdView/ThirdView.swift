//
//  ThirdView.swift
//  WioTerminal
//
//  Created by Quang Nguyen on 11/16/21.
//

import SwiftUI

struct ThirdView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    
    init(){
            UITableView.appearance().backgroundColor = .clear
        }
    
    var body: some View {
        NavigationView {
            GeometryReader { fullView in
                Color(hex: Constant.backgroundColor)
                    .ignoresSafeArea(edges: .top)
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            Spacer()
                            HStack {
                                ForEach(0..<3) { index in
                                    GeometryReader { geo in
                                        ProfileView(image: viewModel.profiles[index].image,
                                                    text: viewModel.profiles[index].text,
                                                    description: viewModel.profiles[index].description,
                                                    width: 250,
                                                    title: viewModel.profiles[index].title)
                                            .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).midX - fullView.size.width / 2 ) / 10), axis: (x: 0, y: 1, z: 0))
                                    }
                                    .frame(width: 300)
                                }
                            }
                            .padding(.trailing, 100)
                            .padding(.leading, 50)
                        }
                        .frame(height: 550)
                        
                        Form {
                            Section(header: Text("Resouce")) {
                                HStack {
                                    Link("IoT MQTT Server Github", destination: URL(string: "https://github.com/QuangNguyeen/Azure-IO-TSmartGarden-")!)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "link.circle")
                                }
                                
                                HStack {
                                    Link("Resource App Github", destination: URL(string: "https://github.com/QuangNguyeen/Azure-IO-TSmartGarden-")!)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "link.circle")
                                }
                            }
                            
                            Section(header: Text("Báo cáo Đồ án")) {
                                HStack {
                                    Link("Đồ_án.dox", destination: URL(string: "https://github.com/QuangNguyeen/Azure-IO-TSmartGarden-")!)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "link.circle")
                                }
                                
                                HStack {
                                    Link("Đồ_án.pdf", destination: URL(string: "https://github.com/QuangNguyeen/Azure-IO-TSmartGarden-")!)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "link.circle")
                                }
                                
                                HStack {
                                    Link("Đồ_án.pptx", destination: URL(string: "https://github.com/QuangNguyeen/Azure-IO-TSmartGarden-")!)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "link.circle")
                                }
                            }
                        }
                        .frame(height: 500)
                        .background(Color(hex: Constant.backgroundColor))
                    }
                }
            }
            .navigationTitle("Hồ sơ")
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
//
//ProfileView(image: "sv",
//            text: "Nguyễn Văn Quang",
//            description: "KT & DKTDH 06",
//            width: 200)
//
//ProfileView(image: "sv",
//            text: "Nguyễn Văn Quang",
//            description: "KT & DKTDH 06",
//            width: 200)
//
//ProfileView(image: "sv",
//            text: "Nguyễn Văn Quang",
//            description: "KT & DKTDH 06",
//            width: 200)
