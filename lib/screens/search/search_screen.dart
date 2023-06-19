import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: Material(
        borderRadius: BorderRadius.circular(11),
        elevation: 3,
        child: TextFormField(
          // onFieldSubmitted: navigateToSearchScreen,
          decoration: InputDecoration(
            prefixIcon: InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 6,
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 23,
                ),
              ),
            ),
            suffixIcon: Icon(Icons.mic),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.only(top: 10),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
              borderSide: BorderSide.none,
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
              borderSide: BorderSide(
                color: Colors.black38,
                width: 1,
              ),
            ),
            hintText: 'Search Product',
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
