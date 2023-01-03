package i.m0.g;

import java.io.IOException;
import java.util.List;

/* compiled from: Util.kt */
/* loaded from: classes.dex */
public final class h implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ f b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6676c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ List f6677d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f6678e;

    public h(String str, f fVar, int i2, List list, boolean z) {
        this.a = str;
        this.b = fVar;
        this.f6676c = i2;
        this.f6677d = list;
        this.f6678e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.a;
        Thread currentThread = Thread.currentThread();
        h.o.c.g.b(currentThread, "currentThread");
        String name = currentThread.getName();
        currentThread.setName(str);
        try {
            boolean b = this.b.f6653j.b(this.f6676c, this.f6677d, this.f6678e);
            if (b) {
                try {
                    this.b.s.G(this.f6676c, b.CANCEL);
                } catch (IOException unused) {
                }
            }
            if (b || this.f6678e) {
                synchronized (this.b) {
                    this.b.u.remove(Integer.valueOf(this.f6676c));
                }
            }
        } finally {
            currentThread.setName(name);
        }
    }
}
