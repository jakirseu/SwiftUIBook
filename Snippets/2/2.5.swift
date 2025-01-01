Button {
    if counter > 0 {
        counter -= 1
    }
} label: {
    
    Label("Decrement", systemImage: "minus")
}
.buttonStyle(.borderedProminent)