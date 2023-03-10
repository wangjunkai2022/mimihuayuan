package i.m0.g;
/* compiled from: Util.kt */
/* loaded from: classes.dex */
public final class j implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ f b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6765c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ b f6766d;

    public j(String str, f fVar, int i2, b bVar) {
        this.a = str;
        this.b = fVar;
        this.f6765c = i2;
        this.f6766d = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.a;
        Thread currentThread = Thread.currentThread();
        h.o.c.g.b(currentThread, "currentThread");
        String name = currentThread.getName();
        currentThread.setName(str);
        try {
            this.b.f6737j.c(this.f6765c, this.f6766d);
            synchronized (this.b) {
                this.b.u.remove(Integer.valueOf(this.f6765c));
            }
        } finally {
            currentThread.setName(name);
        }
    }
}
