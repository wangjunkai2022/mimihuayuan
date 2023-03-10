package i.m0.d;

import java.io.IOException;
/* compiled from: RouteException.kt */
/* loaded from: classes.dex */
public final class k extends RuntimeException {
    public IOException a;
    public final IOException b;

    public k(IOException iOException) {
        super(iOException);
        this.b = iOException;
        this.a = iOException;
    }
}
