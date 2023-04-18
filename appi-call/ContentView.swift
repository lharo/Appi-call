//
//  ContentView.swift
//  appi-call
//
//  Created by Luis Esteban Haro on 22/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var people: [Person] = []
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path){
            Section("People") {
                List(people){ person in
                    NavigationLink(person.name, value: person)
                }
                .navigationDestination(for: Person.self){ person in
                    PersonView(user: person)
                }.padding(.vertical, 10)
            }
            
            Spacer()

            Section("Jobs") {
                List(Job.jobs){ job in
//                    NavigationLink(job.title, value: job)
                    NavigationLink(destination: JobView(job: job), label: {
                        VStack(alignment: .leading) {
                            Text(job.title)
                                .font(.headline)
                            Text(job.company)
                                .font(.subheadline)
                        }
                    })
                }
//                .navigationDestination(for: Job.self){ job in
//                    JobView(job: job)
//                }
            }
        }
        .onAppear(){
            PersonApi().getPersons { people in
                self.people = people
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//Image(systemName: "person.crop.circle")
//Image(systemName: "envelope")
//Image(systemName: "phone")
//Image(systemName: "globe")
