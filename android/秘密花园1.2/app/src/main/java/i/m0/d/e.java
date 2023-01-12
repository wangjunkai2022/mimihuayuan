package i.m0.d;

import java.net.Proxy;

/* loaded from: classes.dex */
public final /* synthetic */ class e {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[Proxy.Type.values().length];
        a = iArr;
        iArr[Proxy.Type.DIRECT.ordinal()] = 1;
        a[Proxy.Type.HTTP.ordinal()] = 2;
        int[] iArr2 = new int[i.m0.g.b.values().length];
        b = iArr2;
        iArr2[4] = 1;
        b[5] = 2;
    }
}
