import 'package:flutter/material.dart';
import 'package:srm_live/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.tertiary),
        // Add any other properties you need for the app bar
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const [
                  TextSpan(
                    text: 'Hello ',
                    style: TextStyle(
                      
                      fontSize: 24.0,
                      color: Color(0xFF37B5B6),
                    ),
                  ),
                  TextSpan(
                    text: 'Shivansh',
                    style: TextStyle(
                      
                      fontSize: 24.0,
                      color: Color(0xFFF2F597),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10), // Add spacing between text and cards
        
            // Horizontal scrollable row of cards
            Container(
              height: 150, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  // Define colors for each card
                  List<Color> cardColors = [Colors.amber, Colors.purple, Colors.blue];
        
                  return Container(
                    width: 150, // Adjust the width as needed
                    margin: const EdgeInsets.all(8),
                    child: Card(
                      color: cardColors[index],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Card $index', style: const TextStyle(fontSize: 18)),
                          Image.asset('assets/codingninjas.svg',width: 50,height: 50,)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            
           const SizedBox(height: 10), // Add spacing between cards and "Recent Registrations"
            
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                "Recent Registrations",
                style: TextStyle(
                  color: Colors.white,

                  fontSize: 20,
                ),
              ),

              
            ),
          ],
        ),
      ),
    );
  }
}
