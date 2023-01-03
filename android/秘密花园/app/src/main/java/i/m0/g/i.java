package i.m0.g;

import h.o.c.g;
import java.io.IOException;
import java.util.List;

/* compiled from: Util.kt */
/* loaded from: classes.dex */
public final class i implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ f b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6679c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ List f6680d;

    public i(String str, f fVar, int i2, List list) {
        this.a = str;
        this.b = fVar;
        this.f6679c = i2;
        this.f6680d = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.a;
        Thread currentThread = Thread.currentThread();
        g.b(currentThread, "currentThread");
        String name = currentThread.getName();
        currentThread.setName(str);
        try {
            if (this.b.f6653j.a(this.f6679c, this.f6680d)) {
                try {
                    this.b.s.G(this.f6679c, b.CANCEL);
                    synchronized (this.b) {
                        this.b.u.remove(Integer.valueOf(this.f6679c));
                    }
                } catch (IOException unused) {
                }
            }
        } finally {
            currentThread.setName(name);
        }
    }
}
