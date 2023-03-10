package j;

import java.io.OutputStream;
/* compiled from: Okio.kt */
/* loaded from: classes.dex */
public final class s implements y {
    public final OutputStream a;
    public final b0 b;

    public s(OutputStream outputStream, b0 b0Var) {
        this.a = outputStream;
        this.b = b0Var;
    }

    @Override // j.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.a.close();
    }

    @Override // j.y, java.io.Flushable
    public void flush() {
        this.a.flush();
    }

    @Override // j.y
    public b0 i() {
        return this.b;
    }

    @Override // j.y
    public void j(g gVar, long j2) {
        if (gVar != null) {
            b.i(gVar.b, 0L, j2);
            while (j2 > 0) {
                this.b.f();
                v vVar = gVar.a;
                if (vVar != null) {
                    int min = (int) Math.min(j2, vVar.f7074c - vVar.b);
                    this.a.write(vVar.a, vVar.b, min);
                    int i2 = vVar.b + min;
                    vVar.b = i2;
                    long j3 = min;
                    j2 -= j3;
                    gVar.b -= j3;
                    if (i2 == vVar.f7074c) {
                        gVar.a = vVar.a();
                        w.a(vVar);
                    }
                } else {
                    h.o.c.g.e();
                    throw null;
                }
            }
            return;
        }
        h.o.c.g.f("source");
        throw null;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("sink(");
        o.append(this.a);
        o.append(')');
        return o.toString();
    }
}
