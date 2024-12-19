import ballerina/jballerina.java;

# Represents a rectangular area on a Screen.
public class Region {

    # Initializes the `Region` object.
    #
    # + x - The x-coordinate of the upper left corner of the region.
    # + y - The y-coordinate of the upper left corner of the region.
    # + w - The width of the region.
    # + h - The height of the region.
    public isolated function init(int x, int y, int w, int h) {
        self.createRegion(x, y, w, h);
    }

    # Creates a new `Region` object.
    #
    # + x - The x-coordinate of the upper left corner of the region.
    # + y - The y-coordinate of the upper left corner of the region.
    # + w - The width of the region.
    # + h - The height of the region.
    private isolated function createRegion(int x, int y, int w, int h) = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Clicks on the center of the Region.
    public isolated function click() = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Clicks on the center of the Region twice.
    public isolated function doubleClick() = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Right clicks on the center of the Region.
    public isolated function rightClick() = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Drags the mouse from the current location to the center of the Region.
    public isolated function hover() = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Drags an element from one location to another inside the corresponding `Region`.
    # 
    # + imagePath1 - The path to the image of the element to be dragged.
    # + imagePath2 - The path to the image of the location to drop the element.
    # + return - Returns `()` is successful, otherwise returns `Error`.
    public isolated function dragDrop(string imagePath1, string imagePath2) returns Error? = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Checks whether the given image exists in the `Region`.
    # 
    # + imagePath - The path to the image to be checked.
    # + return - Returns `true` if the image exists, otherwise returns `false`.    
    public isolated function exists(string imagePath) returns boolean = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Press and hold the given key.
    # 
    # + key - The key to be pressed.
    public isolated function keyDown(string key) = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Release the given key.
    # 
    # + key - The key to be released.
    public isolated function keyUp(string key) = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Types the given string.
    #
    # + value - The string to be typed.
    public isolated function 'type(string value) = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Scrolls the mouse wheel.
    # 
    # + direction - The direction of the scroll. 1 for scrolling down and 0 for scrolling up.
    # + noOfSteps - The number of steps to scroll.
    # + return - Returns `Error` if an error occurs while scrolling.
    public isolated function wheel(int direction, int noOfSteps) returns Error? = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixLocation"
    } external;

    # Checks whether the given text exists in the `Region`.
    # 
    # + text - The text to be checked.
    # + return - Returns `true` if the text exists, otherwise returns `false`.    
    public isolated function existsText(string text) returns boolean = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns the location of the bottom-left corner of the `Region`.
    #
    # + return - Returns `Location` object represents bottom-left corner of the `Region`.
    public isolated function getBottomLeft() returns Location = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns the location of the bottom-right corner of the `Region`.     
    # 
    # + return - Returns `Location` object represents bottom-right corner of the `Region`.
    public isolated function getBottomRight() returns Location = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns the location of the top-left corner of the `Region`.
    # 
    # + return - Returns `Location` object represents top-left corner of the `Region`.
    public isolated function getTopLeft() returns Location = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns the location of the top-right corner of the `Region`.
    # 
    # + return - Returns `Location` object represents top-right corner of the `Region`.
    public isolated function getTopRight() returns Location = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns the location of the center of the `Region`.
    # 
    # + return - Returns `Location` object represents center of the `Region`.
    public isolated function getCenter() returns Location = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns the height of the `Region`.  
    # 
    # + return - Returns `int` represents the height of the `Region`.
    public isolated function getH() returns int = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns the width of the `Region`.
    # 
    # + return - Returns `int` represents the width of the `Region`.
    public isolated function getW() returns int = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns the text inside the region.
    # 
    # + return - Returns `string` represents the text.

    public isolated function getText() returns string = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns the `Match` object similar to an image within the `Region`.
    # 
    # + imagePath - The path to the image to be found.
    # + return - Returns `Match` object if the image found, otherwise returns `Error`.
    public isolated function find(string imagePath) returns Match|Error = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns the `Match` object similar to a text within the `Region`.
    # 
    # + text - The text to be found.
    # + return - Returns `Match` object if the text found, otherwise returns `Error`.
    public isolated function findText(string text) returns Match|Error = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;

    # Returns an array of `Match` objects similar to image within the `Region`.
    # 
    # + imagePath - The path to the image to be found.
    # + return - Returns an array of `Match` objects if the image found, otherwise returns `Error`.
    public isolated function findAll(string imagePath) returns Match[]|Error = @java:Method {
        'class: "io.ballerina.lib.sikulix.SikulixRegion"
    } external;
    
}