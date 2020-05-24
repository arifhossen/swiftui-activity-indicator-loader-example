# SWIFTUI 
## Actvity Indicator Loader Show/Hide Example Project

  * Loader Show Hide options


## Step1: Create Activity Indicator View 
```swift
struct ActivityIndicatorUIView: UIViewRepresentable {
    @Binding var showIndicatorLoader: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView,
                      context: Context) {
        if self.showIndicatorLoader {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}


```

## Step2: Content View Code

```swift



struct ContentView: View {
    @State private var showIndicatorLoader = false
    
    var body: some View {
       
        VStack {
            
            Image("swiftui-logo")
            
            Text("Activity Indicator Loader Show/Hide")
                .foregroundColor(.green)
                .font(.system(size: 20))
            
            Spacer().frame(height:100)
            
            ActivityIndicatorUIView(showIndicatorLoader: self.$showIndicatorLoader)
            
            Button(action: {
                
                self.showIndicatorLoader = !self.showIndicatorLoader
                
            }, label: {
                Text("Show/Hide")
                    .foregroundColor(Color.black)
                    .padding()
            })
                .background(Color.yellow)
                .cornerRadius(5)
            
            Spacer()
            DeveloperBottomView()
            
        }
    }
}



struct DeveloperBottomView:View {
    
    var body: some View{
        
        VStack(alignment:.center){
            Text("Developed by Arif Hossen").fontWeight(.bold).foregroundColor(.green)
            Text("Senior iOS Developer at Graaho").foregroundColor(.blue)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
    }
}

```


# Output Screenshot: 
![image text](http://arifhossen.net/github_images/swiftui-activity-indicator-loader.png)


