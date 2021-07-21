//
//  HomeView.swift
//  TaskManagerApp
//
//  Created by Ari Supriatna on 18/07/21.
//

import SwiftUI

struct HomeView: View {
  
  private let screenSize = UIScreen.main.bounds
  
  var body: some View {
    ZStack {
      Color("SteelGray")
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        headerView

        ScrollView(.vertical, showsIndicators: false) {
          MainCardView()
          sectionTitleView
          taskListView
        }
      }
    }
    .navigationBarHidden(true)
  }
}

extension HomeView {
  
  var headerView: some View {
    HStack {
      Image(systemName: "list.dash")
      Spacer()
      Image(systemName: "bell")
    }
    .foregroundColor(.white)
    .font(.system(size: 24))
    .padding(.all, 24)
  }
  
  var sectionTitleView: some View {
    HStack {
      Text("Recent Tasks")
        .font(.headline)
        .foregroundColor(.white)
      
      Spacer()
      
      Text("See all")
        .font(.subheadline)
        .foregroundColor(.purple)
        .fontWeight(.light)
    }
    .padding([.top, .horizontal], 24)
  }
  
  var taskListView: some View {
    ForEach(TaskModel.stubs, id: \.id) { item in
      CardItemView(task: item).padding(.vertical, 8)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      HomeView()
    }
  }
}
