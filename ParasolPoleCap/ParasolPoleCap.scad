// ------------------------------------------------------------------------------------------
// Simple cap for a parasol pole
// ------------------------------------------------------------------------------------------
//
// Simple cap where to cover a hollow parasol pole over winter.
//
// Define the width of your pole (maybe less a few mm to make it tight), the thickness of cap
// you want, and the height, and export and print in PETG or other similar material that can
// survive the elements.
//
// https://3dprinting.seeburn.co.uk/
// https://github.com/SiDtheTurtle/3DPrinting
//
// ------------------------------------------------------------------------------------------

// ------------------------------------------------------------------------------------------
// Parameters
// ------------------------------------------------------------------------------------------

Cap_Diameter = 57; // Diameter of the pole to be covered, make it tight!
Cap_Thickness = 5; // Thickness of the cap, the thicker the stronger it is, but the harder to flex.
Cap_Height = 50; // The height of the cap, make it tall enough so it doesn't slip off.

/* [Hidden] */
$fn=1024; // Smoothness of the cylinder, made it high enough that the printer will see it as a continuous line.

// Render
difference() {
    cylinder(h = Cap_Height, d = Cap_Diameter + Cap_Thickness, center = true);
    translate([0, 0, Cap_Thickness]) {
        #cylinder(h = 50, d = Cap_Diameter, center = true);
    }
}