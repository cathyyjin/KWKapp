//
//  ResourcePage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/13/23.
//

import SwiftUI

struct ResourcePage: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(
                    destination: biologyPage()
                        .font(.headline)){
                            Text("biology")
                                .padding(.vertical)
                        }
                NavigationLink(
                    destination: chemistryPage()
                        .font(.headline)){
                            Text("chemistry")
                                .padding(.vertical)
                        }
                NavigationLink(
                    destination: calculusPage()
                        .font(.headline)){
                            Text("calculus")
                                .padding(.vertical)
                        }
                NavigationLink(
                    destination: computerPage()
                        .font(.headline)){
                            Text("computer science")
                                .padding(.vertical)
                        }
                NavigationLink(
                    destination: englishPage()
                        .font(.headline)){
                            Text("english")
                                .padding(.vertical)
                        }
                NavigationLink(
                    destination: physicsPage()
                        .font(.headline)){
                            Text("physics")
                                .padding(.vertical)
                        }
                NavigationLink(
                    destination: historyPage()
                        .font(.headline)){
                            Text("history")
                                .padding(.vertical)
                        }
                
                        .navigationTitle ("help:")
                
            }
        }
    }
        
        struct ResourcePage_Previews: PreviewProvider {
            static var previews: some View {
                ResourcePage()
            }
        }
    }
