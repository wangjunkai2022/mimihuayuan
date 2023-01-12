package f.i.a.a.y0;

import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.i1.i;
import f.i.a.a.y0.e;
import f.i.a.a.y0.f;
import java.lang.Exception;
import java.util.ArrayDeque;

/* compiled from: SimpleDecoder.java */
/* loaded from: classes.dex */
public abstract class g<I extends e, O extends f, E extends Exception> implements c<I, O, E> {
    public final Thread a;
    public final Object b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public final ArrayDeque<I> f6033c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    public final ArrayDeque<O> f6034d = new ArrayDeque<>();

    /* renamed from: e  reason: collision with root package name */
    public final I[] f6035e;

    /* renamed from: f  reason: collision with root package name */
    public final O[] f6036f;

    /* renamed from: g  reason: collision with root package name */
    public int f6037g;

    /* renamed from: h  reason: collision with root package name */
    public int f6038h;

    /* renamed from: i  reason: collision with root package name */
    public I f6039i;

    /* renamed from: j  reason: collision with root package name */
    public E f6040j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f6041k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f6042l;

    /* renamed from: m  reason: collision with root package name */
    public int f6043m;

    /* compiled from: SimpleDecoder.java */
    /* loaded from: classes.dex */
    public class a extends Thread {
        public a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            g gVar = g.this;
            if (gVar != null) {
                do {
                    try {
                    } catch (InterruptedException e2) {
                        throw new IllegalStateException(e2);
                    }
                } while (gVar.g());
                return;
            }
            throw null;
        }
    }

    public g(I[] iArr, O[] oArr) {
        this.f6035e = iArr;
        this.f6037g = iArr.length;
        for (int i2 = 0; i2 < this.f6037g; i2++) {
            this.f6035e[i2] = new i();
        }
        this.f6036f = oArr;
        this.f6038h = oArr.length;
        for (int i3 = 0; i3 < this.f6038h; i3++) {
            this.f6036f[i3] = new f.i.a.a.i1.d((f.i.a.a.i1.c) this);
        }
        a aVar = new a();
        this.a = aVar;
        aVar.start();
    }

    @Override // f.i.a.a.y0.c
    public void a() {
        synchronized (this.b) {
            this.f6042l = true;
            this.b.notify();
        }
        try {
            this.a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f.i.a.a.y0.c
    public void c(Object obj) throws Exception {
        e eVar = (e) obj;
        synchronized (this.b) {
            i();
            h.m(eVar == this.f6039i);
            this.f6033c.addLast(eVar);
            h();
            this.f6039i = null;
        }
    }

    @Override // f.i.a.a.y0.c
    public Object d() throws Exception {
        O removeFirst;
        synchronized (this.b) {
            i();
            removeFirst = this.f6034d.isEmpty() ? null : this.f6034d.removeFirst();
        }
        return removeFirst;
    }

    @Override // f.i.a.a.y0.c
    public Object e() throws Exception {
        I i2;
        synchronized (this.b) {
            i();
            h.v(this.f6039i == null);
            if (this.f6037g == 0) {
                i2 = null;
            } else {
                I[] iArr = this.f6035e;
                int i3 = this.f6037g - 1;
                this.f6037g = i3;
                i2 = iArr[i3];
            }
            this.f6039i = i2;
        }
        return i2;
    }

    @Nullable
    public abstract E f(I i2, O o, boolean z);

    @Override // f.i.a.a.y0.c
    public final void flush() {
        synchronized (this.b) {
            this.f6041k = true;
            this.f6043m = 0;
            if (this.f6039i != null) {
                j(this.f6039i);
                this.f6039i = null;
            }
            while (!this.f6033c.isEmpty()) {
                j(this.f6033c.removeFirst());
            }
            while (!this.f6034d.isEmpty()) {
                this.f6034d.removeFirst().i();
            }
        }
    }

    public final boolean g() throws InterruptedException {
        synchronized (this.b) {
            while (!this.f6042l) {
                if (!this.f6033c.isEmpty() && this.f6038h > 0) {
                    break;
                }
                this.b.wait();
            }
            if (this.f6042l) {
                return false;
            }
            I removeFirst = this.f6033c.removeFirst();
            O[] oArr = this.f6036f;
            int i2 = this.f6038h - 1;
            this.f6038h = i2;
            O o = oArr[i2];
            boolean z = this.f6041k;
            this.f6041k = false;
            if (removeFirst.h()) {
                o.e(4);
            } else {
                if (removeFirst.g()) {
                    o.e(Integer.MIN_VALUE);
                }
                try {
                    this.f6040j = f(removeFirst, o, z);
                } catch (OutOfMemoryError e2) {
                    this.f6040j = new f.i.a.a.i1.g("Unexpected decode error", e2);
                } catch (RuntimeException e3) {
                    this.f6040j = new f.i.a.a.i1.g("Unexpected decode error", e3);
                }
                if (this.f6040j != null) {
                    synchronized (this.b) {
                    }
                    return false;
                }
            }
            synchronized (this.b) {
                if (this.f6041k) {
                    o.i();
                } else if (o.g()) {
                    this.f6043m++;
                    o.i();
                } else {
                    this.f6043m = 0;
                    this.f6034d.addLast(o);
                }
                j(removeFirst);
            }
            return true;
        }
    }

    public final void h() {
        if (!this.f6033c.isEmpty() && this.f6038h > 0) {
            this.b.notify();
        }
    }

    public final void i() throws Exception {
        E e2 = this.f6040j;
        if (e2 != null) {
            throw e2;
        }
    }

    public final void j(I i2) {
        i2.i();
        I[] iArr = this.f6035e;
        int i3 = this.f6037g;
        this.f6037g = i3 + 1;
        iArr[i3] = i2;
    }
}
