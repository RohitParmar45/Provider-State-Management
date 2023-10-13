main.dart:

The entry point of your Flutter app.
Configures and provides the NumbersListProvider for state management using ChangeNotifierProvider.
Wraps the entire app with MultiProvider to manage multiple providers in the future.
Runs the app with the MyApp widget as the root.

Home Page (Home.dart):

Displays a list of numbers.
Uses the NumbersListProvider for state management via Provider.
Includes a floating action button to add numbers to the list.
Navigates to the Second Page.

Second Page (SecondPage.dart):

Similar to the Home Page.
Shares the same instance of NumbersListProvider for state management.
Displays the list of numbers and allows adding more.
Features a corrected AppBar title, "Second Page."

NumbersListProvider (list_provider.dart):

A ChangeNotifier class for state management.
Manages a list of numbers and provides an add method to increment the list.
The same instance of this class is shared between the Home and Second Page, ensuring consistent state management.

https://github.com/RohitParmar45/Provider-State-Management/assets/92267491/08e17c63-8875-4a3a-8c03-c00ce70316e5

