# WebAutomationTesting
Berikut panduan pengujian terhadap web automation testing
terdiri dari pengujian menu homepage, register, login, order, account, contact us.

Pada Menu Homepage terdiri dari Test Case Verifikasi:
    - Verify Current Url Is Homepage Url
        verifikasi url yang di tuju yaitu homepage url
    - Verify Banner Appears
        verifikasi banner yang ada pada header homepage
    - Verify Logo Appears
        verifikasi logo yang terdapat pada bar menu logo homepage
    - Verify Contact Us Button Appears
        verifikasi tombol contact us yang terdapat pada sebelah kanan bawah header homepage
    - Verify Sign in Button Appears
        verifikasi tombol sign in pada sebelah kanan bawah header
    - Verify Search Button Appears
        verifikasi tombol search yang ada pada bar pencarian homepage
    - Verify Cart Button Appears
        verifikasi tombol cart pada body homepage
    - Verify Category Women Button Appears
        verifikasi tombol catergory Women pada body homepage
    - Verify Homepage Popular Tab Appears
        verifikasi tab menu popular pada body homepage
    - Verify Homepage Best Seller Tab Appears
        verifikasi tab Best Seller pada body homepage
    - Verify Homepage Footer Appears
        verifikasi menu pada footer homepage

Pada Menu Register terdiri dari Test Case Pembuatan akun:
    Create an Account to Register Form
    Click Radio Button Title
    Input First Name in the Field Register Form 
    Input Last Name in the Field Register Form 
    Input Email in the Field Register Form
    Input Password in the Field Register Form 
    Select Date of Birth Dropdown
    Click checkbox of Sign up for our newsletter!
    Click checkbox of Receive special offers from our partners!
    Input Company in the Field Register Form  
    Input Address in the Field Register Form  
    Input Address - Line 2 in the Field Register Form
    Input City in the Field Register Form 
    Select State in the Field Register Form
    Input Zip/Postal Code in the Field Register Form 
    Select Country in the Field Register Form
    Input Additional information in the Field Register Form  
    Input Home phone in the Field Register Form
    Input Mobile Number in the Field Register Form    
    Input Assign an address alias for future reference in the Field Register Form
    Click Button Register to Submit Account

Pada Menu Login terdiri dari beberapa Test Case yaitu:
- User Should Be Able To See Login Page
    Verifikasi Url Berada pada halaman login 
- User Should Be Able To Login With Valid Data
    Berada pada halaman Login
    Menginput user email yang valid pada form login
    menginput password email yang valid  pada form login
    mengklik tombol sign in
- User Should Be Able To Login With Invalid Data
    Berada pada halaman Login
    Menginput user email yang invalid pada form login
    menginput password email yang valid  pada form login
    mengklik tombol sign in
- User Should Be Able To Login With Unregistered Data
    Berada pada halaman Login
    Menginput user email yang tidak terdaftar pada form login
    menginput password email yang tidak terdaftar  pada form login
    mengklik tombol sign in

Pada menu Order terdiri dari Test Case Purchase Order:
    Berada pada halaman Order
    melakukan pencarian order pada kolom search dengan menginputkan keyword yang dituju
    mengklik tombol search
    mengklik item yang dipilih
    mengklik item kedalam cart/keranjang
    mengklik tombol proccess checkout order
    mengklik tombol checkout order dari halaman cart summary
    melakukan sign in dengan menginputkan email dan password akun yang terdaftar
    memilih alamat pengiriman
    memilih kurir pengiriman
    memilih metode pembayaran
    mengklik tombol konfirmasi order

Pada menu Account terdiri dari beberapa Test Case My Account:
- User Should Be Able To See Account View Info My Orders.
    langkah awal melakukan login ke dalam akun
    setelah itu akan muncul halaman my account
    lalu klik my orders untuk menampilkan menu order yang telah dipesan.

- User Should Be Able To See Account View Info My Wishlists.
    langkah awal melakukan login ke dalam akun
    setelah itu akan muncul halaman my account
    lalu klik my wishlists
    inputkan nama wishlist yang akan dijadikan item favorite
    setelah itu klik submit 

- User Should Be Able To See Account View Info My Credit Slips.
    langkah awal melakukan login ke dalam akun
    setelah itu akan muncul halaman my account
    lalu klik info my credit slips untuk menampilkan menu credit slips

- User Should Be Able To See Account View Info My Addresses.
    langkah awal melakukan login ke dalam akun
    setelah itu akan muncul halaman my account
    lalu klik info my addresses untuk menampilkan informasi alamat pengiriman

- User Should Be Able To See Create new Address
    langkah awal melakukan login ke dalam akun
    setelah itu akan muncul halaman my account
    lalu klik info my addresses untuk menampilkan informasi alamat pengiriman
    klik tombol add new addresses
    lalu inputkan firstname, 
    input lastname,
    input address,
    input city,
    select state, 
    input postal, 
    select country, 
    input home phone, 
    input phone mobile, 
    input alias
    klik tombol save 

- User Should Be Able To See Account View Info My Personal Information.
    langkah awal melakukan login ke dalam akun
    setelah itu akan muncul halaman my account
    lalu klik info my personal information untuk merubah info personal, sebagai contoh akan merubah firstname dan lastname 
    input firstname yang akan dirubah
    input lastname yang akan dirubah
    lalu klik tombol save

Pada menu Contact Us terdiri dari Test Case Customer Service - Contact Us:
    klik tombol contact us
    pilih subject heading
    inputkan email address
    pilih order reference
    pilih Attach File
    inputkan Message
    klik tombol Send
