import SwiftUI

struct ReservationConfirmed: View {
    var restaurantName: String
    var restaurantAddress: String
    
    var customerName: String
    var phoneNumber: String
    var email: String
    var party: Int
    var reservationDate: Date
    var specialRequests: String

    var body: some View {
        VStack(spacing: 20) {
            Image("littleLemon")
                .resizable()
                .scaledToFit()
                .frame(height: 50)
            
            Text("RESERVATION")
                .font(.title2)
                .padding()
                .background(Color.gray.opacity(0.1))
            
            VStack(alignment: .leading, spacing: 10) {
                Text("RESTAURANT").font(.caption).foregroundColor(.gray)
                Text(restaurantName).font(.headline)
                Text(restaurantAddress).font(.subheadline)
                
                Divider()
                
                Text("NAME: \(customerName)")
                Text("E-MAIL: \(email)")
                Text("PHONE: \(phoneNumber)")
                Text("PARTY: \(party)")
                Text("DATE: \(reservationDate.formatted(date: .long, time: .omitted))")
                Text("TIME: \(reservationDate.formatted(date: .omitted, time: .shortened))")
                
                if !specialRequests.isEmpty {
                    Text("SPECIAL REQUESTS:").font(.caption).foregroundColor(.gray)
                    Text(specialRequests)
                }
            }
            .padding()
            Spacer()
        }
    }
}
