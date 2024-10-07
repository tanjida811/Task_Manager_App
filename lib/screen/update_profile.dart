import 'package:flutter/material.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image.network(
              'https://plus.unsplash.com/premium_photo-1681492164528-71e8a8fdd51b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aGlqYWJ8ZW58MHx8MHx8fDA%3D',
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
          ),
        ),
        title: _buildAppBarTitle(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0), // Adjusted padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Update Profile",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black87),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),

                // Select Photo Row
                _buildSelectPhotoRow(),
                const SizedBox(height: 20),

                // Text Fields
                _buildTextField(hintText: 'Email'),
                const SizedBox(height: 16),
                _buildTextField(hintText: 'First Name'),
                const SizedBox(height: 16),
                _buildTextField(hintText: 'Last Name'),
                const SizedBox(height: 16),
                _buildTextField(hintText: 'Mobile'),
                const SizedBox(height: 16),
                _buildTextField(hintText: 'Password', obscureText: true),
                const SizedBox(height: 24),

                // Update Button
                _buildUpdateButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBarTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tanjida Aktar Taiyeba',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          'tanjidataiyeba@gmail.com',
          style: TextStyle(fontSize: 12, color: Colors.white70),
        ),
      ],
    );
  }

  Widget _buildSelectPhotoRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            // Add your photo selection logic here
            print('Photo selection tapped!');
          },
          child: Container(
            padding: const EdgeInsets.all(12.0), // Increased padding for better touch area
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            height: 54,
            width: 110, // Adjusted width for the button
            child: Center(
              child: Text(
                'Photo',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              border: Border.all(color: Colors.green),
            ),
            child: _buildTextField(hintText: ''),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField({required String hintText, bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,

      ),
    );
  }

  Widget _buildUpdateButton() {
    return ElevatedButton(
      onPressed: () {
        // Add your button action here
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0), // Adjusted vertical padding
        child: Text(
          'Update Profile',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
