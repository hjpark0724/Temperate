//
//  ContentView.swift
//  Temperate
//
//  Created by HYEONJUN PARK on 2023/05/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        Image("header").resizable()
                            .aspectRatio(contentMode: .fit)
                        Text("Temperate")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.top, 48)
                            .padding(.trailing, 16)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<5, id: \.self) { _ in
                                WeatherBox()
                            }
                        }
                        .padding(.horizontal, 20)
                    }.padding(.bottom, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<3, id: \.self) { _ in
                                RainfallCard()
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                    
                    
                }
                
            }
            .background(
                //linear-gradient(180deg, #171140 50%, #2c5b5c 80%,#106275 100%)
                .linearGradient(stops: [
                    Gradient.Stop(color:Color(#colorLiteral(red: 0.09019607843, green: 0.06666666667, blue: 0.2509803922, alpha: 1)), location: 0.5),
                    Gradient.Stop(color:Color(#colorLiteral(red: 0.1725490196, green: 0.3568627451, blue: 0.3607843137, alpha: 1)), location: 0.8),
                    Gradient.Stop(color:Color(#colorLiteral(red: 0.06274509804, green: 0.3843137255, blue: 0.4588235294, alpha: 1)), location: 1.0)], startPoint: .top, endPoint: .bottom)
            )
            VStack {
                Text("Hello world")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 64)
            
            
            
        }
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
