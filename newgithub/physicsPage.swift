//
//  physicsPage.swift
//  newgithub
//
//  Created by Cathy Jin on 6/15/23.
//

import SwiftUI

struct physicsPage: View {
    @Environment(\.openURL) var openURL
    @State private var aisStarClicked = false
    @State private var bisStarClicked = false
    @State private var cisStarClicked = false
    @State private var disStarClicked = false
    @State private var eisStarClicked = false
    @State private var fisStarClicked = false
    var body: some View {
        VStack {
            HStack {
                Text("help:")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("physics")
                    .font(.largeTitle)
                    .frame(height: 2.0)
                
            }
            .padding()
            HStack {
                Button("Fiveable") {
                            openURL(URL(string: "https://library.fiveable.me/ap-physics-1")!)
                        }
                Image(systemName: aisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(aisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                aisStarClicked.toggle()
                            }
            }

            
            .padding()
            HStack{
                Button("Released FRQs") {
                            openURL(URL(string: "https://apcentral.collegeboard.org/courses/ap-physics-1/exam/past-exam-questions")!)
                        }
                Image(systemName: bisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(bisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                bisStarClicked.toggle()
                            }
            }
            
            
            .padding()
            HStack{
                Button("Flipping Physics") {
                            openURL(URL(string: "https://www.youtube.com/@FlippingPhysics")!)
                        }
                Image(systemName: cisStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(cisStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                cisStarClicked.toggle()
                            }
                
            }
            
            .padding()
            HStack{
                Button("Practice Exam") {
                            openURL(URL(string: "https://www.nassauboces.org/cms/lib/NY01928409/Centricity/Domain/1371/AP%201%20Practice%20Exam.pdf")!)
                        }
                Image(systemName: disStarClicked ? "star.fill" : "circle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(disStarClicked ? .yellow : .blue)
                            .onTapGesture {
                                disStarClicked.toggle()
                            }
            }
            
            
            .padding()
            HStack{
                Button("Physics Lab ") {
                            openURL(URL(string: "https://www.pedersenscience.com/ap-physics-labs.html")!)
                        }
                Image(systemName: eisStarClicked ? "star.fill" : "circle.fill")
                    .font(.system(size: 30))
                    .foregroundColor(eisStarClicked ? .yellow : .blue)
                    .onTapGesture {
                        eisStarClicked.toggle()
                    }
            }
            
                .padding()
            HStack{
                Button("Khan Academy ") {
                            openURL(URL(string: "https://www.khanacademy.org/science/ap-college-physics-1")!)
                        }
                Image(systemName: fisStarClicked ? "star.fill" : "circle.fill")
                    .font(.system(size: 30))
                    .foregroundColor(fisStarClicked ? .yellow : .blue)
                    .onTapGesture {
                        fisStarClicked.toggle()
                    }
            }
            
                .padding()
            
                
                
                
            }
        Spacer()
        .padding()
            
        }
    }

struct physicsPage_Previews: PreviewProvider {
    static var previews: some View {
        physicsPage()
    }
}
