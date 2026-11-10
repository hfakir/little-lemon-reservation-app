import SwiftUI

struct ReservationForm: View {
    var restaurantName: String
    var restaurantAddress: String

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

    @State var showValidationError = false
    @State var validationErrorMessage = "Found these errors in the form:\n"
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Form {
            Section {
                VStack(alignment: .leading, spacing: 4) {
                    Text(restaurantName)
                        .font(.headline)
                    Text(restaurantAddress)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 4)
            }

            Section(header: Text("PARTY")) {
                Stepper("Party number: \(party)", value: $party, in: 1...10)
            }
            
            Section(header: Text("RESERVATION DATE & TIME")) {
                DatePicker("Date & Time", selection: $reservationDate)
            }
            
            Section(header: Text("PERSONAL INFORMATION")) {
                TextField("Your name...", text: $customerName)
                TextField("Your phone number...", text: $phoneNumber)
                    .keyboardType(.phonePad)
                TextField("Your e-mail...", text: $email)
                    .keyboardType(.emailAddress)
            }
            
            Section(header: Text("SPECIAL REQUESTS")) {
                TextField("add any special request (optional)", text: $specialRequests)
            }
            
            Button(action: {
                validateForm()
            }) {
                Text("CONFIRM RESERVATION")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .navigationTitle("Reservation")
        .alert("ERROR", isPresented: $showValidationError) {
            Button("OK", role: .cancel) { }
        } message: {
            Text(validationErrorMessage)
        }
    }

    func validateForm() {
        validationErrorMessage = "Found these errors in the form:\n"
        var hasError = false

        let nameRegex = "^[a-zA-Z\\s]{3,}$"
        let namePredicate = NSPredicate(format: "SELF MATCHES %@", nameRegex)
        if !namePredicate.evaluate(with: customerName) {
            validationErrorMessage += "\n- Names can only contain letters and must have at least 3 characters"
            hasError = true
        }

        if phoneNumber.trimmingCharacters(in: .whitespaces).isEmpty {
            validationErrorMessage += "\n- The phone number cannot be blank."
            hasError = true
        }

        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        if !emailPredicate.evaluate(with: email) {
            validationErrorMessage += "\n- The e-mail is invalid and cannot be blank."
            hasError = true
        }

        if hasError {
            showValidationError = true
        } else {
            showValidationError = false
            reservedRestaurant = restaurantName
            reservedAddress = restaurantAddress
            hasReservation = true
            presentationMode.wrappedValue.dismiss()
            selectedTab = 1
        }
    }
}
