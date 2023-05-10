//
//  WeatherBox.swift
//  Temperate
//
//  Created by HYEONJUN PARK on 2023/05/10.
//

import SwiftUI

struct WeatherBox: View {
    var body: some View {
        //linear-gradient(180deg, #2e9ca6 0%, #1f7382 30.73%, #428c76 100%)
        VStack {
            Image("cloud")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60)
            Text("Dust Storm")
                .font(.caption)
                .foregroundColor(.white)
            ForEach(0..<3, id: \.self) { _ in
                DegreeView()
            }
        }
        .frame(width: 160, height: 260)
        .background(
            .linearGradient(stops: [
                Gradient.Stop(color:Color(#colorLiteral(red: 0.1803921569, green: 0.6117647059, blue: 0.6509803922, alpha: 1)), location: 0.0),
                Gradient.Stop(color:Color(#colorLiteral(red: 0.1215686275, green: 0.4509803922, blue: 0.5098039216, alpha: 1)), location: 0.30),
                Gradient.Stop(color:Color(#colorLiteral(red: 0.2588235294, green: 0.5490196078, blue: 0.462745098, alpha: 1)), location: 1.0)], startPoint: .top, endPoint: .bottom)
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(.white, lineWidth: 1)
        )
        .shadow(color: .gray.opacity(0.7), radius: 4, x: 0, y: 4)
    }
}

struct WeatherBox_Previews: PreviewProvider {
    static var previews: some View {
        WeatherBox()
    }
}

struct DegreeView: View {
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 4,style: .continuous)
                .foregroundColor(.white)
                .frame(width: 15, height: 10)
            Text("36 deg")
                .font(.caption)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal, 32)
    }
}
