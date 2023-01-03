package f.i.a.a.e1;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationManagerCompat;
import f.i.a.a.e1.s;
import f.i.a.a.e1.v;
import f.i.a.a.l1.k0.b;
import f.i.a.a.l1.k0.e;
import f.i.a.a.l1.k0.j;
import f.i.a.a.l1.k0.l;
import f.i.a.a.l1.p;
import f.i.a.a.m1.x;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ProgressiveDownloader.java */
/* loaded from: classes.dex */
public final class a0 implements v {
    public final p a;
    public final b b;

    /* renamed from: c  reason: collision with root package name */
    public final e f4615c;

    /* renamed from: d  reason: collision with root package name */
    public final j f4616d;

    /* renamed from: e  reason: collision with root package name */
    public final x f4617e;

    /* renamed from: f  reason: collision with root package name */
    public final AtomicBoolean f4618f;

    /* compiled from: ProgressiveDownloader.java */
    /* loaded from: classes.dex */
    public static final class a implements l.a {
        public final v.a a;

        public a(v.a aVar) {
            this.a = aVar;
        }

        @Override // f.i.a.a.l1.k0.l.a
        public void a(long j2, long j3, long j4) {
            ((s.e) this.a).b(j2, j3, (j2 == -1 || j2 == 0) ? -1.0f : (((float) j3) * 100.0f) / ((float) j2));
        }
    }

    public a0(Uri uri, @Nullable String str, w wVar) {
        this.a = new p(uri, 0, -1, str, 16);
        this.b = wVar.a;
        this.f4615c = wVar.f4693d.createDataSource();
        j jVar = wVar.b;
        this.f4616d = jVar == null ? l.a : jVar;
        x xVar = wVar.f4692c;
        this.f4617e = xVar == null ? new x() : xVar;
        this.f4618f = new AtomicBoolean();
    }

    @Override // f.i.a.a.e1.v
    public void a(@Nullable v.a aVar) throws InterruptedException, IOException {
        this.f4617e.a(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
        try {
            l.b(this.a, this.b, this.f4616d, this.f4615c, new byte[131072], this.f4617e, NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, new a(aVar), this.f4618f, true);
        } finally {
            this.f4617e.b(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
        }
    }

    @Override // f.i.a.a.e1.v
    public void cancel() {
        this.f4618f.set(true);
    }

    @Override // f.i.a.a.e1.v
    public void remove() {
        l.g(this.a, this.b, this.f4616d);
    }
}
