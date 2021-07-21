//
//  OnboardingView.swift
//  TaskManagerApp
//
//  Created by Ari Supriatna on 17/07/21.
//

import SwiftUI

struct OnboardingView: View {
  
  private let screenSize = UIScreen.main.bounds
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    ZStack {
      Color("PortGore")
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        ZStack {
          Image("clouds")
            .resizable()
            .scaledToFit()
            .frame(width: 150)
            .offset(x: 140, y: -140)
          
          Image("sphere")
            .resizable()
            .scaledToFit()
            .frame(width: 350)
            .offset(y: 50)
            .rotationEffect(Angle(degrees: 12))
          
          Image("clouds")
            .resizable()
            .scaledToFit()
            .frame(width: 250)
            .offset(x: -150, y: 240)
        }
        .frame(width: screenSize.width + 35, height: screenSize.height / 1.7)
        .background(
          LinearGradient(
            colors: [Color("Heliotrope"), Color("MediumPurple")],
            startPoint: .top,
            endPoint: .bottomTrailing
          ),
          in: RoundedRectangle(cornerRadius: 50)
        )
        .rotationEffect(Angle(degrees: -5))
        .offset(x: 0, y: -40)
        
        ZStack {
          Circle()
            .fill(.purple)
            .frame(width: 20, height: 20)
            .offset(x: -170, y: -50)
          
          Circle()
            .fill(.purple)
            .frame(width: 15, height: 15)
            .offset(x: 140, y: 50)
          
          Circle()
            .fill(.purple)
            .frame(width: 20, height: 20)
            .offset(x: 170, y: -30)
          
          Circle()
            .fill(.purple)
            .frame(width: 15, height: 15)
            .offset(x: 170, y: -120)
          
          Circle()
            .fill(.purple)
            .frame(width: 15, height: 15)
            .offset(x: -140, y: 50)
          
          VStack(alignment: .center, spacing: 16) {
            Text("Schedule tasks\nwith Alienforce")
              .font(.title)
              .foregroundColor(.white)
              .lineSpacing(8)
            
            Text("Manage daily tasks in\nthe blink of an eye")
              .font(.subheadline)
              .foregroundColor(.white.opacity(0.6))
          }
          .padding(.all, 48)
          .multilineTextAlignment(.center)
        }
        
        buttonSignUpView
        
        Spacer()
      }
      .edgesIgnoringSafeArea(.all)
    }
  }
}

extension OnboardingView {
  
  var buttonSignUpView: some View {
    Button {
      dismiss()
    } label: {
      Text("Sign up")
    }
    .buttonStyle(.plain)
    .foregroundColor(.white)
    .frame(width: 200, height: 60)
    .background(
      LinearGradient(
        colors: [Color("MediumPurple"), Color("Heliotrope")],
        startPoint: .leading,
        endPoint: .trailing
      ),
      in: RoundedRectangle(cornerRadius: 30)
    )
    .shadow(color: Color.purple.opacity(0.7), radius: 100, x: 0, y: -100)
    .shadow(color: Color.purple, radius: 100, x: 0, y: 100)
  }
  
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
