//
//  ArticlesDetail.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI

struct ArticlesDetail: View {
    
    @StateObject var viewModel: ArticlesViewModel
    @Environment(\.presentationMode) var router
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Article")
                        .foregroundColor(.black)
                        .font(.system(size: 22, weight: .regular))
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            router.wrappedValue.dismiss()
                        }
                        
                    }, label: {
                        
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .regular))
                    })
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Rectangle()
                    .fill(.gray.opacity(0.13))
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        Text(viewModel.selectedCourse?.title ?? "")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom)
                        
                        Text(viewModel.selectedCourse?.information ?? "")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ArticlesDetail(viewModel: ArticlesViewModel())
}
