package f.i.a.a.l1;

import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: BaseDataSource.java */
/* loaded from: classes.dex */
public abstract class h implements m {
    public final boolean a;
    public final ArrayList<i0> b = new ArrayList<>(1);

    /* renamed from: c  reason: collision with root package name */
    public int f5515c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public p f5516d;

    public h(boolean z) {
        this.a = z;
    }

    @Override // f.i.a.a.l1.m
    public /* synthetic */ Map<String, List<String>> a() {
        return l.a(this);
    }

    @Override // f.i.a.a.l1.m
    public final void c(i0 i0Var) {
        if (!this.b.contains(i0Var)) {
            this.b.add(i0Var);
            this.f5515c++;
        }
    }

    public final void e(int i2) {
        p pVar = this.f5516d;
        h0.g(pVar);
        p pVar2 = pVar;
        for (int i3 = 0; i3 < this.f5515c; i3++) {
            this.b.get(i3).e(this, pVar2, this.a, i2);
        }
    }

    public final void f() {
        p pVar = this.f5516d;
        h0.g(pVar);
        p pVar2 = pVar;
        for (int i2 = 0; i2 < this.f5515c; i2++) {
            this.b.get(i2).d(this, pVar2, this.a);
        }
        this.f5516d = null;
    }

    public final void g(p pVar) {
        for (int i2 = 0; i2 < this.f5515c; i2++) {
            this.b.get(i2).h(this, pVar, this.a);
        }
    }

    public final void h(p pVar) {
        this.f5516d = pVar;
        for (int i2 = 0; i2 < this.f5515c; i2++) {
            this.b.get(i2).f(this, pVar, this.a);
        }
    }
}
