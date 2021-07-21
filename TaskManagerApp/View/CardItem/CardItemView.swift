//
//  CardItemView.swift
//  TaskManagerApp
//
//  Created by Ari Supriatna on 19/07/21.
//

import SwiftUI

struct CardItemView: View {
  
  private let screenSize = UIScreen.main.bounds
  var task: TaskModel
  
  var body: some View {
    HStack(alignment: .center, spacing: 16) {
      Image(systemName: task.isFinished ? "checkmark.circle.fill" : "xmark.circle.fill")
        .resizable()
        .frame(width: 50, height: 50)
        .tint(.white)
        .accentColor(.white)
        .foregroundColor(task.isFinished ? .green : .purple)
        .shadow(color: task.isFinished ? .green : .purple, radius: 10, x: 0, y: 5)
      
      VStack(alignment: .leading, spacing: 8) {
        Text(task.title)
          .font(.headline)
        
        if !task.isFinished {
          Text(task.description)
            .font(.subheadline)
            .foregroundColor(.gray)
        }
      }
      .foregroundColor(.white)
      
      Spacer()
      
      Text(task.isFinished ? "Finished" : "Today")
        .font(.headline)
        .foregroundColor(task.isFinished ? .purple : .gray)
    }
    .padding(.all, 24)
    .frame(width: screenSize.width - 48, height: task.isFinished ? 100 : 140)
    .background(Color("Charade"), in: RoundedRectangle(cornerRadius: 20))
  }
}

struct CardItemView_Previews: PreviewProvider {
  static var previews: some View {
    CardItemView(task: TaskModel.stubs[0])
  }
}
