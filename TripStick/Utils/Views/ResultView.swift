//
//  ResultView.swift
//  TripStick
//
//  Created by ammar on 19/05/2024.
//

import SwiftUI

struct ResultView: View {
    
    @Binding var resultMessage: String
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image(systemName: Constants.ResultView.errorImage)
                    .resizable()
                    .frame(width: 22, height: 22, alignment: .leading)
                    .foregroundColor(.theme.highlight)
                    .padding(.leading, 20)
                
                Text(resultMessage)
                    .foregroundColor(.secondary)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: 70, alignment: .center)
            .background(
                Color.theme.background
            )
            .cornerRadius(10)
            .padding(.horizontal, 20)
            Spacer()
            
        }
        .isHidden(resultMessage.isEmpty, remove: true)
        .onChange(of: resultMessage, {
            Task {
                await Task.sleep(2 * 1_000_000_000)
                await MainActor.run {
                    withAnimation {
                        self.resultMessage = ""
                    }
                }
            }
        })
    }
}
#Preview {
    ResultView(resultMessage: .constant("error"))
}
