import SwiftUI

struct MainView: View {
    @State private var selectedTab = 0
    @State private var hasReservation = false
    @State private var reservedRestaurant = ""
    @State private var reservedAddress = ""
    @State private var customerName = ""
    @State private var phoneNumber = ""
    @State private var email = ""
    @State private var party = 1
    @State private var reservationDate = Date()
    @State private var specialRequests = ""

    var body: some View {
        TabView(selection: $selectedTab) {
            LocationsView(
                selectedTab: $selectedTab,
                hasReservation: $hasReservation,
                reservedRestaurant: $reservedRestaurant,
                reservedAddress: $reservedAddress,
                customerName: $customerName,
                phoneNumber: $phoneNumber,
                email: $email,
                party: $party,
                reservationDate: $reservationDate,
                specialRequests: $specialRequests
            )
            .tabItem {
                Label("Locations", systemImage: "fork.knife")
            }
            .tag(0)

            ReservationView(
                hasReservation: $hasReservation,
                restaurantName: reservedRestaurant,
                restaurantAddress: reservedAddress,
                customerName: customerName,
                phoneNumber: phoneNumber,
                email: email,
                party: party,
                reservationDate: reservationDate,
                specialRequests: specialRequests
            )
            .tabItem {
                Label("Reservation", systemImage: "square.and.pencil")
            }
            .tag(1)
        }
    }
}
