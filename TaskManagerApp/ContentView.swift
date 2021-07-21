//
//  ContentView.swift
//  TaskManagerApp
//
//  Created by Ari Supriatna on 17/07/21.
//

import SwiftUI

struct ContentView: View {
  @State var showOnboarding: Bool = true
  
  var body: some View {
    HomeView()
      .fullScreenCover(isPresented: $showOnboarding) {
        OnboardingView()
      }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
