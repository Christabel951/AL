**Create Code Unit to:**
*Validate address entered by user in the Customer Card to reject value starting with \'+\'*
*Display warning/error message if value is rejected*
**Procedure**
*Create codeunit object*
*Create a custom local procedure - __CheckForPlusSign__*
*Check if parameter contains a (+) sign*
*Create an event subscriber that subscribes to the __OnBeforeValidate__ event on the __Address__ field of the customer card*