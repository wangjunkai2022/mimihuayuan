package f.i.a.a.e1;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationManagerCompat;
import f.i.a.a.e1.s;
import f.i.a.a.e1.v;
import f.i.a.a.l1.k0.l;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: ProgressiveDownloader.java */
/* loaded from: classes.dex */
public final class a0 implements v {
    public final f.i.a.a.l1.p a;
    public final f.i.a.a.l1.k0.b b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.a.a.l1.k0.e f4699c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.a.a.l1.k0.j f4700d;

    /* renamed from: e  reason: collision with root package name */
    public final f.i.a.a.m1.x f4701e;

    /* renamed from: f  reason: collision with root package name */
    public final AtomicBoolean f4702f;

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
        this.a = new f.i.a.a.l1.p(uri, 0L, -1L, str, 16);
        this.b = wVar.a;
        this.f4699c = wVar.f4777d.createDataSource();
        f.i.a.a.l1.k0.j jVar = wVar.b;
        this.f4700d = jVar == null ? f.i.a.a.l1.k0.l.a : jVar;
        f.i.a.a.m1.x xVar = wVar.f4776c;
        this.f4701e = xVar == null ? new f.i.a.a.m1.x() : xVar;
        this.f4702f = new AtomicBoolean();
    }

    @Override // f.i.a.a.e1.v
    public void a(@Nullable v.a aVar) throws InterruptedException, IOException {
        this.f4701e.a(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
        try {
            f.i.a.a.l1.k0.l.b(this.a, this.b, this.f4700d, this.f4699c, new byte[131072], this.f4701e, NotificationManagerCompat.IMPORTANCE_UNSPECIFIED, new a(aVar), this.f4702f, true);
        } finally {
            this.f4701e.b(NotificationManagerCompat.IMPORTANCE_UNSPECIFIED);
        }
    }

    @Override // f.i.a.a.e1.v
    public void cancel() {
        this.f4702f.set(true);
    }

    @Override // f.i.a.a.e1.v
    public void remove() {
        f.i.a.a.l1.k0.l.g(this.a, this.b, this.f4700d);
    }
}
