
Button("Show Alert") {
    show = true
}
.alert("This is a message!", isPresented: $show) {
    Button("Cancel", role: .cancel) {}
    Button("Delete", role: .destructive) {
        print("Data deleted!")
    }
}