import SwiftUI
 
struct ContentView: View {
    @AppStorage("selectedLanguage") var selectedLanguage = "bn"
    let username = "Khan"
    var body: some View {
        VStack {
             
            Picker("Select Langugage", selection: $selectedLanguage) {
                Text("English").tag("en")
                Text("বাংলা").tag("bn")
                Text("العربية").tag("ar")
            }
            .pickerStyle(SegmentedPickerStyle())
             
            Text("Hello")
            Text("Welcome \(username)")
        }
        .padding()
    }
}
#Preview {
    ContentView()
        .environment(\.locale, Locale(identifier: "bn"))   
}