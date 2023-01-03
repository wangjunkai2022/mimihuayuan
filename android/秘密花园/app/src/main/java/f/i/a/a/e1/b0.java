package f.i.a.a.e1;

import android.net.Uri;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationManagerCompat;
import f.i.a.a.e1.s;
import f.i.a.a.e1.v;
import f.i.a.a.e1.y;
import f.i.a.a.l1.k0.e;
import f.i.a.a.l1.k0.j;
import f.i.a.a.l1.k0.l;
import f.i.a.a.l1.m;
import f.i.a.a.l1.p;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.x;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: SegmentDownloader.java */
/* loaded from: classes.dex */
public abstract class b0<M extends y<M>> implements v {
    public final p a;
    public final f.i.a.a.l1.k0.b b;

    /* renamed from: c  reason: collision with root package name */
    public final e f4619c;

    /* renamed from: d  reason: collision with root package name */
    public final e f4620d;

    /* renamed from: e  reason: collision with root package name */
    public final j f4621e;

    /* renamed from: f  reason: collision with root package name */
    public final x f4622f;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList<c0> f4623g;

    /* renamed from: h  reason: collision with root package name */
    public final AtomicBoolean f4624h;

    /* compiled from: SegmentDownloader.java */
    /* loaded from: classes.dex */
    public static final class a implements l.a {
        public final v.a a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4625c;

        /* renamed from: d  reason: collision with root package name */
        public long f4626d;

        /* renamed from: e  reason: collision with root package name */
        public int f4627e;

        public a(v.a aVar, long j2, int i2, long j3, int i3) {
            this.a = aVar;
            this.b = j2;
            this.f4625c = i2;
            this.f4626d = j3;
            this.f4627e = i3;
        }

        @Override // f.i.a.a.l1.k0.l.a
        public void a(long j2, long j3, long j4) {
            long j5 = this.f4626d + j4;
            this.f4626d = j5;
            ((s.e) this.a).b(this.b, j5, b());
        }

        public final float b() {
            long j2 = this.b;
            if (j2 != -1 && j2 != 0) {
                return (((float) this.f4626d) * 100.0f) / ((float) j2);
            }
            int i2 = this.f4625c;
            if (i2 != 0) {
                return (((float) this.f4627e) * 100.0f) / ((float) i2);
            }
            return -1.0f;
        }
    }

    /* compiled from: SegmentDownloader.java */
    /* loaded from: classes.dex */
    public static class b implements Comparable<b> {
        public final long a;
        public final p b;

        public b(long j2, p pVar) {
            this.a = j2;
            this.b = pVar;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // java.lang.Comparable
        public int compareTo(@NonNull b bVar) {
            return h0.m(this.a, bVar.a);
        }
    }

    public b0(Uri uri, List<c0> list, w wVar) {
        this.a = b(uri);
        this.f4623g = new ArrayList<>(list);
        this.b = wVar.a;
        this.f4619c = wVar.f4693d.createDataSource();
        this.f4620d = wVar.f4694e.createDataSource();
        j jVar = wVar.b;
        this.f4621e = jVar == null ? l.a : jVar;
        x xVar = wVar.f4692c;
        this.f4622f = xVar == null ? new x() : xVar;
        this.f4624h = new AtomicBoolean();
    }

    public static p b(Uri uri) {
        return new p(uri, 0, -1, null, 1);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r23v0, resolved type: f.i.a.a.e1.b0<M extends f.i.a.a.e1.y<M>> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // f.i.a.a.e1.v
    public final void a(@Nullable v.a aVar) throws IOException, InterruptedException {
        this.f4622f.a(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
        try {
            y c2 = c(this.f4619c, this.a);
            if (!this.f4623g.isEmpty()) {
                c2 = (y) c2.a(this.f4623g);
            }
            List<b> d2 = d(this.f4619c, c2, false);
            int size = d2.size();
            long j2 = 0;
            long j3 = 0;
            int i2 = 0;
            for (int size2 = d2.size() - 1; size2 >= 0; size2--) {
                Pair<Long, Long> c3 = l.c(d2.get(size2).b, this.b, this.f4621e);
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
                l.b(d2.get(i3).b, this.b, this.f4621e, this.f4619c, bArr, this.f4622f, NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, aVar2, this.f4624h, true);
                if (aVar2 != null) {
                    aVar2.f4627e++;
                    ((s.e) aVar2.a).b(aVar2.b, aVar2.f4626d, aVar2.b());
                }
            }
        } finally {
            this.f4622f.b(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
        }
    }

    public abstract M c(m mVar, p pVar) throws IOException;

    @Override // f.i.a.a.e1.v
    public void cancel() {
        this.f4624h.set(true);
    }

    public abstract List<b> d(m mVar, M m2, boolean z) throws InterruptedException, IOException;

    public final void e(p pVar) {
        l.g(pVar, this.b, this.f4621e);
    }

    @Override // f.i.a.a.e1.v
    public final void remove() throws InterruptedException {
        try {
            List<b> d2 = d(this.f4620d, c(this.f4620d, this.a), true);
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
