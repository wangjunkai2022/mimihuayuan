package i.m0.g;

import java.io.IOException;
import java.util.List;
/* compiled from: Util.kt */
/* loaded from: classes.dex */
public final class h implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ f b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6760c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ List f6761d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f6762e;

    public h(String str, f fVar, int i2, List list, boolean z) {
        this.a = str;
        this.b = fVar;
        this.f6760c = i2;
        this.f6761d = list;
        this.f6762e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.a;
        Thread currentThread = Thread.currentThread();
        h.o.c.g.b(currentThread, "currentThread");
        String name = currentThread.getName();
        currentThread.setName(str);
        try {
            boolean b = this.b.f6737j.b(this.f6760c, this.f6761d, this.f6762e);
            if (b) {
                try {
                    this.b.s.G(this.f6760c, b.CANCEL);
                } catch (IOException unused) {
                }
            }
            if (b || this.f6762e) {
                synchronized (this.b) {
                    this.b.u.remove(Integer.valueOf(this.f6760c));
                }
            }
        } finally {
            currentThread.setName(name);
        }
    }
}
