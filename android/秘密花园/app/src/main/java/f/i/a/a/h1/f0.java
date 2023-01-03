package f.i.a.a.h1;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.b0;
import f.i.a.a.h1.e0;
import f.i.a.a.l1.p;
import f.i.a.a.q;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MediaSourceEventListener.java */
/* loaded from: classes.dex */
public interface f0 {

    /* compiled from: MediaSourceEventListener.java */
    /* loaded from: classes.dex */
    public static final class b {
        public b(p pVar, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        }
    }

    /* compiled from: MediaSourceEventListener.java */
    /* loaded from: classes.dex */
    public static final class c {
        public final int a;
        public final int b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final b0 f4748c;

        /* renamed from: d  reason: collision with root package name */
        public final int f4749d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final Object f4750e;

        /* renamed from: f  reason: collision with root package name */
        public final long f4751f;

        /* renamed from: g  reason: collision with root package name */
        public final long f4752g;

        public c(int i2, int i3, @Nullable b0 b0Var, int i4, @Nullable Object obj, long j2, long j3) {
            this.a = i2;
            this.b = i3;
            this.f4748c = b0Var;
            this.f4749d = i4;
            this.f4750e = obj;
            this.f4751f = j2;
            this.f4752g = j3;
        }
    }

    void e(int i2, @Nullable e0.a aVar, b bVar, c cVar);

    void f(int i2, @Nullable e0.a aVar, b bVar, c cVar, IOException iOException, boolean z);

    void i(int i2, @Nullable e0.a aVar, b bVar, c cVar);

    void l(int i2, e0.a aVar);

    void n(int i2, e0.a aVar);

    void o(int i2, @Nullable e0.a aVar, b bVar, c cVar);

    void p(int i2, e0.a aVar);

    void x(int i2, e0.a aVar, c cVar);

    void y(int i2, @Nullable e0.a aVar, c cVar);

    /* compiled from: MediaSourceEventListener.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final int a;
        @Nullable
        public final e0.a b;

        /* renamed from: c  reason: collision with root package name */
        public final CopyOnWriteArrayList<C0067a> f4746c;

        /* renamed from: d  reason: collision with root package name */
        public final long f4747d;

        /* compiled from: MediaSourceEventListener.java */
        /* renamed from: f.i.a.a.h1.f0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0067a {
            public final Handler a;
            public final f0 b;

            public C0067a(Handler handler, f0 f0Var) {
                this.a = handler;
                this.b = f0Var;
            }
        }

        public a() {
            this.f4746c = new CopyOnWriteArrayList<>();
            this.a = 0;
            this.b = null;
            this.f4747d = 0;
        }

        public final void A(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }

        public void B() {
            e0.a aVar = this.b;
            h.t(aVar);
            e0.a aVar2 = aVar;
            Iterator<C0067a> it = this.f4746c.iterator();
            while (it.hasNext()) {
                C0067a next = it.next();
                A(next.a, new j(this, next.b, aVar2));
            }
        }

        public void C(c cVar) {
            e0.a aVar = this.b;
            h.t(aVar);
            Iterator<C0067a> it = this.f4746c.iterator();
            while (it.hasNext()) {
                C0067a next = it.next();
                A(next.a, new f(this, next.b, aVar, cVar));
            }
        }

        @CheckResult
        public a D(int i2, @Nullable e0.a aVar, long j2) {
            return new a(this.f4746c, i2, aVar, j2);
        }

        public final long a(long j2) {
            long b = q.b(j2);
            if (b == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f4747d + b;
        }

        public void b(int i2, @Nullable b0 b0Var, int i3, @Nullable Object obj, long j2) {
            c(new c(1, i2, b0Var, i3, obj, a(j2), -9223372036854775807L));
        }

        public void c(c cVar) {
            Iterator<C0067a> it = this.f4746c.iterator();
            while (it.hasNext()) {
                C0067a next = it.next();
                A(next.a, new g(this, next.b, cVar));
            }
        }

        public /* synthetic */ void d(f0 f0Var, c cVar) {
            f0Var.y(this.a, this.b, cVar);
        }

        public /* synthetic */ void e(f0 f0Var, b bVar, c cVar) {
            f0Var.o(this.a, this.b, bVar, cVar);
        }

        public /* synthetic */ void f(f0 f0Var, b bVar, c cVar) {
            f0Var.i(this.a, this.b, bVar, cVar);
        }

        public /* synthetic */ void g(f0 f0Var, b bVar, c cVar, IOException iOException, boolean z) {
            f0Var.f(this.a, this.b, bVar, cVar, iOException, z);
        }

        public /* synthetic */ void h(f0 f0Var, b bVar, c cVar) {
            f0Var.e(this.a, this.b, bVar, cVar);
        }

        public /* synthetic */ void i(f0 f0Var, e0.a aVar) {
            f0Var.p(this.a, aVar);
        }

        public /* synthetic */ void j(f0 f0Var, e0.a aVar) {
            f0Var.l(this.a, aVar);
        }

        public /* synthetic */ void k(f0 f0Var, e0.a aVar) {
            f0Var.n(this.a, aVar);
        }

        public /* synthetic */ void l(f0 f0Var, e0.a aVar, c cVar) {
            f0Var.x(this.a, aVar, cVar);
        }

        public void m(b bVar, c cVar) {
            Iterator<C0067a> it = this.f4746c.iterator();
            while (it.hasNext()) {
                C0067a next = it.next();
                A(next.a, new e(this, next.b, bVar, cVar));
            }
        }

        public void n(p pVar, Uri uri, Map<String, List<String>> map, int i2, int i3, @Nullable b0 b0Var, int i4, @Nullable Object obj, long j2, long j3, long j4, long j5, long j6) {
            m(new b(pVar, uri, map, j4, j5, j6), new c(i2, i3, b0Var, i4, obj, a(j2), a(j3)));
        }

        public void o(p pVar, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4) {
            n(pVar, uri, map, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2, j3, j4);
        }

        public void p(b bVar, c cVar) {
            Iterator<C0067a> it = this.f4746c.iterator();
            while (it.hasNext()) {
                C0067a next = it.next();
                A(next.a, new h(this, next.b, bVar, cVar));
            }
        }

        public void q(p pVar, Uri uri, Map<String, List<String>> map, int i2, int i3, @Nullable b0 b0Var, int i4, @Nullable Object obj, long j2, long j3, long j4, long j5, long j6) {
            p(new b(pVar, uri, map, j4, j5, j6), new c(i2, i3, b0Var, i4, obj, a(j2), a(j3)));
        }

        public void r(p pVar, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4) {
            q(pVar, uri, map, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2, j3, j4);
        }

        public void s(b bVar, c cVar, IOException iOException, boolean z) {
            Iterator<C0067a> it = this.f4746c.iterator();
            while (it.hasNext()) {
                C0067a next = it.next();
                A(next.a, new d(this, next.b, bVar, cVar, iOException, z));
            }
        }

        public void t(p pVar, Uri uri, Map<String, List<String>> map, int i2, int i3, @Nullable b0 b0Var, int i4, @Nullable Object obj, long j2, long j3, long j4, long j5, long j6, IOException iOException, boolean z) {
            s(new b(pVar, uri, map, j4, j5, j6), new c(i2, i3, b0Var, i4, obj, a(j2), a(j3)), iOException, z);
        }

        public void u(p pVar, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4, IOException iOException, boolean z) {
            t(pVar, uri, map, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2, j3, j4, iOException, z);
        }

        public void v(b bVar, c cVar) {
            Iterator<C0067a> it = this.f4746c.iterator();
            while (it.hasNext()) {
                C0067a next = it.next();
                A(next.a, new k(this, next.b, bVar, cVar));
            }
        }

        public void w(p pVar, int i2, int i3, @Nullable b0 b0Var, int i4, @Nullable Object obj, long j2, long j3, long j4) {
            v(new b(pVar, pVar.a, Collections.emptyMap(), j4, 0, 0), new c(i2, i3, b0Var, i4, obj, a(j2), a(j3)));
        }

        public void x(p pVar, int i2, long j2) {
            w(pVar, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2);
        }

        public void y() {
            e0.a aVar = this.b;
            h.t(aVar);
            e0.a aVar2 = aVar;
            Iterator<C0067a> it = this.f4746c.iterator();
            while (it.hasNext()) {
                C0067a next = it.next();
                A(next.a, new i(this, next.b, aVar2));
            }
        }

        public void z() {
            e0.a aVar = this.b;
            h.t(aVar);
            e0.a aVar2 = aVar;
            Iterator<C0067a> it = this.f4746c.iterator();
            while (it.hasNext()) {
                C0067a next = it.next();
                A(next.a, new l(this, next.b, aVar2));
            }
        }

        public a(CopyOnWriteArrayList<C0067a> copyOnWriteArrayList, int i2, @Nullable e0.a aVar, long j2) {
            this.f4746c = copyOnWriteArrayList;
            this.a = i2;
            this.b = aVar;
            this.f4747d = j2;
        }
    }
}
