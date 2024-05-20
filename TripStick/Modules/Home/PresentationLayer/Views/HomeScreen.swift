//
//  HomeScreen.swift
//  TripStick
//
//  Created by ammar on 20/05/2024.
//

import SwiftUI
import SwiftUIPullToRefresh

struct HomeScreen: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            Text(Constants.HomeScreen.appName)
                .font(.title)
                .foregroundStyle(Color.highlight)
                .padding(.horizontal)
            
            RefreshableScrollView(showsIndicators: false,
                                  loadingViewBackgroundColor: .theme.background) { doneRefreshing in
                Task {
                    await viewModel.loadDataList()
                }
                doneRefreshing()
            } content: {
                LazyVStack(spacing: 10) {
                    
                    Spacer()
                    
                    ForEach($viewModel.data, id: \.id) { travelInspiration in
//                        RepositoryCardView(repository: repository.wrappedValue)
                    }
                    HStack {
                        Spacer()
                        ProgressView()
                            .onAppear {
                                Task {
                                    await viewModel.loadMoreDataList()
                                }
                            }
                        Spacer()
                    }.isHidden(viewModel.isLoading || viewModel.listIsFull
                               ,remove: true)
                    Spacer()
                }.isHidden(viewModel.data.isEmpty, remove: true)
                
            }.redacted(reason: viewModel.isLoading ? .placeholder : [])
                .padding(.horizontal, 12)
                .background(Color.theme.background)
                .task {
                    await viewModel.loadDataList()
                }
        }.background(Color.theme.backgroundCard)
            .overlay {
                ResultView(resultMessage: $viewModel.errorMsg)
            }
    }
}

#Preview {
    HomeScreen(viewModel:
                HomeViewModel(useCase:
                                HomeUseCaseImp(repository:
                                                HomeRepoImp(network: NetworkClient()))))
}
