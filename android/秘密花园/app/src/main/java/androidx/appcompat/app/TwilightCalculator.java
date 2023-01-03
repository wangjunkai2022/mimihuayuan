package androidx.appcompat.app;

/* loaded from: classes.dex */
public class TwilightCalculator {
    public static final float ALTIDUTE_CORRECTION_CIVIL_TWILIGHT = -0.10471976f;
    public static final float C1 = 0.0334196f;
    public static final float C2 = 3.49066E-4f;
    public static final float C3 = 5.236E-6f;
    public static final int DAY = 0;
    public static final float DEGREES_TO_RADIANS = 0.017453292f;
    public static final float J0 = 9.0E-4f;
    public static final int NIGHT = 1;
    public static final float OBLIQUITY = 0.4092797f;
    public static final long UTC_2000 = 946728000000L;
    public static TwilightCalculator sInstance;
    public int state;
    public long sunrise;
    public long sunset;

    public static TwilightCalculator getInstance() {
        if (sInstance == null) {
            sInstance = new TwilightCalculator();
        }
        return sInstance;
    }

    public void calculateTwilight(long j2, double d2, double d3) {
        float f2 = ((float) (j2 - UTC_2000)) / 8.64E7f;
        float f3 = (0.01720197f * f2) + 6.24006f;
        double d4 = (double) f3;
        double sin = (Math.sin((double) (f3 * 3.0f)) * 5.236000106378924E-6d) + (Math.sin((double) (2.0f * f3)) * 3.4906598739326E-4d) + (Math.sin(d4) * 0.03341960161924362d) + d4 + 1.796593063d + 3.141592653589793d;
        double d5 = (-d3) / 360.0d;
        double sin2 = (Math.sin(2.0d * sin) * -0.0069d) + (Math.sin(d4) * 0.0053d) + ((double) (((float) Math.round(((double) (f2 - 9.0E-4f)) - d5)) + 9.0E-4f)) + d5;
        double asin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(sin));
        double d6 = 0.01745329238474369d * d2;
        double sin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(asin) * Math.sin(d6))) / (Math.cos(asin) * Math.cos(d6));
        if (sin3 >= 1.0d) {
            this.state = 1;
            this.sunset = -1;
            this.sunrise = -1;
        } else if (sin3 <= -1.0d) {
            this.state = 0;
            this.sunset = -1;
            this.sunrise = -1;
        } else {
            double acos = (double) ((float) (Math.acos(sin3) / 6.283185307179586d));
            this.sunset = Math.round((sin2 + acos) * 8.64E7d) + UTC_2000;
            long round = Math.round((sin2 - acos) * 8.64E7d) + UTC_2000;
            this.sunrise = round;
            if (round >= j2 || this.sunset <= j2) {
                this.state = 1;
            } else {
                this.state = 0;
            }
        }
    }
}
