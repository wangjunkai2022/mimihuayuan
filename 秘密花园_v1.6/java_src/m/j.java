package m;

import androidx.recyclerview.widget.RecyclerView;
/* JADX WARN: Incorrect class signature, class is equals to this class: <T:Ljava/lang/Object;>Ljava/lang/Object;Lm/j<TT;>;Lm/k; */
/* compiled from: Subscriber.java */
/* loaded from: classes2.dex */
public abstract class j<T> implements k {
    public final m.o.d.g a;
    public final j<?> b;

    /* renamed from: c  reason: collision with root package name */
    public f f7312c;

    /* renamed from: d  reason: collision with root package name */
    public long f7313d;

    public j() {
        this(null, false);
    }

    @Override // m.k
    public final boolean a() {
        return this.a.b;
    }

    public final void b(k kVar) {
        this.a.b(kVar);
    }

    @Override // m.k
    public final void c() {
        this.a.c();
    }

    public abstract void d();

    public abstract void e(Throwable th);

    public abstract void f(T t);

    public void g() {
    }

    public final void h(long j2) {
        if (j2 >= 0) {
            synchronized (this) {
                if (this.f7312c != null) {
                    this.f7312c.b(j2);
                    return;
                }
                long j3 = this.f7313d;
                if (j3 == Long.MIN_VALUE) {
                    this.f7313d = j2;
                } else {
                    long j4 = j3 + j2;
                    if (j4 < 0) {
                        this.f7313d = RecyclerView.FOREVER_NS;
                    } else {
                        this.f7313d = j4;
                    }
                }
                return;
            }
        }
        throw new IllegalArgumentException(f.b.a.a.a.c("number requested cannot be negative: ", j2));
    }

    public void i(f fVar) {
        long j2;
        boolean z;
        synchronized (this) {
            j2 = this.f7313d;
            this.f7312c = fVar;
            z = this.b != null && j2 == Long.MIN_VALUE;
        }
        if (z) {
            this.b.i(this.f7312c);
        } else if (j2 == Long.MIN_VALUE) {
            this.f7312c.b(RecyclerView.FOREVER_NS);
        } else {
            this.f7312c.b(j2);
        }
    }

    public j(j<?> jVar, boolean z) {
        this.f7313d = Long.MIN_VALUE;
        this.b = jVar;
        this.a = (!z || jVar == null) ? new m.o.d.g() : jVar.a;
    }
}
