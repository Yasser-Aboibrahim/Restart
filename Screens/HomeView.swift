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
        VStack {
            Text("Home")
                .font(.largeTitle)

            Button(action: {
                isOnboardingViewActive = true
            }, label: {
                Text("Restart")
            })
        } //: VSTACK
    }
}

#Preview {
    HomeView()
}
