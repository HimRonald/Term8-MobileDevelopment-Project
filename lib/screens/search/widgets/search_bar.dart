import 'package:flutter/material.dart';
import 'package:flutter_spotify/screens/search/search_history.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {
        // Navigate to another page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SearchHistoryWrapper()), // Replace SearchPage with your target page
        );
      },
      child: AbsorbPointer(
        child: TextField(
          readOnly: true,
          style: const TextStyle(
            color: Colors.black, // Set text color to black
            fontSize: 18,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white, // Set background color to white
            hintText: 'What do you want to listen?',
            hintStyle: TextStyle(
              color: Colors.grey[600], // Hint text color remains grey
              fontSize: 18,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: !FocusScope.of(context).isFirstFocus
                  ? Colors.black
                  : Colors.green[300], // Change icon color to black when not focused
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey[400]!, // Set enabled border color
              ),
            ),
          ),
        ),
      ),
    );
  }
}
