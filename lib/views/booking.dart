part of 'pages.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});
  static const String routeName = '/booking';

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  void initState() {
    super.initState();
  }

  final _bookingKey = GlobalKey<FormState>();
  final ctrlFullName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhoneNumber = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    ctrlFullName.dispose();
    ctrlEmail.dispose();
    ctrlPhoneNumber.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: Form(
            key: _bookingKey,
            child: Column(
              children: [
                SizedBox(height: 64),
                TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      prefixIcon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    controller: ctrlFullName,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return value.toString().length < 2
                          ? 'Name must be at least 2 letter'
                          : null;
                    }),
                SizedBox(height: 32),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    controller: ctrlEmail,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return !EmailValidator.validate(value.toString())
                          ? 'Email tidak valid!'
                          : null;
                    }),
                SizedBox(height: 32),
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      prefixIcon: Icon(Icons.phone),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    controller: ctrlPhoneNumber,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return value.toString().length == 0
                          ? 'Please fill your phone number'
                          : null;
                    }),
                SizedBox(height: 32),
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "City",
                      prefixIcon: Icon(Icons.location_city),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    controller: ctrlCity,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return value.toString().length == 0
                          ? 'Please fill your city'
                          : null;
                    }),
                SizedBox(height: 64),
                ElevatedButton.icon(
                    onPressed: () {
                      if (_bookingKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _buildPopupDialog(context),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              _buildFailedPopupDialog(context),
                        );
                      }
                    },
                    icon: Icon(Icons.save),
                    label: Text("Book"))
              ],
            )
        ),
      ),
    );
  }

  Widget _buildFailedPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: Text('Booking Failed'),
      content: Text("Please fill all form field !"),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(context);
            },
            child: Text('OK')
        )
      ],
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: Text('Booking Confirmation'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Name: " + ctrlFullName.text.toString()),
          Text("Email: " + ctrlEmail.text.toString()),
          Text("Phone: " + ctrlPhoneNumber.text.toString()),
          Text("City: " + ctrlCity.text.toString()),
        ],
      ),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil<dynamic>(
                context, 
                MaterialPageRoute<dynamic>(
                  builder: (context) => HomePage()
                ),
                (route) => false
              );
            },
            child: Text('OK')
        )
      ],
    );
  }

}
