//
//  HomeViewRow.swift
//  LearningApp
//
//  Created by Zoe Nelson on 5/16/22.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack {
                
                Spacer()
                
                // Image
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                
                // Text
                VStack (alignment: .leading, spacing: 10){
                    
                    // Headline
                    Text(title)
                        .bold()
                    
                    // Description
                    Text(description)
                        .padding(.bottom, 20)
                    
                    // Icons
                    HStack {
                        
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        
                        Text(count)
                            .font(.caption)
                        
                        Spacer()
                        
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        
                        Text(time)
                            .font(.caption)
                        
                        Spacer()
                        
                    }
                    
                }
                .padding(.leading, 20)
                
                Spacer()
                
                
            }
        }
        
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", title: "Learn Swift", description: "some description", count: "10 lessons", time: "3 hours")
    }
}
