//
//  JobView.swift
//  appi-call
//
//  Created by Luis Esteban Haro on 27/03/23.
//

import Foundation
import SwiftUI

struct JobView: View {
    let job: Job
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(job.title)
                .font(.title)
            Text(job.company)
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text("Requirements:")
                .font(.headline)
            ForEach(job.requirements, id: \.self) { requirement in
                Text("• \(requirement)")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(8)
            }
            Text("Salary:")
                .font(.headline)
            Text(job.salary.formatted())
                .font(.body)
                .multilineTextAlignment(.leading)
                .lineSpacing(8)
            Spacer()
        }
        .padding()
        .navigationBarTitle(job.title)
    }
}

