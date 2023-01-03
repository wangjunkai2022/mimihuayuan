package f.i.a.a.a1.a;

import androidx.annotation.Nullable;
import f.i.a.a.l1.a0;
import f.i.a.a.l1.i0;
import i.e;
import i.f;

/* compiled from: OkHttpDataSourceFactory.java */
/* loaded from: classes.dex */
public final class b extends a0.a {
    public final f.a b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f4002c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final i0 f4003d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final e f4004e = null;

    public b(f.a aVar, @Nullable String str, @Nullable i0 i0Var) {
        this.b = aVar;
        this.f4002c = str;
        this.f4003d = i0Var;
    }

    @Override // f.i.a.a.l1.a0.a
    public a0 a(a0.f fVar) {
        a aVar = new a(this.b, this.f4002c, null, this.f4004e, fVar);
        i0 i0Var = this.f4003d;
        if (i0Var != null) {
            aVar.c(i0Var);
        }
        return aVar;
    }
}
