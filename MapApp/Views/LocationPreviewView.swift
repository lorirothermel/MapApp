//
//  LocationPreveiwView.swift
//  MapApp
//
//  Created by Lori Rothermel on 11/30/24.
//

import SwiftUI

struct LocationPreviewView: View {
    let location: Location
    
    var body: some View {
        VStack(spacing: 16) {
            ZStack {
                if let imageName = location.imageNames.first {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                }  // if let
            }  // ZStack
            .padding(6)
            .background(Color.white)
            .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(location.name)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(location.cityName)
                    .font(.headline)
            } // VStack
            
        }  // VStack
        
    }  // some View
    
}  // LocationPreviewView


extension LocationPreviewView {
    
}  // extension LocationPreviewView



#Preview {
    ZStack {
        Color.blue.ignoresSafeArea()
        LocationPreveiwView(location: LocationsDataService.locations.first!)
    }  // ZStack
   
}
