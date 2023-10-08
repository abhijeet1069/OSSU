# Model View Controller (MVC)
One of the best known design patterns.
- Model : Data, think DTO (Data Transfer Object)
- View : What the user sees. Often XML or HTML based.
- Controller : Handle events, button clicks, routing.

In Spring,
Model : DTO. May have annotations.

View : HTML page with CSS, JS, etc
 - Use Thmeleaf to inject values.

Controller - a class to map endpoint
    @Controller : Use to ID controller class
    @RequestMapping : Maps to API endpoint
    @RequestParam : Access URL parameters


