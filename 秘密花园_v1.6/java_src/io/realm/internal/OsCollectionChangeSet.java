package io.realm.internal;

import f.b.a.a.a;
import g.a.f1.h;
import g.a.f1.i;
import g.a.s;
import io.realm.internal.sync.OsSubscription;
import java.util.Arrays;
/* loaded from: classes.dex */
public class OsCollectionChangeSet implements s, i {

    /* renamed from: e  reason: collision with root package name */
    public static long f7000e = nativeGetFinalizerPtr();
    public final long a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final OsSubscription f7001c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f7002d;

    public OsCollectionChangeSet(long j2, boolean z, OsSubscription osSubscription, boolean z2) {
        this.a = j2;
        this.b = z;
        this.f7001c = osSubscription;
        this.f7002d = z2;
        h.f6317c.a(this);
    }

    public static native long nativeGetFinalizerPtr();

    public static native int[] nativeGetRanges(long j2, int i2);

    public s.a[] a() {
        return h(nativeGetRanges(this.a, 2));
    }

    public s.a[] b() {
        return h(nativeGetRanges(this.a, 0));
    }

    public Throwable c() {
        OsSubscription osSubscription = this.f7001c;
        if (osSubscription == null || osSubscription.a() != OsSubscription.d.ERROR) {
            return null;
        }
        return (Throwable) OsSubscription.nativeGetError(this.f7001c.a);
    }

    public s.a[] d() {
        return h(nativeGetRanges(this.a, 1));
    }

    public boolean e() {
        return this.a == 0;
    }

    public boolean f() {
        return this.b;
    }

    public boolean g() {
        if (this.f7002d) {
            OsSubscription osSubscription = this.f7001c;
            return osSubscription != null && osSubscription.a() == OsSubscription.d.COMPLETE;
        }
        return true;
    }

    public long getNativeFinalizerPtr() {
        return f7000e;
    }

    public long getNativePtr() {
        return this.a;
    }

    public final s.a[] h(int[] iArr) {
        if (iArr == null) {
            return new s.a[0];
        }
        int length = iArr.length / 2;
        s.a[] aVarArr = new s.a[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            aVarArr[i2] = new s.a(iArr[i3], iArr[i3 + 1]);
        }
        return aVarArr;
    }

    public String toString() {
        if (this.a == 0) {
            return "Change set is empty.";
        }
        StringBuilder o = a.o("Deletion Ranges: ");
        o.append(Arrays.toString(b()));
        o.append("\nInsertion Ranges: ");
        o.append(Arrays.toString(d()));
        o.append("\nChange Ranges: ");
        o.append(Arrays.toString(a()));
        return o.toString();
    }
}
