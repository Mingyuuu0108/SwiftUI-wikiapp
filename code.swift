import SwiftUI
import WebKit

@main

struct contentView: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView : View {
    var body: some View {
        TabView {
            IPhone()
                .tabItem{
                    Image(systemName: "iphone")
                    Text("iPhone")
                }
            MacBookView()
                .tabItem{
                    Image(systemName: "laptopcomputer")
                    Text("Mac")
                }
            Wearable()
                .tabItem{
                    Image(systemName: "airpodspro")
                    Text("Wearable")
                }
        }
    }
}

struct iPhoneCard : View {
    
    var image : String
    var title : String
    var subtitle : String
    
    var body: some View{
        
        Image(image)
            .resizable()
            .frame(width: 52, height: 67)
            .cornerRadius(10)
        
        HStack(spacing: 30){
            VStack(alignment: .leading, spacing: 4){
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                Text(subtitle)
                    .fontWeight(.semibold)
                    .font(.system(size: 16))
            }
        }
        .padding(10)
        .cornerRadius(10)
    }
}

struct WearableCard : View {
    
    var image : String
    var title : String
    var subtitle : String
    
    var body: some View{
        
        Image(image)
            .resizable()
            .frame(width: 55, height: 55)
            .cornerRadius(10)
        
        HStack(spacing: 30){
            VStack(alignment: .leading, spacing: 4){
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                Text(subtitle)
                    .fontWeight(.semibold)
                    .font(.system(size: 16))
            }
        }
        .padding(10)
        .cornerRadius(10)
    }
}


struct MacBookCard : View {
    
    var image : String
    var title : String
    var subtitle : String
    
    var body: some View{
        
        Image(image)
            .resizable()
            .frame(width: 60, height: 68)
            .cornerRadius(10)
        
        HStack(spacing: 30){
            VStack(alignment: .leading, spacing: 4){
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                Text(subtitle)
                    .fontWeight(.semibold)
                    .font(.system(size: 12))
            }
        }
        .padding(10)
        .cornerRadius(10)
    }
}
struct MacBookColorCard : View {
    
    var image : String
    var ColorName : String
    
    var body: some View {
        VStack(){
            Image(image)
                .resizable()
                .frame(width: 60, height: 60)
        }
    }
}

//MARK: 아이폰

struct IPhone : View {
    var body: some View {

        NavigationView {
            List {
                        Section(header: Text("iPhone SE"), footer: Text("iPhone SE 3, SE 2, SE"), content:{
                            NavigationLink(destination: IphoneSE3(urlToLoad: "https://namu.wiki/w/iPhone%20SE(3%EC%84%B8%EB%8C%80)")) {
                                iPhoneCard(image: "아이폰SE3",title:"iPhone SE 3",subtitle: "SE 3rd Generation / 2022")
                            }
                            NavigationLink(destination: IphoneSE3(urlToLoad: "https://namu.wiki/w/iPhone%20SE(2%EC%84%B8%EB%8C%80)")) {
                                iPhoneCard(image: "아이폰SE2",title:"iPhone SE 2",subtitle: "SE 2rd Generation / 2020")
                            }
                            NavigationLink(destination: IphoneSE3(urlToLoad: "https://namu.wiki/w/iPhone%20SE")) {
                                iPhoneCard(image: "아이폰SE",title:"iPhone SE",subtitle: "SE 1rd Generation / 2016")
                            }
                        })
                
                        Section(header: Text("iPhone 13"), footer: Text("iPhone 13, 13 mini, 13 Pro, 13 Pro Max"),
                                content:{
                            NavigationLink(destination: Iphone13(urlToLoad: "https://namu.wiki/w/iPhone%2013")) {
                                iPhoneCard(image: "아이폰13",title:"iPhone 13",subtitle: "iPhone 13  / 2021")
                            }
                            NavigationLink(destination: Iphone13mini(urlToLoad: "https://namu.wiki/w/iPhone%2013%20mini")) {
                                iPhoneCard(image: "아이폰13미니",title:"iPhone 13 mini",subtitle: "iPhone 13 / 2021")
                            }
                            NavigationLink(destination: Iphone13pro(urlToLoad: "https://namu.wiki/w/iPhone%2013%20Pro")) {
                                iPhoneCard(image: "아이폰13프로",title:"iPhone 13 Pro",subtitle: "iPhone 13 / 2021")
                            }
                            NavigationLink(destination: Iphone13promax(urlToLoad: "https://namu.wiki/w/iPhone%2013%20Pro%20Max")) {
                                iPhoneCard(image: "아이폰13프로맥스",title:"iPhone 13 Pro Max",subtitle: "iPhone 13 / 2021")
                            }

                        })
                        Section(header: Text("iPhone 12"), footer: Text("iPhone 12, 12 mini, 12 Pro, 12 Pro Max"),
                                content:{
                            NavigationLink(destination: Iphone12(urlToLoad: "https://namu.wiki/w/iPhone%2012")) {
                                iPhoneCard(image: "아이폰12",title:"iPhone 12",subtitle: " iPhone 12 / 2020")
                            }
                            NavigationLink(destination: Iphone12mini(urlToLoad: "https://namu.wiki/w/iPhone%2012%20mini")) {
                                iPhoneCard(image: "아이폰12미니",title:   "iPhone 12 mini",subtitle: "iPhone 12 / 2020")
                            }
                            NavigationLink(destination: Iphone12pro(urlToLoad: "https://namu.wiki/w/iPhone%2012%20Pro")) {
                                iPhoneCard(image: "아이폰12프로",title:"iPhone 12 Pro",subtitle: "iPhone 12 / 2020")
                            }
                            NavigationLink(destination: Iphone12promax(urlToLoad: "https://namu.wiki/w/iPhone%2012%20Pro%20Max")) {
                                iPhoneCard(image: "아이폰12프로맥스",title:"iPhone 12 Pro Max",subtitle: "iPhone 12 / 2020")
                            }
                        })
                        Section(header: Text("iPhone 11"), footer: Text("iPhone 11, 11 Pro, 11 Pro Max"),
                                content:{
                            NavigationLink(destination: Iphone11(urlToLoad: "https://namu.wiki/w/iPhone%2011")) {
                                iPhoneCard(image:"아이폰11",title:"iPhone 11",subtitle: " iPhone 11 / 2019")
                            }
                            NavigationLink(destination: Iphone11pro(urlToLoad: "https://namu.wiki/w/iPhone%2011%20Pro")) {
                                iPhoneCard(image:"아이폰11프로",title:"iPhone 11 Pro",subtitle: "iPhone 11 / 2019")
                            }
                            NavigationLink(destination: Iphone11promax(urlToLoad: "https://namu.wiki/w/iPhone%2011%20Pro%20Max")) {
                                iPhoneCard(image:"아이폰11프로맥스",title:"iPhone 11 Pro Max",subtitle: "iPhone 11 / 2019")
                            }
                        })

                    }
                    .listStyle(SidebarListStyle())
                    .navigationTitle("iPhone")
        }
    }
}

//MARK: 웨어러블
struct Wearable : View {
    var body: some View {
        
        NavigationView {
            List {
                    Section(header: Text("AirPods"), footer: Text("AirPods 1, 2nd, Pro, Max, 3rd"), content:{
                            NavigationLink(destination: AirPods(urlToLoad: "https://namu.wiki/w/AirPods(1%EC%84%B8%EB%8C%80)")) {
                                WearableCard(image:"에어팟",title:"AirPods",subtitle: "AirPods / 2016")
                            }
                            NavigationLink(destination: AirPods2(urlToLoad: "https://namu.wiki/w/AirPods(2%EC%84%B8%EB%8C%80)")) {
                                WearableCard(image:"에어팟2세대",title:"AirPods 2nd",subtitle: "AirPods / 2019")
                            }
                            NavigationLink(destination: AirPodsPro(urlToLoad: "https://namu.wiki/w/AirPods%20Pro")) {
                                WearableCard(image:"에어팟프로",title:"AirPods Pro",subtitle: "AirPods / 2019")
                            }
                            NavigationLink(destination: AirPodsMax(urlToLoad: "https://namu.wiki/w/AirPods%20Max")) {
                                WearableCard(image:"에어팟맥스",title:"AirPods Max",subtitle: "AirPods / 2020")
                            }
                            NavigationLink(destination: AirPods3(urlToLoad: "https://namu.wiki/w/AirPods(3%EC%84%B8%EB%8C%80)")) {
                                WearableCard(image:"에어팟3세대",title:"AirPods 3rd",subtitle: "AirPods / 2021")
                            }
                        })
                    Section(header: Text("AppleWatch"), footer: Text("AppleWatch 7, 6, 5, SE"), content:{
                            NavigationLink(destination: AppleWatch7(urlToLoad: "https://namu.wiki/w/Apple%20Watch%20Series%207")) {
                                WearableCard(image:"애플워치",title:"AppleWatch 7",subtitle: "AppleWacth / 2021")
                            }
                            NavigationLink(destination: AppleWatch6(urlToLoad: "https://namu.wiki/w/Apple%20Watch%20Series%206")) {
                                WearableCard(image:"애플워치",title:"AppleWatch 6",subtitle: "AppleWacth / 2020")
                            }
                            NavigationLink(destination: AppleWatch5(urlToLoad: "https://namu.wiki/w/Apple%20Watch%20Series%205")) {
                                WearableCard(image:"애플워치",title:"AppleWatch 5",subtitle: "AppleWacth / 2019")
                            }
                            NavigationLink(destination: AppleWatchSE(urlToLoad: "https://namu.wiki/w/Apple%20Watch%20SE")) {
                                WearableCard(image:"애플워치SE",title:"AppleWatch SE",subtitle: "AppleWacth / 2020")
                            }
                        })
                
                
                
                }
                    .listStyle(SidebarListStyle())
                    .navigationTitle("Wearable")
        }
    }
}
//MARK: 맥북

struct MacBookView : View {
    var body: some View {
        
        NavigationView {
            List {
                Section(header: Text("MacBook"), content:{
                    NavigationLink(destination: MacBookM2()) {
                        MacBookCard(image:"맥북프로14",title:"MacBook M2",subtitle: "M2 Core / Air")
                        }
                    NavigationLink(destination: MacBookM1()) {
                        MacBookCard(image:"맥북프로14",title:"MacBook M1",subtitle: "M1 Core / Air, Pro")
                        }
                    NavigationLink(destination: MacBookM1()) {
                        MacBookCard(image:"맥북프로16",title:"MacBook Intel",subtitle: "Intel Core / Air, pro")
                        }
                    }
                )}.navigationTitle("Mac")

            }
        
    }
}
//MARK: webkit
struct IphoneSE: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<IphoneSE>) {

       }
}

struct IphoneSE2: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<IphoneSE2>) {

       }
}

struct IphoneSE3: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<IphoneSE3>) {

       }
}
struct Iphone13: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone13>) {

       }
}

struct Iphone13mini: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone13mini>) {

       }
}

struct Iphone13pro: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone13pro>) {

       }
}

struct Iphone13promax: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone13promax>) {

       }
}

struct Iphone12: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone12>) {

       }
}

struct Iphone12mini: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone12mini>) {

       }
}

struct Iphone12pro: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone12pro>) {

       }
}

struct Iphone12promax: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone12promax>) {

       }
}

struct Iphone11: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone11>) {

       }
}

struct Iphone11pro: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone11pro>) {

       }
}

struct Iphone11promax: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<Iphone11promax>) {

       }
}

struct MacBookM2 : View {
    
    var body: some View {
        Image("맥북메인사진")
            .resizable()
            .frame(width: 370, height: 150)
            .cornerRadius(10)
        Group{
            HStack(spacing: 25){
                VStack(alignment: .leading, spacing: 10){
                    Text("MacBook M2")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                    Text(" M2 Air (2022)")
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                }
            }
            .padding(10)
            .cornerRadius(10)
            List{
                
            }
        }
    }
}
struct MacBookM1 : View {
    
    var body: some View {
        
        Image("맥북메인사진")
            .resizable()
            .frame(width: 370, height:150)
            .cornerRadius(10)
        Group{
            HStack(spacing: 25){
                VStack(alignment: .leading, spacing: 10){
                    Text("MacBook M1")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                    Text(" M1 Air (2020) / M1 Pro (2021)")
                        .fontWeight(.semibold)
                        .font(.system(size: 16))
                }
            }
            .padding(10)
            .cornerRadius(10)
            List{
                NavigationLink(destination: M1Air13()){
                    MacBookCard(image: "맥북프로14",title:"MacBook Air 13\"",subtitle: "M1 Core / 2020")
                }
                NavigationLink(destination: M1Pro14()){
                    MacBookCard(image: "맥북프로16",title:"MacBook Pro 14\"",subtitle: "M1 Pro, Max Core / 2021")
                }
                NavigationLink(destination: M1Pro14()){
                    MacBookCard(image: "맥북프로16",title:"MacBook Pro 16\"",subtitle: "M1 Pro, Max Core / 2021")
                }
            }
        }
    }
}

struct M1Air13 : View {
    
    var body: some View {
        List{
            Text("wdwdwwd")
        }
    }
}
struct M1Pro14 : View {
    
    var body: some View {
        VStack(spacing: 10){
            Image("맥북프로")
                .resizable()
                .frame(width: 370, height: 200)
                .cornerRadius(10)
            Text("MacBook Pro 14\" (2021)")
                .fontWeight(.bold)
                .font(.system(size: 28))
            Text("Supercharged for pros.") //sudtext
                .fontWeight(.light)
                .font(.system(size: 16))
        }
        List(){
            Section(header: Text("Finish"), content: {
                Text("Silver")
                    .fontWeight(.medium)
                    .font(.system(size: 15))
                Text("Space Gray")
                    .fontWeight(.medium)
                    .font(.system(size: 15))
            })
            Section(header: Text("Chip"), content: {
                Text("Apple M1 Pro chip")
                    .fontWeight(.medium)
                    .font(.system(size: 15))
                Text("Apple M1 Max chip")
                    .fontWeight(.medium)
                    .font(.system(size: 15))
            })
            Section(header: Text("Storge"), content: {
                Text("Apple M1 Pro chip")
                    .fontWeight(.medium)
                    .font(.system(size: 15))
                Text("Apple M1 Max chip")
                    .fontWeight(.medium)
                    .font(.system(size: 15))
            })
            Section(header: Text("x"), content: {
                Text("")
                    .fontWeight(.medium)
                    .font(.system(size: 15))
            })
            Section(header: Text("X"),content: {
                Text("")
                    .fontWeight(.medium)
                    .font(.system(size: 15))
            })
        }.listStyle(SidebarListStyle())
    }
}
struct AirPods: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<AirPods>) {

       }
}

struct AirPods2: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<AirPods2>) {

       }
}

struct AirPodsPro: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<AirPodsPro>) {

       }
}

struct AirPodsMax: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<AirPodsMax>) {

       }
}

struct AirPods3: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<AirPods3>) {

       }
}
struct AppleWatch7: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<AppleWatch7>) {

       }
}

struct AppleWatch6: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<AppleWatch6>) {

       }
}

struct AppleWatch5: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<AppleWatch5>) {

       }
}

struct AppleWatchSE: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<AppleWatchSE>) {

       }
}

struct MacBookM2URL: UIViewRepresentable {

    var urlToLoad: String

    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }

        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
            
        return webview

    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MacBookM2URL>) {

       }
}
