
// ***** Nullable type safety ***** //

  /* 1) Null-Aware Assignment (??=)
   * Assigns value to nullable only if it's null
    
    String? name = null;
    String myName = name; // Error: String != String?

    name ??= "Sameh";
    String myName = name;
    print(myName); // Sameh
  */

// --------------------------------------------------

  /* 2) Null Check (!= null)
   * Check if the value is null or not
  
  void printLen(String? text) {
      if (text != null) {
          print(text.length);
      } else {
          print("Text is null");
      }
  }
  */

// --------------------------------------------------

  /* 3) Null Coalescing Operator (left ?? right)
   * Assign to the right operand if the left operand is null
  
  String? name;
  String displayName = name ?? "Guest";
  print(displayName);
  */

// --------------------------------------------------

  /* 4) Null Assertion Operator (!)
   * If iam sure it's not gonna be null

    String name4 = name1!; // if name1 = null >> Error: Unexpected null value.
    print(name4);
  */

// --------------------------------------------------

  /* 5) Null-Aware Access (?.) 
  
    String? name = getName();
    int? length = name?.length;
  */

// --------------------------------------------------

  /* 6) Null-Aware Cascade (?..)
   * // Similar to Null-Aware Access operator but for chaining multiple operations
    
    User? user = User();
    user?..updateName("Sameh")..updateAge(30)..updateLocation("Cairo");
    
    // Instead of
    
    user?.updateName("Sameh");
    user?.updateAge(30);
    user?.updateLocation("Cairo");
  */

// --------------------------------------------------

  /* 6) Using late keyword (late)
   * I'll assign a value to it later

    late int age;
    age = 2;
    print(age);
  */
