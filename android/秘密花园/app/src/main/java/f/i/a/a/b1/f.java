package f.i.a.a.b1;

import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.b1.p;
import f.i.a.a.m1.u;
import java.io.EOFException;
import java.io.IOException;

/* compiled from: DummyTrackOutput.java */
/* loaded from: classes.dex */
public final class f implements p {
    @Override // f.i.a.a.b1.p
    public void a(u uVar, int i2) {
        uVar.A(uVar.b + i2);
    }

    @Override // f.i.a.a.b1.p
    public int b(d dVar, int i2, boolean z) throws IOException, InterruptedException {
        int min = Math.min(dVar.f4045g, i2);
        dVar.i(min);
        if (min == 0) {
            byte[] bArr = dVar.a;
            min = dVar.f(bArr, 0, Math.min(i2, bArr.length), 0, true);
        }
        dVar.b(min);
        if (min != -1) {
            return min;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // f.i.a.a.b1.p
    public void c(long j2, int i2, int i3, int i4, @Nullable p.a aVar) {
    }

    @Override // f.i.a.a.b1.p
    public void d(b0 b0Var) {
    }
}
