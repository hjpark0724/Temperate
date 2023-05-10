//
//  RainfallView.swift
//  Temperate
//
//  Created by HYEONJUN PARK on 2023/05/10.
//

import SwiftUI
import Charts
struct RainfallCard: View {
    
    let rainfalls = [
        RainfallPerDay(month: 1, rainfall: 60),
        RainfallPerDay(month: 2, rainfall: 40),
        RainfallPerDay(month: 3, rainfall: 0),
        RainfallPerDay(month: 4, rainfall: 20),
        RainfallPerDay(month: 5, rainfall: 80),
        RainfallPerDay(month: 6, rainfall: 90),
        RainfallPerDay(month: 7, rainfall: 10),
        RainfallPerDay(month: 8, rainfall: 20),
        RainfallPerDay(month: 9, rainfall: 20),
        RainfallPerDay(month: 10, rainfall: 20)
    ]
    var body: some View {
        //linear-gradient(180deg, #fdca2d 0%, #fdca2d 54.17%, #ff9a41 100%)
        VStack{
            Chart {
                ForEach(rainfalls) { rainfall in
                    LineMark(x: .value("day", rainfall.month), y: .value("rainfall", rainfall.rainfall))
                        .interpolationMethod(.catmullRom)
                        .foregroundStyle(.white)
                }
            }
            
        }
        .frame(width: 320, height: 320)
        .background(
            .linearGradient(stops: [
                Gradient.Stop(color:Color(#colorLiteral(red: 0.9921568627, green: 0.7921568627, blue: 0.1764705882, alpha: 1)), location: 0.0),
                Gradient.Stop(color:Color(#colorLiteral(red: 0.9921568627, green: 0.7921568627, blue: 0.1764705882, alpha: 1)), location: 0.54),
                Gradient.Stop(color:Color(#colorLiteral(red: 1, green: 0.6039215686, blue: 0.2549019608, alpha: 1)), location: 1.0)], startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(20)
        
    }
}

struct RainfallPerDay : Identifiable {
    let month: Int
    let rainfall: Int
    var id: Int { month }
}


struct RainfallCard_Previews: PreviewProvider {
    static var previews: some View {
        RainfallCard()
    }
}
