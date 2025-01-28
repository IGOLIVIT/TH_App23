//
//  ArticlesView.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI

struct ArticlesView: View {

    @StateObject var viewModel = ArticlesViewModel()
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Articles")
                        .foregroundColor(.black)
                        .font(.system(size: 22, weight: .regular))
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isSettings = true

                        }
                        
                    }, label: {
                        
                        Image(systemName: "gearshape")
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .regular))
                    })
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Rectangle()
                    .fill(.gray.opacity(0.13))
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        ForEach(viewModel.articles, id: \.self) { index in
                        
                            Button(action: {
                                
                                viewModel.selectedCourse = index
                                
                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetail = true
                                }
                                
                            }, label: {
                                
                                HStack {
                                    
                                    Text(index.title)
                                        .foregroundColor(.black)
                                        .font(.system(size: 18, weight: .medium))
                                        .multilineTextAlignment(.leading)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray.opacity(0.8))
                                        .font(.system(size: 18, weight: .regular))
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 13).fill(Color("prim").opacity(0.1)))
                            })
                        }
                    }
                }
            }
            .padding()
        }
        .sheet(isPresented: $viewModel.isDetail, content: {
            
            ArticlesDetail(viewModel: viewModel)
        })
        .sheet(isPresented: $viewModel.isSettings, content: {
            
            SettingsView()
        })
    }
}

#Preview {
    ArticlesView()
}
