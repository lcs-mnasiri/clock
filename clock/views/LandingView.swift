//
//  ContentView.swift
//  clock
//
//  Created by Machid on 3/2/26.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            TabView(selection: Binding.constant(1)) {
                
                WorldClockView()
                    .tabItem {
                        Image(systemName: "globe")
                        Text("World Clock")
                    }
                    .tag(1)
                
                AlarmView()
                    .tabItem {
                        Image(systemName: "alarm.fill")
                        Text("Alarm")
                    }
                    .tag(2)
     
                StopWatchView()
                    .tabItem {
                        Image(systemName: "stopwatch.fill")
                        Text("Stopwatch")
                    }
                    .tag(3)
            }
        }
        .padding()
    }
}

#Preview {
    LandingView()
}
