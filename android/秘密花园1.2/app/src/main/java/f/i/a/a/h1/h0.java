package f.i.a.a.h1;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.g0;
import f.i.a.a.l1.m;
import java.io.IOException;

/* compiled from: ProgressiveMediaSource.java */
/* loaded from: classes.dex */
public final class h0 extends o implements g0.c {

    /* renamed from: f  reason: collision with root package name */
    public final Uri f4856f;

    /* renamed from: g  reason: collision with root package name */
    public final m.a f4857g;

    /* renamed from: h  reason: collision with root package name */
    public final f.i.a.a.b1.i f4858h;

    /* renamed from: i  reason: collision with root package name */
    public final f.i.a.a.l1.b0 f4859i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final String f4860j;

    /* renamed from: k  reason: collision with root package name */
    public final int f4861k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final Object f4862l;

    /* renamed from: m  reason: collision with root package name */
    public long f4863m = -9223372036854775807L;
    public boolean n;
    @Nullable
    public f.i.a.a.l1.i0 o;

    public h0(Uri uri, m.a aVar, f.i.a.a.b1.i iVar, f.i.a.a.l1.b0 b0Var, @Nullable String str, int i2, @Nullable Object obj) {
        this.f4856f = uri;
        this.f4857g = aVar;
        this.f4858h = iVar;
        this.f4859i = b0Var;
        this.f4860j = str;
        this.f4861k = i2;
        this.f4862l = obj;
    }

    @Override // f.i.a.a.h1.e0
    @Nullable
    public Object a() {
        return this.f4862l;
    }

    @Override // f.i.a.a.h1.e0
    public void b() throws IOException {
    }

    @Override // f.i.a.a.h1.e0
    public d0 c(e0.a aVar, f.i.a.a.l1.e eVar, long j2) {
        f.i.a.a.l1.m createDataSource = this.f4857g.createDataSource();
        f.i.a.a.l1.i0 i0Var = this.o;
        if (i0Var != null) {
            createDataSource.c(i0Var);
        }
        return new g0(this.f4856f, createDataSource, this.f4858h.a(), this.f4859i, this.b.D(0, aVar, 0L), this, eVar, this.f4860j, this.f4861k);
    }

    @Override // f.i.a.a.h1.e0
    public void d(d0 d0Var) {
        g0 g0Var = (g0) d0Var;
        if (g0Var.u) {
            for (j0 j0Var : g0Var.r) {
                j0Var.j();
            }
        }
        g0Var.f4835i.f(g0Var);
        g0Var.n.removeCallbacksAndMessages(null);
        g0Var.o = null;
        g0Var.J = true;
        g0Var.f4830d.z();
    }

    @Override // f.i.a.a.h1.o
    public void l(@Nullable f.i.a.a.l1.i0 i0Var) {
        this.o = i0Var;
        o(this.f4863m, this.n);
    }

    @Override // f.i.a.a.h1.o
    public void n() {
    }

    public final void o(long j2, boolean z) {
        this.f4863m = j2;
        this.n = z;
        long j3 = this.f4863m;
        m(new n0(j3, j3, 0L, 0L, this.n, false, this.f4862l), null);
    }

    public void q(long j2, boolean z) {
        if (j2 == -9223372036854775807L) {
            j2 = this.f4863m;
        }
        if (this.f4863m == j2 && this.n == z) {
            return;
        }
        o(j2, z);
    }
}
