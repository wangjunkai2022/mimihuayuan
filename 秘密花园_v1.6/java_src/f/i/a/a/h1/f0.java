package f.i.a.a.h1;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.f0;
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
        public b(f.i.a.a.l1.p pVar, Uri uri, Map<String, List<String>> map, long j2, long j3, long j4) {
        }
    }

    /* compiled from: MediaSourceEventListener.java */
    /* loaded from: classes.dex */
    public static final class c {
        public final int a;
        public final int b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final f.i.a.a.b0 f4832c;

        /* renamed from: d  reason: collision with root package name */
        public final int f4833d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final Object f4834e;

        /* renamed from: f  reason: collision with root package name */
        public final long f4835f;

        /* renamed from: g  reason: collision with root package name */
        public final long f4836g;

        public c(int i2, int i3, @Nullable f.i.a.a.b0 b0Var, int i4, @Nullable Object obj, long j2, long j3) {
            this.a = i2;
            this.b = i3;
            this.f4832c = b0Var;
            this.f4833d = i4;
            this.f4834e = obj;
            this.f4835f = j2;
            this.f4836g = j3;
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
        public final CopyOnWriteArrayList<C0074a> f4830c;

        /* renamed from: d  reason: collision with root package name */
        public final long f4831d;

        /* compiled from: MediaSourceEventListener.java */
        /* renamed from: f.i.a.a.h1.f0$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0074a {
            public final Handler a;
            public final f0 b;

            public C0074a(Handler handler, f0 f0Var) {
                this.a = handler;
                this.b = f0Var;
            }
        }

        public a() {
            this.f4830c = new CopyOnWriteArrayList<>();
            this.a = 0;
            this.b = null;
            this.f4831d = 0L;
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
            c.a.a.b.g.h.t(aVar);
            final e0.a aVar2 = aVar;
            Iterator<C0074a> it = this.f4830c.iterator();
            while (it.hasNext()) {
                C0074a next = it.next();
                final f0 f0Var = next.b;
                A(next.a, new Runnable() { // from class: f.i.a.a.h1.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        f0.a.this.k(f0Var, aVar2);
                    }
                });
            }
        }

        public void C(final c cVar) {
            final e0.a aVar = this.b;
            c.a.a.b.g.h.t(aVar);
            Iterator<C0074a> it = this.f4830c.iterator();
            while (it.hasNext()) {
                C0074a next = it.next();
                final f0 f0Var = next.b;
                A(next.a, new Runnable() { // from class: f.i.a.a.h1.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        f0.a.this.l(f0Var, aVar, cVar);
                    }
                });
            }
        }

        @CheckResult
        public a D(int i2, @Nullable e0.a aVar, long j2) {
            return new a(this.f4830c, i2, aVar, j2);
        }

        public final long a(long j2) {
            long b = f.i.a.a.q.b(j2);
            if (b == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.f4831d + b;
        }

        public void b(int i2, @Nullable f.i.a.a.b0 b0Var, int i3, @Nullable Object obj, long j2) {
            c(new c(1, i2, b0Var, i3, obj, a(j2), -9223372036854775807L));
        }

        public void c(final c cVar) {
            Iterator<C0074a> it = this.f4830c.iterator();
            while (it.hasNext()) {
                C0074a next = it.next();
                final f0 f0Var = next.b;
                A(next.a, new Runnable() { // from class: f.i.a.a.h1.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        f0.a.this.d(f0Var, cVar);
                    }
                });
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

        public void m(final b bVar, final c cVar) {
            Iterator<C0074a> it = this.f4830c.iterator();
            while (it.hasNext()) {
                C0074a next = it.next();
                final f0 f0Var = next.b;
                A(next.a, new Runnable() { // from class: f.i.a.a.h1.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        f0.a.this.e(f0Var, bVar, cVar);
                    }
                });
            }
        }

        public void n(f.i.a.a.l1.p pVar, Uri uri, Map<String, List<String>> map, int i2, int i3, @Nullable f.i.a.a.b0 b0Var, int i4, @Nullable Object obj, long j2, long j3, long j4, long j5, long j6) {
            m(new b(pVar, uri, map, j4, j5, j6), new c(i2, i3, b0Var, i4, obj, a(j2), a(j3)));
        }

        public void o(f.i.a.a.l1.p pVar, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4) {
            n(pVar, uri, map, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2, j3, j4);
        }

        public void p(final b bVar, final c cVar) {
            Iterator<C0074a> it = this.f4830c.iterator();
            while (it.hasNext()) {
                C0074a next = it.next();
                final f0 f0Var = next.b;
                A(next.a, new Runnable() { // from class: f.i.a.a.h1.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        f0.a.this.f(f0Var, bVar, cVar);
                    }
                });
            }
        }

        public void q(f.i.a.a.l1.p pVar, Uri uri, Map<String, List<String>> map, int i2, int i3, @Nullable f.i.a.a.b0 b0Var, int i4, @Nullable Object obj, long j2, long j3, long j4, long j5, long j6) {
            p(new b(pVar, uri, map, j4, j5, j6), new c(i2, i3, b0Var, i4, obj, a(j2), a(j3)));
        }

        public void r(f.i.a.a.l1.p pVar, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4) {
            q(pVar, uri, map, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2, j3, j4);
        }

        public void s(final b bVar, final c cVar, final IOException iOException, final boolean z) {
            Iterator<C0074a> it = this.f4830c.iterator();
            while (it.hasNext()) {
                C0074a next = it.next();
                final f0 f0Var = next.b;
                A(next.a, new Runnable() { // from class: f.i.a.a.h1.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        f0.a.this.g(f0Var, bVar, cVar, iOException, z);
                    }
                });
            }
        }

        public void t(f.i.a.a.l1.p pVar, Uri uri, Map<String, List<String>> map, int i2, int i3, @Nullable f.i.a.a.b0 b0Var, int i4, @Nullable Object obj, long j2, long j3, long j4, long j5, long j6, IOException iOException, boolean z) {
            s(new b(pVar, uri, map, j4, j5, j6), new c(i2, i3, b0Var, i4, obj, a(j2), a(j3)), iOException, z);
        }

        public void u(f.i.a.a.l1.p pVar, Uri uri, Map<String, List<String>> map, int i2, long j2, long j3, long j4, IOException iOException, boolean z) {
            t(pVar, uri, map, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2, j3, j4, iOException, z);
        }

        public void v(final b bVar, final c cVar) {
            Iterator<C0074a> it = this.f4830c.iterator();
            while (it.hasNext()) {
                C0074a next = it.next();
                final f0 f0Var = next.b;
                A(next.a, new Runnable() { // from class: f.i.a.a.h1.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        f0.a.this.h(f0Var, bVar, cVar);
                    }
                });
            }
        }

        public void w(f.i.a.a.l1.p pVar, int i2, int i3, @Nullable f.i.a.a.b0 b0Var, int i4, @Nullable Object obj, long j2, long j3, long j4) {
            v(new b(pVar, pVar.a, Collections.emptyMap(), j4, 0L, 0L), new c(i2, i3, b0Var, i4, obj, a(j2), a(j3)));
        }

        public void x(f.i.a.a.l1.p pVar, int i2, long j2) {
            w(pVar, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j2);
        }

        public void y() {
            e0.a aVar = this.b;
            c.a.a.b.g.h.t(aVar);
            final e0.a aVar2 = aVar;
            Iterator<C0074a> it = this.f4830c.iterator();
            while (it.hasNext()) {
                C0074a next = it.next();
                final f0 f0Var = next.b;
                A(next.a, new Runnable() { // from class: f.i.a.a.h1.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        f0.a.this.i(f0Var, aVar2);
                    }
                });
            }
        }

        public void z() {
            e0.a aVar = this.b;
            c.a.a.b.g.h.t(aVar);
            final e0.a aVar2 = aVar;
            Iterator<C0074a> it = this.f4830c.iterator();
            while (it.hasNext()) {
                C0074a next = it.next();
                final f0 f0Var = next.b;
                A(next.a, new Runnable() { // from class: f.i.a.a.h1.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        f0.a.this.j(f0Var, aVar2);
                    }
                });
            }
        }

        public a(CopyOnWriteArrayList<C0074a> copyOnWriteArrayList, int i2, @Nullable e0.a aVar, long j2) {
            this.f4830c = copyOnWriteArrayList;
            this.a = i2;
            this.b = aVar;
            this.f4831d = j2;
        }
    }
}
