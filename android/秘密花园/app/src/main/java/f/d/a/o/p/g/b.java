package f.d.a.o.p.g;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.m.a;
import f.d.a.o.n.b0.d;

/* compiled from: GifBitmapProvider.java */
/* loaded from: classes.dex */
public final class b implements a.AbstractC0026a {
    public final d a;
    @Nullable
    public final f.d.a.o.n.b0.b b;

    public b(d dVar, @Nullable f.d.a.o.n.b0.b bVar) {
        this.a = dVar;
        this.b = bVar;
    }

    @NonNull
    public byte[] a(int i2) {
        f.d.a.o.n.b0.b bVar = this.b;
        if (bVar == null) {
            return new byte[i2];
        }
        return (byte[]) bVar.f(i2, byte[].class);
    }
}
