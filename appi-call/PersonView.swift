//
//  PersonView.swift
//  appi-call
//
//  Created by Luis Esteban Haro on 23/03/23.
//

import Foundation

import SwiftUI

struct PersonView: View {
    var user: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(user.name)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .padding(.trailing, 10)
                                    }
            Text(user.username)
                .font(.headline)
            Text(user.company.name)
                .font(.subheadline)
            Divider()
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: "envelope")
                    Text(user.email)
                }
                HStack {
                    Image(systemName: "phone")
                    Text(user.phone)
                }
                HStack {
                    Image(systemName: "globe")
                    Text(user.website)
                }
            }
            NavigationLink(destination: AddressView(address: user.address)) {
                Text("View Address")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
    }    
}
