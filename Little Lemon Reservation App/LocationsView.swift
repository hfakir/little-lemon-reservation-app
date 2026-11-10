import SwiftUI

struct LocationsView: View {
    @Binding var selectedTab: Int
    @Binding var hasReservation: Bool
    @Binding var reservedRestaurant: String
    @Binding var reservedAddress: String
    @Binding var customerName: String
    @Binding var phoneNumber: String
    @Binding var email: String
    @Binding var party: Int
    @Binding var reservationDate: Date
    @Binding var specialRequests: String

    var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                Image("littleLemon")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                    .padding(.top, 10)
                
                Button(action: {}) {
                    Text("Select a location")
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                }
                .padding(.horizontal)

                List {
                    Section {
                        NavigationLink(destination: ReservationForm(
                            restaurantName: "Las Vegas",
                            restaurantAddress: "Downtown - (702) 555-9898",
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
                        )) {
                            VStack(alignment: .leading) {
                                Text("Las Vegas").font(.headline)
                                Text("Downtown - (702) 555-9898").font(.subheadline).foregroundColor(.gray)
                            }
                        }
                        
                        NavigationLink(destination: ReservationForm(
                            restaurantName: "Los Angeles",
                            restaurantAddress: "North Hollywood - (213) 555-1453",
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
                        )) {
                            VStack(alignment: .leading) {
                                Text("Los Angeles").font(.headline)
                                Text("North Hollywood - (213) 555-1453").font(.subheadline).foregroundColor(.gray)
                            }
                        }

                        NavigationLink(destination: ReservationForm(
                            restaurantName: "Los Angeles",
                            restaurantAddress: "Venice - (310) 555-1222",
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
                        )) {
                            VStack(alignment: .leading) {
                                Text("Los Angeles").font(.headline)
                                Text("Venice - (310) 555-1222").font(.subheadline).foregroundColor(.gray)
                            }
                        }

                        NavigationLink(destination: ReservationForm(
                            restaurantName: "Nevada",
                            restaurantAddress: "Venice - (725) 555-5454",
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
                        )) {
                            VStack(alignment: .leading) {
                                Text("Nevada").font(.headline)
                                Text("Venice - (725) 555-5454").font(.subheadline).foregroundColor(.gray)
                            }
                        }

                        NavigationLink(destination: ReservationForm(
                            restaurantName: "San Francisco",
                            restaurantAddress: "North Beach - (415) 555-1345",
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
                        )) {
                            VStack(alignment: .leading) {
                                Text("San Francisco").font(.headline)
                                Text("North Beach - (415) 555-1345").font(.subheadline).foregroundColor(.gray)
                            }
                        }

                        NavigationLink(destination: ReservationForm(
                            restaurantName: "San Francisco",
                            restaurantAddress: "Union Square - (415) 555-9813",
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
                        )) {
                            VStack(alignment: .leading) {
                                Text("San Francisco").font(.headline)
                                Text("Union Square - (415) 555-9813").font(.subheadline).foregroundColor(.gray)
                            }
                        }
                    }
                }
                .listStyle(.plain)
            }
            .navigationBarHidden(true)
        }
    }
}
