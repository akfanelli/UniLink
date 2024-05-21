//
//  HomeView.swift
//  UniLink
//
//  Created by Annie Fanelli on 5/17/24.
//

import SwiftUI

struct HomeView: View {
    @State var search = ""
    
    var body: some View {
        VStack {
            // header
            ZStack {
                Image("Name")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
            }
            
            Text("Hello!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .bold()
                .padding(.leading)
            
            // search bar
            TextField("Search", text: $search)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            HStack {
                ZStack {
                    VStack {
                        Image("MentorMentee")
                        Text("Find a mentor or mentee")
                    }
                    .padding()
                    
                }
    
                ZStack {
                    VStack {
                        Image("Major")
                        Text("Find people in the same major")
                    }
                    .padding()
                }
            }
            
            HStack {
                ZStack {
                    VStack {
                        Image("StudyBuddy")
                        Text("Find a study buddy")
                    }
                    .padding()
                }
                
                ZStack {
                    VStack {
                        Image("GroupChats")
                        Text("Create class group chats")
                    }
                    .padding()
                }
            }
            
            // navigation bar
            
        }
    }
}

#Preview {
    HomeView()
}
