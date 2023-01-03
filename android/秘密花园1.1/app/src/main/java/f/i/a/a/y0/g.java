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
    public final ArrayDeque<I> f5958c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    public final ArrayDeque<O> f5959d = new ArrayDeque<>();

    /* renamed from: e  reason: collision with root package name */
    public final I[] f5960e;

    /* renamed from: f  reason: collision with root package name */
    public final O[] f5961f;

    /* renamed from: g  reason: collision with root package name */
    public int f5962g;

    /* renamed from: h  reason: collision with root package name */
    public int f5963h;

    /* renamed from: i  reason: collision with root package name */
    public I f5964i;

    /* renamed from: j  reason: collision with root package name */
    public E f5965j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f5966k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f5967l;

    /* renamed from: m  reason: collision with root package name */
    public int f5968m;

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
        this.f5960e = iArr;
        this.f5962g = iArr.length;
        for (int i2 = 0; i2 < this.f5962g; i2++) {
            this.f5960e[i2] = new i();
        }
        this.f5961f = oArr;
        this.f5963h = oArr.length;
        for (int i3 = 0; i3 < this.f5963h; i3++) {
            this.f5961f[i3] = new f.i.a.a.i1.d((f.i.a.a.i1.c) this);
        }
        a aVar = new a();
        this.a = aVar;
        aVar.start();
    }

    @Override // f.i.a.a.y0.c
    public void a() {
        synchronized (this.b) {
            this.f5967l = true;
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
            h.m(eVar == this.f5964i);
            this.f5958c.addLast(eVar);
            h();
            this.f5964i = null;
        }
    }

    @Override // f.i.a.a.y0.c
    public Object d() throws Exception {
        O removeFirst;
        synchronized (this.b) {
            i();
            removeFirst = this.f5959d.isEmpty() ? null : this.f5959d.removeFirst();
        }
        return removeFirst;
    }

    @Override // f.i.a.a.y0.c
    public Object e() throws Exception {
        I i2;
        synchronized (this.b) {
            i();
            h.v(this.f5964i == null);
            if (this.f5962g == 0) {
                i2 = null;
            } else {
                I[] iArr = this.f5960e;
                int i3 = this.f5962g - 1;
                this.f5962g = i3;
                i2 = iArr[i3];
            }
            this.f5964i = i2;
        }
        return i2;
    }

    @Nullable
    public abstract E f(I i2, O o, boolean z);

    @Override // f.i.a.a.y0.c
    public final void flush() {
        synchronized (this.b) {
            this.f5966k = true;
            this.f5968m = 0;
            if (this.f5964i != null) {
                j(this.f5964i);
                this.f5964i = null;
            }
            while (!this.f5958c.isEmpty()) {
                j(this.f5958c.removeFirst());
            }
            while (!this.f5959d.isEmpty()) {
                this.f5959d.removeFirst().i();
            }
        }
    }

    public final boolean g() throws InterruptedException {
        synchronized (this.b) {
            while (!this.f5967l) {
                if (!this.f5958c.isEmpty() && this.f5963h > 0) {
                    break;
                }
                this.b.wait();
            }
            if (this.f5967l) {
                return false;
            }
            I removeFirst = this.f5958c.removeFirst();
            O[] oArr = this.f5961f;
            int i2 = this.f5963h - 1;
            this.f5963h = i2;
            O o = oArr[i2];
            boolean z = this.f5966k;
            this.f5966k = false;
            if (removeFirst.h()) {
                o.e(4);
            } else {
                if (removeFirst.g()) {
                    o.e(Integer.MIN_VALUE);
                }
                try {
                    this.f5965j = f(removeFirst, o, z);
                } catch (OutOfMemoryError e2) {
                    this.f5965j = new f.i.a.a.i1.g("Unexpected decode error", e2);
                } catch (RuntimeException e3) {
                    this.f5965j = new f.i.a.a.i1.g("Unexpected decode error", e3);
                }
                if (this.f5965j != null) {
                    synchronized (this.b) {
                    }
                    return false;
                }
            }
            synchronized (this.b) {
                if (this.f5966k) {
                    o.i();
                } else if (o.g()) {
                    this.f5968m++;
                    o.i();
                } else {
                    this.f5968m = 0;
                    this.f5959d.addLast(o);
                }
                j(removeFirst);
            }
            return true;
        }
    }

    public final void h() {
        if (!this.f5958c.isEmpty() && this.f5963h > 0) {
            this.b.notify();
        }
    }

    public final void i() throws Exception {
        E e2 = this.f5965j;
        if (e2 != null) {
            throw e2;
        }
    }

    public final void j(I i2) {
        i2.i();
        I[] iArr = this.f5960e;
        int i3 = this.f5962g;
        this.f5962g = i3 + 1;
        iArr[i3] = i2;
    }
}
