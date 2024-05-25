import Foundation
import SwiftUI

struct SettingsView: View {
    
    @State private var darkMode: Bool = true
    @State private var iCloudSync: Bool = true

    var body: some View {
        NavigationView {
            Form {
                List {
                    Section(header: Text("General")) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 6)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.indigo4)
                                Image(systemName: "moon.fill")
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                            }
                                
                            Text("Dark Mode")
                            Spacer()
                            Toggle(isOn: $darkMode, label: {
                                Text("")
                            })
                        }
                        
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.orange4)
                                Image(systemName: "app.dashed")
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                            }
                            Text("App Version")
                            Spacer()
                            Text("16.2")
                                .foregroundColor(.gray)
                        }
                        
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.grass4)
                                Image(systemName: "globe")
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                            }
                            
                            Text("Language")
                            Spacer()
                            Picker(selection: .constant(1), label: Text("")) {
                                Text("English").tag(1)
                                Text("Portuguese").tag(2)
                                Text("Spanish").tag(3)
                            }
                            .pickerStyle(MenuPickerStyle())
                        }
                        
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.purple4)
                                Image(systemName: "person.circle.fill")
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                            }
                            Text("Profile")
                            Spacer()
                            NavigationLink(destination: ContentView()) {
                                Image(systemName: "")
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        
                        
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.gray2)
                    
                    Section(header: Text("Data")) {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.amber4)
                                Image(systemName: "icloud.fill")
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                            }
                            Text("iCloud Sync")
                            Spacer()
                            Toggle(isOn: $iCloudSync, label: {
                                Text("")
                            })
                        }
                        
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 5)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.teal4)
                                Image(systemName: "icloud.and.arrow.down")
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                            }
                            Text("Export Data")
                            Spacer()
                            NavigationLink(destination: ContentView()) {
                                Image(systemName: "")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.gray2)
                }
            }
            .navigationTitle("Settings")
            .scrollContentBackground(.hidden)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

