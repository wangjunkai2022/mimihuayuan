package f.i.a.a.h1;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.b1.i;
import f.i.a.a.h1.e0;
import f.i.a.a.l1.b0;
import f.i.a.a.l1.e;
import f.i.a.a.l1.i0;
import f.i.a.a.l1.m;
import f.i.a.a.u0;
import java.io.IOException;

/* compiled from: ExtractorMediaSource.java */
@Deprecated
/* loaded from: classes.dex */
public final class y extends o implements e0.b {

    /* renamed from: f  reason: collision with root package name */
    public final h0 f5210f;

    public y(Uri uri, m.a aVar, i iVar, b0 b0Var, String str, int i2, Object obj, a aVar2) {
        this.f5210f = new h0(uri, aVar, iVar, b0Var, str, i2, null);
    }

    @Override // f.i.a.a.h1.e0
    @Nullable
    public Object a() {
        return this.f5210f.f4787l;
    }

    @Override // f.i.a.a.h1.e0
    public void b() throws IOException {
        if (this.f5210f == null) {
            throw null;
        }
    }

    @Override // f.i.a.a.h1.e0
    public d0 c(e0.a aVar, e eVar, long j2) {
        return this.f5210f.c(aVar, eVar, j2);
    }

    @Override // f.i.a.a.h1.e0
    public void d(d0 d0Var) {
        this.f5210f.d(d0Var);
    }

    @Override // f.i.a.a.h1.e0.b
    public void f(e0 e0Var, u0 u0Var, @Nullable Object obj) {
        m(u0Var, obj);
    }

    @Override // f.i.a.a.h1.o
    public void l(@Nullable i0 i0Var) {
        this.f5210f.e(this, i0Var);
    }

    @Override // f.i.a.a.h1.o
    public void n() {
        this.f5210f.i(this);
    }
}
