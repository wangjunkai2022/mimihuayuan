package f.i.a.a.m1;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

/* compiled from: PriorityTaskManager.java */
/* loaded from: classes.dex */
public final class x {
    public final Object a = new Object();
    public final PriorityQueue<Integer> b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c  reason: collision with root package name */
    public int f5779c = Integer.MIN_VALUE;

    /* compiled from: PriorityTaskManager.java */
    /* loaded from: classes.dex */
    public static class a extends IOException {
    }

    public void a(int i2) {
        synchronized (this.a) {
            this.b.add(Integer.valueOf(i2));
            this.f5779c = Math.max(this.f5779c, i2);
        }
    }

    public void b(int i2) {
        int intValue;
        synchronized (this.a) {
            this.b.remove(Integer.valueOf(i2));
            if (this.b.isEmpty()) {
                intValue = Integer.MIN_VALUE;
            } else {
                Integer peek = this.b.peek();
                h0.g(peek);
                intValue = peek.intValue();
            }
            this.f5779c = intValue;
            this.a.notifyAll();
        }
    }
}
