feat: Implement state management with Provider in Home and SecondPage

In this commit, I added state management to the Home and SecondPage widgets using the Provider package. The NumbersListProvider class was created as a ChangeNotifier to manage a list of numbers. Both Home and SecondPage widgets now share the same instance of NumbersListProvider, ensuring that changes made in one page are reflected in the other.

Additionally, I corrected the AppBar title in the SecondPage widget to display "Second Page" for consistency.

This implementation allows for dynamic updates of the number list and count when the floating action button is pressed, and the state is shared between both pages.
