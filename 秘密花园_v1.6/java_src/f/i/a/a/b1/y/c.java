package f.i.a.a.b1.y;

import f.i.a.a.b1.d;
import f.i.a.a.m1.u;
import java.io.IOException;
/* compiled from: WavHeaderReader.java */
/* loaded from: classes.dex */
public final class c {
    public final int a;
    public final long b;

    public c(int i2, long j2) {
        this.a = i2;
        this.b = j2;
    }

    public static c a(d dVar, u uVar) throws IOException, InterruptedException {
        dVar.d(uVar.a, 0, 8, false);
        uVar.A(0);
        return new c(uVar.d(), uVar.g());
    }
}
