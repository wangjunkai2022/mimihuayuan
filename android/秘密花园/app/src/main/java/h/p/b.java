package h.p;

import h.k.l;
import java.util.NoSuchElementException;

/* compiled from: ProgressionIterators.kt */
/* loaded from: classes.dex */
public final class b extends l {
    public final int a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public int f6335c;

    /* renamed from: d  reason: collision with root package name */
    public final int f6336d;

    public b(int i2, int i3, int i4) {
        this.f6336d = i4;
        this.a = i3;
        boolean z = true;
        if (i4 <= 0 ? i2 < i3 : i2 > i3) {
            z = false;
        }
        this.b = z;
        this.f6335c = !z ? this.a : i2;
    }

    @Override // h.k.l
    public int a() {
        int i2 = this.f6335c;
        if (i2 != this.a) {
            this.f6335c = this.f6336d + i2;
        } else if (this.b) {
            this.b = false;
        } else {
            throw new NoSuchElementException();
        }
        return i2;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.b;
    }
}
