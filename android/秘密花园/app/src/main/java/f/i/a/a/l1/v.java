package f.i.a.a.l1;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import f.i.a.a.l1.a0;

/* compiled from: DefaultHttpDataSourceFactory.java */
/* loaded from: classes.dex */
public final class v extends a0.a {
    public final String b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final i0 f5648c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5649d;

    /* renamed from: e  reason: collision with root package name */
    public final int f5650e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f5651f;

    public v(String str, @Nullable i0 i0Var, int i2, int i3, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            this.b = str;
            this.f5648c = i0Var;
            this.f5649d = i2;
            this.f5650e = i3;
            this.f5651f = z;
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // f.i.a.a.l1.a0.a
    public a0 a(a0.f fVar) {
        u uVar = new u(this.b, null, this.f5649d, this.f5650e, this.f5651f, fVar);
        i0 i0Var = this.f5648c;
        if (i0Var != null) {
            uVar.c(i0Var);
        }
        return uVar;
    }
}
