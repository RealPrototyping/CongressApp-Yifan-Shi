//
//  ContentView.swift
//  Movie
//
//  Created by Yifan Shi on 10/18/23.
//

import SwiftUI



struct HomeView: View {
    @State private var searchText = ""
    @State private var items: [Item] = []
    @State private var isUserAddTitlePresented = false
    @State private var isPresentingFullView1 = false
    @State private var isPresentingFullView2 = false
    @State private var isPresentingFullView3 = false
    @State private var isPresentingFullView4 = false
    var body: some View {
        NavigationView {
            ZStack {
                Color(.white)
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        HStack {
                            /*Button(action: {
                             isUserAddTitlePresented = true
                             }) {
                             Image(systemName: "plus")
                             }
                             .sheet(isPresented: $isUserAddTitlePresented) {
                             UserAddTitle(items: $items, isPresented: $isUserAddTitlePresented)
                             }*/ //Impossible to implement at the moment
                            Spacer()
                            Text("App Name")
                                .multilineTextAlignment(.center)
                            Spacer()
                            NavigationLink(destination: SettingsView()) {
                                Image(systemName: "slider.horizontal.3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 20)
                                    .foregroundColor(.black)
                                    .shadow(radius: 10)
                            }
                        }
                        .padding()
                        
                        
                        
                        HStack {
                            Spacer()
                            VStack {
                                Button(action: {
                                    isPresentingFullView1.toggle()
                                }, label: {
                                    VStack(){
                                        Text("Upcoming")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                        Image("upcomingtitle")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                    }
                                    .padding()
                                    .background(Rectangle().foregroundColor(.red)
                                        .cornerRadius(15)
                                        .shadow(radius: 10))
                                    .frame(maxWidth: .infinity) // Expand to fill the available width
                                })
                                .fullScreenCover(isPresented: $isPresentingFullView1) {
                                    UpcomingView()
                                }
                            }
                                
                                
                            VStack {
                                Button(action: {
                                    isPresentingFullView2.toggle()
                                }, label: {
                                    VStack {
                                        Text("Released")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.white)
                                        Image("releasedstock")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                    }
                                    .padding()
                                    .background(Rectangle().foregroundColor(.mint)
                                        .cornerRadius(15)
                                        .shadow(radius: 10))
                                    .frame(maxWidth: .infinity) // Expand to fill the available width
                                })
                                .fullScreenCover(isPresented: $isPresentingFullView2) {
                                    ReleasedView()
                                }
                            }
                                
                                Spacer()
                            }
                            
                        VStack {
                            Button(action: {
                                isPresentingFullView3.toggle()
                            }, label: {
                                VStack {
                                    Text("Movies")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                    Image("moviestock")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(10)
                                }
                                .padding()
                                .background(Rectangle().foregroundColor(.orange)
                                    .cornerRadius(15)
                                    .shadow(radius: 10))
                                .frame(maxWidth: .infinity) // Expand to fill the available width
                                .padding()
                            })
                            .fullScreenCover(isPresented: $isPresentingFullView3) {
                                MoviesView()
                            }
                        }
                        VStack {
                            Button(action: {
                                isPresentingFullView4.toggle()
                            }, label: {
                                VStack {
                                    Text("Shows")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                    Image("showstock")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(10)
                                }
                                .padding()
                                .background(Rectangle().foregroundColor(.green)
                                    .cornerRadius(15)
                                    .shadow(radius: 10))
                                .frame(maxWidth: .infinity) // Expand to fill the available width
                                .padding()
                            })
                            .fullScreenCover(isPresented: $isPresentingFullView4) {
                                ShowsView()
                            }
                        }
                        }
                    }
                    .padding(.bottom, 20)
                }
            }
        }
        
        struct SettingsView: View {
            var body: some View {
                // Add your settings content here
                Text("Settings Page: ")
                
            }
        }
        
    }

#Preview {
    HomeView()
}
