//
//  CheckListView.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI

struct CheckListView: View {
    
    @StateObject var viewModel = CheckListViewModel()
    
    var body: some View {

        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Checklist")
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
                        
                        Text("New checklist item")
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
                
                if viewModel.checklists.isEmpty {
                    
                    VStack {
                        
                        Image("e1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                        
                        Text("You don't have any issues in the checklist yet.")
                            .foregroundColor(.black)
                            .font(.system(size: 16, weight: .regular))
                            .multilineTextAlignment(.center)
                            .frame(width: 200)
                        
                        Spacer()
                    }
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVStack {
                            
                            ForEach(viewModel.checklists, id: \.self) { index in
                                
                                VStack(alignment: .leading, spacing: 12) {
                                    
                                    HStack {
                                        
                                        Text(index.chName ?? "")
                                            .foregroundColor(.black)
                                            .font(.system(size: 22, weight: .regular))
                                        
                                        Spacer()
                                     
                                        Button(action: {
                                            
                                            viewModel.favoritesManager(model: index)
                                            
                                        }, label: {
                                            
                                            ZStack {
                                                
                                                Image(systemName: viewModel.isHas(model: index) ? "checkmark" : "")
                                                    .foregroundColor(Color("prim"))
                                                    .font(.system(size: 13, weight: .regular))
                                                
                                                RoundedRectangle(cornerRadius: 2)
                                                    .stroke(.gray.opacity(0.2), lineWidth: 2)
                                                    .frame(width: 13, height: 14)
                                            }
                                        })
                                    }
                                    
                                    HStack {
                                        
                                        Text("Deadline:")
                                            .foregroundColor(.gray.opacity(0.7))
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text((index.chDead ?? Date()).convertDate(format: "MMM dd, YYYY"))
                                            .foregroundColor(.black)
                                            .font(.system(size: 16, weight: .regular))
                                        
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        
                                        Text("Responsible person:")
                                            .foregroundColor(.gray.opacity(0.7))
                                            .font(.system(size: 15, weight: .regular))
                                        
                                        Text(index.chName ?? "")
                                            .foregroundColor(.black)
                                            .font(.system(size: 16, weight: .regular))
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            
                                            viewModel.selectedCheck = index
                                            
                                            withAnimation(.spring()) {
                                                
                                                viewModel.isDelete = true
                                            }
                                            
                                        }, label: {
                                            
                                            Image(systemName: "trash")
                                                .foregroundColor(.red)
                                                .font(.system(size: 17, weight: .regular))
                                        })
                                    }
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
            
            viewModel.fetchChecks()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            AddChecklist(viewModel: viewModel)
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
                            
                            CoreDataStack.shared.deleteCheck(withChName: viewModel.selectedCheck?.chName ?? "", completion: {
                                
                                viewModel.fetchChecks()
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
    CheckListView()
}
