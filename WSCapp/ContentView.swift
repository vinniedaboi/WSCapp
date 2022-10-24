//
//  ContentView.swift
//  WSCapp
//
//  Created by vincent ng soon zheng  on 18/10/2022.
//

import SwiftUI
import AVKit
struct ScholarsBowl: View{
    var body: some View {
        let bowlurl = Bundle.main.url(forResource: "videoplayback", withExtension: "mp4")!
        Image("scholarsbowl")
            .resizable()
            .scaledToFit()
            VideoPlayer(player:AVPlayer(url:bowlurl))
                .frame(width:400,height:200)
    }
}
struct CollabWriting: View{
    var body: some View {
        Image("collabwriting")
                .resizable()
                .scaledToFit()
            Button(action: {

                if let yourURL = URL(string: "https://www.dropbox.com/s/yrgzs2h56sicfuk/Collaborative%20Writing%20Rubric%202020.pdf?dl=0") {
                    UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                }

            }) {
               Image("writingrubriclink")
                    .resizable()
                    .scaledToFit()
                    .position(x: 200, y: 20)
                
            }
            let collaburl = Bundle.main.url(forResource: "wsccollab", withExtension: "mp4")!
            VideoPlayer(player:AVPlayer(url:collaburl))
                .frame(width:400,height:200)
    }
}
struct ScholarsChallenge: View{
    var body : some View {
        Image("scholarschallenge")
            .resizable()
            .scaledToFit()
        let challengeburl = Bundle.main.url(forResource: "challenge", withExtension: "mp4")!
        VideoPlayer(player:AVPlayer(url:challengeburl))
            .frame(width:400,height:200)
    }
}
struct TeamDebate: View{
    var body: some View{
        Image("teamdebate")
            .resizable()
            .scaledToFit()
        Button(action: {

            if let yourURL = URL(string: "https://www.dropbox.com/s/rybjjtwk81vo088/3%20-%20Debate%20Scoring%20Criteria%20-%20Double-Sided%2C%20Stapled%20-%20QTY.pdf?dl=0") {
                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
            }

        }) {
           Image("criteriaguideline")
                .resizable()
                .frame(width:400,height:30)
                .position(x: 200, y: 5)
            
        }
        Button(action: {

            if let yourURL = URL(string: "https://www.dropbox.com/s/wpnpxrpi52tn84c/Debate%20Scoring%20Form.pdf?dl=0") {
                UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
            }

        }) {
           Image("scoringform")
                .resizable()
                .frame(width:390,height:21)
                .position(x: 191, y: -8)
            
        }
    }
}
struct EventDetails: View {

    var body: some View {
        ZStack {
            
            ScrollView{
            Image("mainui")
                    .resizable()
                    .frame(width: 410, height: 150)
            ScholarsBowl()
            CollabWriting()
            ScholarsChallenge()
            TeamDebate()
                
            }
            
            .frame(width: 0.0)
        }
    }
}
struct WSCtv: View {
    var body: some View {
        VStack {
            Text("WSCtv.")
        }
    }
}
struct EventCalendar: View {
    var body: some View {
        VStack {
            Text("Event calendar.")
        }
    }
}
struct ButtonView1: View {
var body: some View {
    Image("exploreevents")
        .resizable()
        .scaledToFit()
}
}
struct ButtonView2: View {
    var body: some View {
        Image("wsctv")
            .resizable()
            .scaledToFit()
            
    }
}
struct ButtonView3: View {
        var body: some View {
            Image("eventcalandar")
                .resizable()
                .scaledToFit()
                
        }
    }
struct ContentView: View {
    var body: some View {
        TabView{
            ZStack{
                    
            NavigationView{
                ScrollView{
                    Image("mainui")
                        .resizable()
                        .frame(width: 410, height: 150)
                    
                    NavigationLink(destination:EventDetails()){
                        ButtonView1()
                    }
                    NavigationLink(destination:WSCtv()){
                        ButtonView2()
                    }
                    NavigationLink(destination:EventCalendar()){
                        ButtonView3()
                    }
                }
            }
                
            }
            .tabItem{
                Image(systemName: "house")
                Text("Home")
            }
            Text("Contact us.")
                .tabItem{
                    Image(systemName:"ellipsis")
                    Text("Contact Us")
                }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
