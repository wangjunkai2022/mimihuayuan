package i.m0.g;

import java.io.IOException;

/* compiled from: Util.kt */
/* loaded from: classes.dex */
public final class g implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ f b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6672c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ j.g f6673d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f6674e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ boolean f6675f;

    public g(String str, f fVar, int i2, j.g gVar, int i3, boolean z) {
        this.a = str;
        this.b = fVar;
        this.f6672c = i2;
        this.f6673d = gVar;
        this.f6674e = i3;
        this.f6675f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.a;
        Thread currentThread = Thread.currentThread();
        h.o.c.g.b(currentThread, "currentThread");
        String name = currentThread.getName();
        currentThread.setName(str);
        try {
            boolean d2 = this.b.f6653j.d(this.f6672c, this.f6673d, this.f6674e, this.f6675f);
            if (d2) {
                this.b.s.G(this.f6672c, b.CANCEL);
            }
            if (d2 || this.f6675f) {
                synchronized (this.b) {
                    this.b.u.remove(Integer.valueOf(this.f6672c));
                }
            }
        } catch (IOException unused) {
        } catch (Throwable th) {
            currentThread.setName(name);
            throw th;
        }
        currentThread.setName(name);
    }
}
