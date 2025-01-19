# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code and provides a solution.

## The Problem

The `bug.dart` file contains code that fetches data from a remote API.  The error handling is insufficient; a simple `print` statement is used to display errors instead of proper exception handling or logging.

## The Solution

The `bugSolution.dart` file demonstrates improved error handling.  It includes more specific exception handling based on response codes, provides better error messages, and uses a more robust error handling mechanism.