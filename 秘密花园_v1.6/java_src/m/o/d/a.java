package m.o.d;
/* compiled from: PlatformDependent.java */
/* loaded from: classes2.dex */
public final class a {
    public static final int a;
    public static final boolean b;

    static {
        int i2;
        try {
            i2 = ((Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null)).intValue();
        } catch (Exception unused) {
            i2 = 0;
        }
        a = i2;
        b = i2 != 0;
    }
}
