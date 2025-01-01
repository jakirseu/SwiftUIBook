Button("Show Alert") {
    show = true
}
.alert("Title of the alert", isPresented:$show) {
    Button("Cancel", role: .cancel) {}
    
    Button("Delete", role: .destructive) {
        print("Data deleted!")
    }
} message: {
    Text("Alert message")
}