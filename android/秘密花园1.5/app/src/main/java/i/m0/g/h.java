package i.m0.g;

import java.io.IOException;
import java.util.List;

/* compiled from: Util.kt */
/* loaded from: classes.dex */
public final class h implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ f b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6751c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ List f6752d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f6753e;

    public h(String str, f fVar, int i2, List list, boolean z) {
        this.a = str;
        this.b = fVar;
        this.f6751c = i2;
        this.f6752d = list;
        this.f6753e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.a;
        Thread currentThread = Thread.currentThread();
        h.o.c.g.b(currentThread, "currentThread");
        String name = currentThread.getName();
        currentThread.setName(str);
        try {
            boolean b = this.b.f6728j.b(this.f6751c, this.f6752d, this.f6753e);
            if (b) {
                try {
                    this.b.s.G(this.f6751c, b.CANCEL);
                } catch (IOException unused) {
                }
            }
            if (b || this.f6753e) {
                synchronized (this.b) {
                    this.b.u.remove(Integer.valueOf(this.f6751c));
                }
            }
        } finally {
            currentThread.setName(name);
        }
    }
}
