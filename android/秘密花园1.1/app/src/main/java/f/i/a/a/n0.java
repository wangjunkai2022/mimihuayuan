package f.i.a.a;

import android.os.Handler;
import androidx.annotation.Nullable;

/* compiled from: PlayerMessage.java */
/* loaded from: classes.dex */
public final class n0 {
    public final b a;
    public final a b;

    /* renamed from: c  reason: collision with root package name */
    public final u0 f5713c;

    /* renamed from: d  reason: collision with root package name */
    public int f5714d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public Object f5715e;

    /* renamed from: f  reason: collision with root package name */
    public Handler f5716f;

    /* renamed from: g  reason: collision with root package name */
    public int f5717g;

    /* renamed from: h  reason: collision with root package name */
    public long f5718h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    public boolean f5719i = true;

    /* renamed from: j  reason: collision with root package name */
    public boolean f5720j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f5721k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f5722l;

    /* compiled from: PlayerMessage.java */
    /* loaded from: classes.dex */
    public interface a {
    }

    /* compiled from: PlayerMessage.java */
    /* loaded from: classes.dex */
    public interface b {
        void j(int i2, @Nullable Object obj) throws w;
    }

    public n0(a aVar, b bVar, u0 u0Var, int i2, Handler handler) {
        this.b = aVar;
        this.a = bVar;
        this.f5713c = u0Var;
        this.f5716f = handler;
        this.f5717g = i2;
    }

    public synchronized boolean a() {
        return false;
    }

    public synchronized void b(boolean z) {
        this.f5721k = z | this.f5721k;
        this.f5722l = true;
        notifyAll();
    }

    public n0 c() {
        c.a.a.b.g.h.v(!this.f5720j);
        if (this.f5718h == -9223372036854775807L) {
            c.a.a.b.g.h.m(this.f5719i);
        }
        this.f5720j = true;
        z zVar = (z) this.b;
        synchronized (zVar) {
            if (zVar.w) {
                b(false);
            } else {
                zVar.f5973g.b(15, this).sendToTarget();
            }
        }
        return this;
    }
}
