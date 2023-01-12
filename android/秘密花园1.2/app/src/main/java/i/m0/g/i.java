package i.m0.g;

import java.io.IOException;
import java.util.List;

/* compiled from: Util.kt */
/* loaded from: classes.dex */
public final class i implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ f b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6754c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ List f6755d;

    public i(String str, f fVar, int i2, List list) {
        this.a = str;
        this.b = fVar;
        this.f6754c = i2;
        this.f6755d = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.a;
        Thread currentThread = Thread.currentThread();
        h.o.c.g.b(currentThread, "currentThread");
        String name = currentThread.getName();
        currentThread.setName(str);
        try {
            if (this.b.f6728j.a(this.f6754c, this.f6755d)) {
                try {
                    this.b.s.G(this.f6754c, b.CANCEL);
                    synchronized (this.b) {
                        this.b.u.remove(Integer.valueOf(this.f6754c));
                    }
                } catch (IOException unused) {
                }
            }
        } finally {
            currentThread.setName(name);
        }
    }
}
