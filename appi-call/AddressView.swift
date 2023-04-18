//
//  AddressView.swift
//  appi-call
//
//  Created by Luis Esteban Haro on 27/03/23.
//

import Foundation
import SwiftUI

struct AddressView: View {
    var address: Address
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Address")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            Divider()
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: "location")
                    Text("\(address.street), \(address.suite)")
                }
                HStack {
                    Image(systemName: "city")
                    Text("\(address.city), \(address.zipcode)")
                }
                HStack {
                    Image(systemName: "globe")
                    Text("Latitude: \(address.geo.lat) Longitude: \(address.geo.lng)")
                }
            }
            .padding()
            Spacer()
        }
        .padding()
    }
}
