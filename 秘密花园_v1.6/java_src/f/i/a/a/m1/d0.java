package f.i.a.a.m1;

import java.util.Arrays;
/* compiled from: TimedValueQueue.java */
/* loaded from: classes.dex */
public final class d0<V> {
    public long[] a = new long[10];
    public V[] b = (V[]) new Object[10];

    /* renamed from: c  reason: collision with root package name */
    public int f5743c;

    /* renamed from: d  reason: collision with root package name */
    public int f5744d;

    public synchronized void a(long j2, V v) {
        int i2 = this.f5744d;
        if (i2 > 0) {
            if (j2 <= this.a[((this.f5743c + i2) - 1) % this.b.length]) {
                b();
            }
        }
        c();
        int i3 = this.f5743c;
        int i4 = this.f5744d;
        V[] vArr = this.b;
        int length = (i3 + i4) % vArr.length;
        this.a[length] = j2;
        vArr[length] = v;
        this.f5744d = i4 + 1;
    }

    public synchronized void b() {
        this.f5743c = 0;
        this.f5744d = 0;
        Arrays.fill(this.b, (Object) null);
    }

    public final void c() {
        int length = this.b.length;
        if (this.f5744d < length) {
            return;
        }
        int i2 = length * 2;
        long[] jArr = new long[i2];
        V[] vArr = (V[]) new Object[i2];
        int i3 = this.f5743c;
        int i4 = length - i3;
        System.arraycopy(this.a, i3, jArr, 0, i4);
        System.arraycopy(this.b, this.f5743c, vArr, 0, i4);
        int i5 = this.f5743c;
        if (i5 > 0) {
            System.arraycopy(this.a, 0, jArr, i4, i5);
            System.arraycopy(this.b, 0, vArr, i4, this.f5743c);
        }
        this.a = jArr;
        this.b = vArr;
        this.f5743c = 0;
    }
}
