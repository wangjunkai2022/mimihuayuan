package m.o.d;

import java.io.PrintStream;
import java.util.Queue;
import m.k;
import m.o.d.j.j;
/* compiled from: RxRingBuffer.java */
/* loaded from: classes2.dex */
public class b implements k {

    /* renamed from: c  reason: collision with root package name */
    public static final int f7379c;
    public Queue<Object> a;
    public volatile Object b;

    static {
        int i2 = a.b ? 16 : 128;
        String property = System.getProperty("rx.ring-buffer.size");
        if (property != null) {
            try {
                i2 = Integer.parseInt(property);
            } catch (NumberFormatException e2) {
                PrintStream printStream = System.err;
                e2.getMessage();
            }
        }
        f7379c = i2;
    }

    public b(boolean z, int i2) {
        this.a = z ? new m.o.d.j.d<>(i2) : new j<>(i2);
    }

    @Override // m.k
    public boolean a() {
        return this.a == null;
    }

    public void b(Object obj) throws m.m.b {
        boolean z;
        boolean z2;
        synchronized (this) {
            Queue<Object> queue = this.a;
            z = true;
            z2 = false;
            if (queue != null) {
                z2 = !queue.offer(obj);
                z = false;
            }
        }
        if (z) {
            throw new IllegalStateException("This instance has been unsubscribed and the queue is no longer usable.");
        }
        if (z2) {
            throw new m.m.b();
        }
    }

    @Override // m.k
    public void c() {
        synchronized (this) {
        }
    }

    public b() {
        this.a = new m.o.d.i.b(f7379c);
    }
}
