//
//  GiftView.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI

struct GiftView: View {

    @StateObject var viewModel = GiftViewModel()
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Gift ideas")
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
                
                Button(action: {
                    
                    withAnimation(.spring()) {
                        
                        viewModel.isAdd = true
                    }
                    
                }, label: {
                    
                    HStack {
                        
                        Text("New gift idea")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                        
                        Spacer()
                        
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 13).fill(Color("prim").opacity(0.1)))
                })
                .padding(.bottom)
                
                if viewModel.gifts.isEmpty {
                    
                    VStack {
                        
                        Image("e2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        
                        Text("You don't have any gift ideas yet.")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                            .multilineTextAlignment(.center)
                            .frame(width: 200)
                        
                        Spacer()
                    }
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVStack {
                            
                            ForEach(viewModel.gifts, id: \.self) { index in
                                
                                VStack(alignment: .leading, spacing: 12) {
                                    
                                    HStack {
                                        
                                        Text(index.gGift ?? "")
                                            .foregroundColor(.black)
                                            .font(.system(size: 22, weight: .regular))
                                        
                                        Spacer()

                                    }

                                    HStack {
                                        
                                        Text("Budget:")
                                            .foregroundColor(.gray.opacity(0.7))
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text("$\(index.gBudget ?? "")")
                                            .foregroundColor(.black)
                                            .font(.system(size: 16, weight: .regular))
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            
                                            viewModel.selectedGift = index
                                            
                                            withAnimation(.spring()) {
                                                
                                                viewModel.isDelete = true
                                            }
                                            
                                        }, label: {
                                            
                                            Image(systemName: "trash")
                                                .foregroundColor(.red)
                                                .font(.system(size: 17, weight: .regular))
                                        })
                                    }
                                    
                                    HStack {
                                        
                                        Text("For whom:")
                                            .foregroundColor(.gray.opacity(0.7))
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text("\(index.gWhom ?? "")")
                                            .foregroundColor(.black)
                                            .font(.system(size: 16, weight: .regular))
                                        
                                        Spacer()

                                    }
                                    
                                    Text("Note:")
                                        .foregroundColor(.black.opacity(0.7))
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    VStack(alignment: .leading, spacing: 12) {
                                      
                                        Text(index.gNote ?? "")
                                            .foregroundColor(.black)
                                            .font(.system(size: 15, weight: .regular))
                                    }
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(RoundedRectangle(cornerRadius: 14).fill(Color("bg")))
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 13).fill(Color("prim").opacity(0.1)))
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .onAppear {
            
            viewModel.fetchGifts()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            AddGift(viewModel: viewModel)
        })
        .sheet(isPresented: $viewModel.isSettings, content: {
            
            SettingsView()
        })
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isDelete ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isDelete = false
                        }
                    }
                
                VStack(spacing: 15) {

                    Text("Delete?")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .padding(.vertical)

                    Rectangle()
                        .fill(.gray.opacity(0.2))
                        .frame(maxWidth: .infinity)
                        .frame(height: 1)
                        .padding(.vertical, 7)
                    
                    HStack {
                        
                        Button(action: {
                            
                            CoreDataStack.shared.deleteGift(withGGift: viewModel.selectedGift?.gGift ?? "", completion: {
                                
                                viewModel.fetchGifts()
                            })
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = false
                            }
                            
                        }, label: {
                            
                            Text("Delete")
                                .foregroundColor(.red)
                                .font(.system(size: 18, weight: .semibold))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                            
                        })
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = false
                            }
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                            
                        })
                    }
                    .padding(.top, 25)

                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg")))
                .padding()
                .offset(y: viewModel.isDelete ? 0 : UIScreen.main.bounds.height)
            }
        )
    }
}

#Preview {
    GiftView()
}
