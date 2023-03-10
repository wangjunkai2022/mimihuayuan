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
    public final i0 f5732c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5733d;

    /* renamed from: e  reason: collision with root package name */
    public final int f5734e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f5735f;

    public v(String str, @Nullable i0 i0Var, int i2, int i3, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            this.b = str;
            this.f5732c = i0Var;
            this.f5733d = i2;
            this.f5734e = i3;
            this.f5735f = z;
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // f.i.a.a.l1.a0.a
    public a0 a(a0.f fVar) {
        u uVar = new u(this.b, null, this.f5733d, this.f5734e, this.f5735f, fVar);
        i0 i0Var = this.f5732c;
        if (i0Var != null) {
            uVar.c(i0Var);
        }
        return uVar;
    }
}
