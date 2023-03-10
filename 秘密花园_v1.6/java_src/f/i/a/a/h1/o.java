package f.i.a.a.h1;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.f0;
import f.i.a.a.u0;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: BaseMediaSource.java */
/* loaded from: classes.dex */
public abstract class o implements e0 {
    public final ArrayList<e0.b> a = new ArrayList<>(1);
    public final f0.a b = new f0.a();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public Looper f4916c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public u0 f4917d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public Object f4918e;

    @Override // f.i.a.a.h1.e0
    public final void e(e0.b bVar, @Nullable f.i.a.a.l1.i0 i0Var) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.f4916c;
        c.a.a.b.g.h.m(looper == null || looper == myLooper);
        this.a.add(bVar);
        if (this.f4916c == null) {
            this.f4916c = myLooper;
            l(i0Var);
            return;
        }
        u0 u0Var = this.f4917d;
        if (u0Var != null) {
            bVar.f(this, u0Var, this.f4918e);
        }
    }

    @Override // f.i.a.a.h1.e0
    public final void g(Handler handler, f0 f0Var) {
        f0.a aVar = this.b;
        if (aVar != null) {
            c.a.a.b.g.h.m((handler == null || f0Var == null) ? false : true);
            aVar.f4830c.add(new f0.a.C0074a(handler, f0Var));
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.h1.e0
    public final void h(f0 f0Var) {
        f0.a aVar = this.b;
        Iterator<f0.a.C0074a> it = aVar.f4830c.iterator();
        while (it.hasNext()) {
            f0.a.C0074a next = it.next();
            if (next.b == f0Var) {
                aVar.f4830c.remove(next);
            }
        }
    }

    @Override // f.i.a.a.h1.e0
    public final void i(e0.b bVar) {
        this.a.remove(bVar);
        if (this.a.isEmpty()) {
            this.f4916c = null;
            this.f4917d = null;
            this.f4918e = null;
            n();
        }
    }

    public final f0.a j(@Nullable e0.a aVar) {
        return this.b.D(0, null, 0L);
    }

    public abstract void l(@Nullable f.i.a.a.l1.i0 i0Var);

    public final void m(u0 u0Var, @Nullable Object obj) {
        this.f4917d = u0Var;
        this.f4918e = obj;
        Iterator<e0.b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().f(this, u0Var, obj);
        }
    }

    public abstract void n();
}
