
# Swiftui-architecture-template

Swiftui Module Architecture is a simple Xcode template that creates boilerplate code for a modular and testable Application.

The template contains no third party dependencies and it's intended to enforce clean architecture good pratices.

This template contains 5 boilerplate files plus an optional *Coordinator*: 

* __View__: SwiftUI or UIViewRepresentable  
* __Interactor__: Drives the actions originated in the View Business logic layer
* __Coordinator__(optional): Holds other modules to navigate to.
* __State__: Observable object that contains the state of the views
* __Module__: Instantiates the whole module and sets the communication delegates
* __Definitions__: contains protocols or other helpers that shapes how the communication will happen between the different layers of the architecture. 

![Module architecture diagram](https://github.com/mvcsantos/swiftui-architecture-template/blob/master/module-architecture.png)


## Installation

Copy the *Swift Module Architecture.xctemplate* into the following directory:

```bash
~/Library/Developer/Xcode/Templates/Custom/
```


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://choosealicense.com/licenses/mit/)
