import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: () {
                  changeDiceFace();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*

   ! What we'll make

   * We are going to make dice-rolling app and the crucial thing that we try to learn here is how do you create apps that not only look good  but actually has functionality
   
   * We're going to have super awesome dice-rolling app where when you click on it,it's gonna change the dice face
   
   ? we gonna spend time by learning new things such as how to make UI  actually updated when user does something  such as clicking on the button


 ? Our app is going to have 2 images horizontally next to each other in a row

 ? As  with every flutter-app design,we gonna be using widgets to achieve this

* By now we are really familiar with scaffold,rows,AppBar,Text,Image widgets

* StatelessWidget gives us this crucial method build() which refreshs tha app when we hit save

! But there's a bit of problem here,sometimes images are too big so they don't fit into the screen

  * How can we get rid of  Overflow  issues:-

 ? One of the most useful widgets that we can use to sort-out these kind of issues- Expanded

 A widget that expands a child of a Row,Column or Flex

 What it does is,it will expand to fill the available space in the main axis,available space is divided among the children according to flex factor

 ! We use Expanded Widget to create flexible widgets

 This needs to be child of Row or Column

We can also specify the flex-factor as property of Expanded widget

We can transform our code into lot shorter by using Image.asset constructor because they added a convenient way of adding Image Widgets


 !  How to use Intention Actions

  I need to wrap row widget inside center widget

  The widget that we want to embed inside another widget,we can simply select the widget and add center widget around it by using Flutter Outline

  There are other things that we can also do automatically

 *  How do we plug the widget out of the Tree,we can do it in much easier way in Android Studio
 
  Suppose if you want to add Padding around some widgets,wrap that widget inside Padding

  ! Adding Gesture Detection using FlutterButtonWidgets

  First thing that we have to do,we need to detect when user clicks on either of the images
   ? The way we can do that by using TextButton widgets
 The one that  we gonna pick  is FlatButton,I want to put the button inside Image Widgets

 TextButton or FlatButton which takes a parameter onPressed as property of it ,What it should do when we press that button(Required property)
  It accepts something called callback it gets triggered or activated when the button gets tapped or pressed

  * To print to the console-print() method

  The apperance of the app needs to update when user interacts with it

  ! Dart Functions

   It gives your app or program a functionality
 
 * When we are using functions as programmers,fundamentally we are trying to package bits of code together into a block. To call that block of code repeatitively which saves lot of time
 
  For example if you had a house-keeping robot,he does number of things for instance he will go and get the milf for you everyday But you have to tell him or give instructions to get it done
   We take all these instructions that robot understands and pack them into block of code
  We can that block of code a name and look inside it what it needs to do

  It's almost like I am creating a recipe

  - Creating the function(Definition)
  - calling the function

  ! Anonymous function is a function which doesn't have name

  It essentially wanted an anonymous function when we say it needs a void callback()

  ? Making Dice Images change reactively

  We can create a variable in dart by using var keyword

 To insert variable or make use of it's value in dart,we use '$' symbol
  $variable_name

   Remember when we hot-reload,the thing that we re-run is only build() so everything in between gets triggered again and only those changes gets reflected into app

  ! It's really important to understand how dart variable works

  How we hold the value inside variable& insert inside the widgets

   ? - String Interpolation Concept

 * Variables are just a container which holds some value(Data Container)
 *  var myName='Angela'; - Syntax(Computer Grammar for Dart PL)
 
   ! Dart-Types
    Suppose if you try to change the value of the varaible which is holding String Value to integer value

    * Dart is basically statically-typed language
   
    * primitive data types
   ? String - char array('' to represent string )
   ? int -Integer(whole-numbers either +ve or -ve)
   ? Double-Holds decimal point values
   ? bool-it can hold boolean values either true or false

   These are the most basic fundamental building blocks of any computer program

   * At the point when we create variable,they will get data type and we can change the data(stores something inside) it holds as long as we don't change it's data type

 dynamically typed languages are more flexible,you can change them on the fly

 You can gives dynamic ability if you don't assign value at the time of creation

  There's a keyword -dynamic 

  Var default data type-dynamic if you don't assign any value to it'

 Second thing is we want to link our action to the image that we want to update
   !DicePage class inherits from a class marked as immutable
   Therefore all instance fields should be final


   * Stateless vs Stateful Widgets
   
    State refers to  the way things are

    If you want to change the state of the app,then it's good to use Stateful widgets

   *  Now there are certain places where you might not want to change the state
  
  For example a museum where everything is kind of  meant to stay at exactly where they placed

  You only meant to look things not touch anything

The point being  If you creating an user-interface where the state of the widget isn't going to change,then you use Stateless Widget

 But if you are creating something which is going to change especially when it's depended on user-interactions,then you gonna need to use Stateful Widget


Switching from Stateless Widget to Stateful Widgets is a bit easier to do


! Randomising the Dice

 * In order to generate random-numbers,we will be using math library from dart
 
 This is the library which contains Mathematical constants ,functions & random-number generator

To use this libary,we need to import it in your code

? Random has a bunch of methods attached to it,nextInt() is one of them

 It will include integers from [0,max-1]

 we provide max-value for nextInt() as argument

 Suppose if you want to change both the dicefaces whenever we press either of the buttons This can be done by putting them in function which does that





*/