public class Plotter {

    // This inner class manages the points
    class Point {
        Double x;
        Double y;

        Point(Double x, Double y) {
             this.x = x;
             this.y = y;
        }
        Double getXCoordinate() {
             return x;
        }

        Double getYCoordinate() {
             return y;
        }
    }

    List<Point> points = new List<Point>();

    public void plot(Double x, Double y) {
        points.add(new Point(x, y));
    }
    
    // The following method takes the list of points and does something with them
    public void render() {
    }
}