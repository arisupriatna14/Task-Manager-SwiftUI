//
//  MainCardView.swift
//  TaskManagerApp
//
//  Created by Ari Supriatna on 21/07/21.
//

import SwiftUI

struct MainCardView: View {
  private let screenSize = UIScreen.main.bounds
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Text("Alienforce")
        .font(.system(size: 50))
        .overlay(
          LinearGradient(
            colors: [
              Color("Heliotrope"),
              Color("Heliotrope"),
              Color("MediumPurple"),
              Color("MediumPurple")
            ],
            startPoint: .leading,
            endPoint: .trailing
          )
        )
        .mask(Text("Alienforce").font(.system(size: 50)))
      
      Text("Powered by Alphadesign")
        .foregroundColor(.white)
        .font(.subheadline)
      
      Spacer()
      
      HStack {
        HStack(alignment: .center, spacing: 0) {
          Image("user_1")
            .resizable()
            .scaledToFit()
            .frame(width: 50)
          
          Image("user_2")
            .resizable()
            .scaledToFit()
            .frame(width: 50)
            .offset(x: -18)
          
          Image("user_3")
            .resizable()
            .scaledToFit()
            .frame(width: 50)
            .offset(x: -28)
        }
        
        Spacer()
      }
    }
    .padding(.all, 24)
    .frame(width: screenSize.width - 48, height: 220)
    .background(Color("Charade"), in: RoundedRectangle(cornerRadius: 30))
  }
}

struct MainCardView_Previews: PreviewProvider {
  static var previews: some View {
    MainCardView()
  }
}
