package f.i.a.a.e1;

import android.net.Uri;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationManagerCompat;
import f.i.a.a.e1.s;
import f.i.a.a.e1.v;
import f.i.a.a.e1.y;
import f.i.a.a.l1.k0.l;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: SegmentDownloader.java */
/* loaded from: classes.dex */
public abstract class b0<M extends y<M>> implements v {
    public final f.i.a.a.l1.p a;
    public final f.i.a.a.l1.k0.b b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.l1.k0.e f4694c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.a.a.l1.k0.e f4695d;

    /* renamed from: e  reason: collision with root package name */
    public final f.i.a.a.l1.k0.j f4696e;

    /* renamed from: f  reason: collision with root package name */
    public final f.i.a.a.m1.x f4697f;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList<c0> f4698g;

    /* renamed from: h  reason: collision with root package name */
    public final AtomicBoolean f4699h;

    /* compiled from: SegmentDownloader.java */
    /* loaded from: classes.dex */
    public static final class a implements l.a {
        public final v.a a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4700c;

        /* renamed from: d  reason: collision with root package name */
        public long f4701d;

        /* renamed from: e  reason: collision with root package name */
        public int f4702e;

        public a(v.a aVar, long j2, int i2, long j3, int i3) {
            this.a = aVar;
            this.b = j2;
            this.f4700c = i2;
            this.f4701d = j3;
            this.f4702e = i3;
        }

        @Override // f.i.a.a.l1.k0.l.a
        public void a(long j2, long j3, long j4) {
            long j5 = this.f4701d + j4;
            this.f4701d = j5;
            ((s.e) this.a).b(this.b, j5, b());
        }

        public final float b() {
            long j2 = this.b;
            if (j2 != -1 && j2 != 0) {
                return (((float) this.f4701d) * 100.0f) / ((float) j2);
            }
            int i2 = this.f4700c;
            if (i2 != 0) {
                return (this.f4702e * 100.0f) / i2;
            }
            return -1.0f;
        }
    }

    /* compiled from: SegmentDownloader.java */
    /* loaded from: classes.dex */
    public static class b implements Comparable<b> {
        public final long a;
        public final f.i.a.a.l1.p b;

        public b(long j2, f.i.a.a.l1.p pVar) {
            this.a = j2;
            this.b = pVar;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull b bVar) {
            return h0.m(this.a, bVar.a);
        }
    }

    public b0(Uri uri, List<c0> list, w wVar) {
        this.a = b(uri);
        this.f4698g = new ArrayList<>(list);
        this.b = wVar.a;
        this.f4694c = wVar.f4768d.createDataSource();
        this.f4695d = wVar.f4769e.createDataSource();
        f.i.a.a.l1.k0.j jVar = wVar.b;
        this.f4696e = jVar == null ? f.i.a.a.l1.k0.l.a : jVar;
        f.i.a.a.m1.x xVar = wVar.f4767c;
        this.f4697f = xVar == null ? new f.i.a.a.m1.x() : xVar;
        this.f4699h = new AtomicBoolean();
    }

    public static f.i.a.a.l1.p b(Uri uri) {
        return new f.i.a.a.l1.p(uri, 0L, -1L, null, 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f.i.a.a.e1.v
    public final void a(@Nullable v.a aVar) throws IOException, InterruptedException {
        this.f4697f.a(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
        try {
            y c2 = c(this.f4694c, this.a);
            if (!this.f4698g.isEmpty()) {
                c2 = (y) c2.a(this.f4698g);
            }
            List<b> d2 = d(this.f4694c, c2, false);
            int size = d2.size();
            long j2 = 0;
            long j3 = 0;
            int i2 = 0;
            for (int size2 = d2.size() - 1; size2 >= 0; size2--) {
                Pair<Long, Long> c3 = f.i.a.a.l1.k0.l.c(d2.get(size2).b, this.b, this.f4696e);
                long longValue = ((Long) c3.first).longValue();
                long longValue2 = ((Long) c3.second).longValue();
                j3 += longValue2;
                if (longValue != -1) {
                    if (longValue == longValue2) {
                        i2++;
                        d2.remove(size2);
                    }
                    if (j2 != -1) {
                        j2 += longValue;
                    }
                } else {
                    j2 = -1;
                }
            }
            Collections.sort(d2);
            a aVar2 = new a(aVar, j2, size, j3, i2);
            byte[] bArr = new byte[131072];
            for (int i3 = 0; i3 < d2.size(); i3++) {
                f.i.a.a.l1.k0.l.b(d2.get(i3).b, this.b, this.f4696e, this.f4694c, bArr, this.f4697f, NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, aVar2, this.f4699h, true);
                if (aVar2 != null) {
                    aVar2.f4702e++;
                    ((s.e) aVar2.a).b(aVar2.b, aVar2.f4701d, aVar2.b());
                }
            }
        } finally {
            this.f4697f.b(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
        }
    }

    public abstract M c(f.i.a.a.l1.m mVar, f.i.a.a.l1.p pVar) throws IOException;

    @Override // f.i.a.a.e1.v
    public void cancel() {
        this.f4699h.set(true);
    }

    public abstract List<b> d(f.i.a.a.l1.m mVar, M m2, boolean z) throws InterruptedException, IOException;

    public final void e(f.i.a.a.l1.p pVar) {
        f.i.a.a.l1.k0.l.g(pVar, this.b, this.f4696e);
    }

    @Override // f.i.a.a.e1.v
    public final void remove() throws InterruptedException {
        try {
            List<b> d2 = d(this.f4695d, c(this.f4695d, this.a), true);
            for (int i2 = 0; i2 < d2.size(); i2++) {
                e(d2.get(i2).b);
            }
        } catch (IOException unused) {
        } catch (Throwable th) {
            e(this.a);
            throw th;
        }
        e(this.a);
    }
}
