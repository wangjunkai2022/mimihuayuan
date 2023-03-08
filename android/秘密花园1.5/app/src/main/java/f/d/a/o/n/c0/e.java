package f.d.a.o.n.c0;

import android.util.Log;
import f.d.a.l.a;
import f.d.a.o.n.c0.a;
import f.d.a.o.n.c0.c;
import java.io.File;
import java.io.IOException;

/* compiled from: DiskLruCacheWrapper.java */
/* loaded from: classes.dex */
public class e implements a {
    public final File b;

    /* renamed from: c  reason: collision with root package name */
    public final long f3599c;

    /* renamed from: e  reason: collision with root package name */
    public f.d.a.l.a f3601e;

    /* renamed from: d  reason: collision with root package name */
    public final c f3600d = new c();
    public final k a = new k();

    @Deprecated
    public e(File file, long j2) {
        this.b = file;
        this.f3599c = j2;
    }

    @Override // f.d.a.o.n.c0.a
    public void a(f.d.a.o.f fVar, a.b bVar) {
        c.a aVar;
        boolean z;
        String a = this.a.a(fVar);
        c cVar = this.f3600d;
        synchronized (cVar) {
            aVar = cVar.a.get(a);
            if (aVar == null) {
                c.b bVar2 = cVar.b;
                synchronized (bVar2.a) {
                    aVar = bVar2.a.poll();
                }
                if (aVar == null) {
                    aVar = new c.a();
                }
                cVar.a.put(a, aVar);
            }
            aVar.b++;
        }
        aVar.a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                String str = "Put: Obtained: " + a + " for for Key: " + fVar;
            }
            try {
                f.d.a.l.a c2 = c();
                if (c2.G(a) == null) {
                    a.c E = c2.E(a);
                    if (E != null) {
                        try {
                            f.d.a.o.n.f fVar2 = (f.d.a.o.n.f) bVar;
                            if (fVar2.a.a(fVar2.b, E.b(0), fVar2.f3623c)) {
                                f.d.a.l.a.d(f.d.a.l.a.this, E, true);
                                E.f3491c = true;
                            }
                            if (!z) {
                                try {
                                    E.a();
                                } catch (IOException unused) {
                                }
                            }
                        } finally {
                            if (!E.f3491c) {
                                try {
                                    E.a();
                                } catch (IOException unused2) {
                                }
                            }
                        }
                    } else {
                        throw new IllegalStateException("Had two simultaneous puts for: " + a);
                    }
                }
            } catch (IOException unused3) {
                Log.isLoggable("DiskLruCacheWrapper", 5);
            }
        } finally {
            this.f3600d.a(a);
        }
    }

    @Override // f.d.a.o.n.c0.a
    public File b(f.d.a.o.f fVar) {
        String a = this.a.a(fVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            String str = "Get: Obtained: " + a + " for for Key: " + fVar;
        }
        try {
            a.e G = c().G(a);
            if (G != null) {
                return G.a[0];
            }
            return null;
        } catch (IOException unused) {
            Log.isLoggable("DiskLruCacheWrapper", 5);
            return null;
        }
    }

    public final synchronized f.d.a.l.a c() throws IOException {
        if (this.f3601e == null) {
            this.f3601e = f.d.a.l.a.I(this.b, 1, 1, this.f3599c);
        }
        return this.f3601e;
    }
}
