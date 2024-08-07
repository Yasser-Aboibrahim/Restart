//
//  HomeView.swift
//  Restart
//
//  Created by Yasser Aboibrahim on 07/07/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        // MARK: - PROPERTY
        @AppStorage("onboarding") var isOnboardingViewActive: Bool = true

        // MARK: - BODY
        VStack(spacing: 20) {
            // MARK: - HEADER
            
            Spacer()
            
            ZStack {
              CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
              
              Image("character-2")
                .resizable()
                .scaledToFit()
                .padding()
            }
            // MARK: - CENTER
            
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
              .font(.title3)
              .fontWeight(.light)
              .foregroundColor(.secondary)
              .multilineTextAlignment(.center)
              .padding()
            
            // MARK: - FOOTER
            
            Spacer()
            
            Button(action: {
              withAnimation {
                isOnboardingViewActive = true
              }
            }) {
              Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                .imageScale(.large)
              
              Text("Restart")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.bold)
            } //: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        } //: VSTACK
    }
}

#Preview {
    HomeView()
}
