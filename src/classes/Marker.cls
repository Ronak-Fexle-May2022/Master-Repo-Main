public virtual class Marker {
    public virtual void write() {
        System.debug('Writing some text.');
    }

    public virtual Double discount() {
        return .05;
    }
// Extension for the Marker class
public class YellowMarker extends Marker {
    public override void write() {
         System.debug('Writing some text using the yellow marker.');
  } 
}
// Extension for the Marker class
public class RedMarker extends Marker {
    public override void write() {
         System.debug('Writing some text in red.');
  } 

  // Method only in this class
  public Double computePrice() {
      return 1.5;
  }
}
}