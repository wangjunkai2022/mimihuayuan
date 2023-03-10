package f.i.a.a.j1;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import f.i.a.a.b0;
import f.i.a.a.h1.o0;
import f.i.a.a.m1.h0;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
/* compiled from: BaseTrackSelection.java */
/* loaded from: classes.dex */
public abstract class c implements j {
    public final o0 a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f5486c;

    /* renamed from: d  reason: collision with root package name */
    public final b0[] f5487d;

    /* renamed from: e  reason: collision with root package name */
    public final long[] f5488e;

    /* renamed from: f  reason: collision with root package name */
    public int f5489f;

    /* compiled from: BaseTrackSelection.java */
    /* loaded from: classes.dex */
    public static final class b implements Comparator<b0> {
        public b(a aVar) {
        }

        @Override // java.util.Comparator
        public int compare(b0 b0Var, b0 b0Var2) {
            return b0Var2.f4093e - b0Var.f4093e;
        }
    }

    public c(o0 o0Var, int... iArr) {
        int i2 = 0;
        c.a.a.b.g.h.v(iArr.length > 0);
        if (o0Var != null) {
            this.a = o0Var;
            int length = iArr.length;
            this.b = length;
            this.f5487d = new b0[length];
            for (int i3 = 0; i3 < iArr.length; i3++) {
                this.f5487d[i3] = o0Var.b[iArr[i3]];
            }
            Arrays.sort(this.f5487d, new b(null));
            this.f5486c = new int[this.b];
            while (true) {
                int i4 = this.b;
                if (i2 < i4) {
                    this.f5486c[i2] = o0Var.a(this.f5487d[i2]);
                    i2++;
                } else {
                    this.f5488e = new long[i4];
                    return;
                }
            }
        } else {
            throw null;
        }
    }

    @Override // f.i.a.a.j1.j
    public final boolean a(int i2, long j2) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean s = s(i2, elapsedRealtime);
        int i3 = 0;
        while (i3 < this.b && !s) {
            s = (i3 == i2 || s(i3, elapsedRealtime)) ? false : true;
            i3++;
        }
        if (s) {
            long[] jArr = this.f5488e;
            jArr[i2] = Math.max(jArr[i2], h0.a(elapsedRealtime, j2, RecyclerView.FOREVER_NS));
            return true;
        }
        return false;
    }

    @Override // f.i.a.a.j1.j
    public void b() {
    }

    @Override // f.i.a.a.j1.j
    public final b0 c(int i2) {
        return this.f5487d[i2];
    }

    @Override // f.i.a.a.j1.j
    public void d() {
    }

    @Override // f.i.a.a.j1.j
    public final int e(int i2) {
        return this.f5486c[i2];
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.a == cVar.a && Arrays.equals(this.f5486c, cVar.f5486c);
    }

    @Override // f.i.a.a.j1.j
    public int f(long j2, List<? extends f.i.a.a.h1.s0.l> list) {
        return list.size();
    }

    @Override // f.i.a.a.j1.j
    public final int g(b0 b0Var) {
        for (int i2 = 0; i2 < this.b; i2++) {
            if (this.f5487d[i2] == b0Var) {
                return i2;
            }
        }
        return -1;
    }

    @Override // f.i.a.a.j1.j
    public /* synthetic */ void h(long j2, long j3, long j4, List<? extends f.i.a.a.h1.s0.l> list, f.i.a.a.h1.s0.m[] mVarArr) {
        i.c(this, j2, j3, j4, list, mVarArr);
    }

    public int hashCode() {
        if (this.f5489f == 0) {
            this.f5489f = Arrays.hashCode(this.f5486c) + (System.identityHashCode(this.a) * 31);
        }
        return this.f5489f;
    }

    @Override // f.i.a.a.j1.j
    public final int i() {
        return this.f5486c[m()];
    }

    @Override // f.i.a.a.j1.j
    public final o0 j() {
        return this.a;
    }

    @Override // f.i.a.a.j1.j
    public final b0 k() {
        return this.f5487d[m()];
    }

    @Override // f.i.a.a.j1.j
    public final int length() {
        return this.f5486c.length;
    }

    @Override // f.i.a.a.j1.j
    public void n(float f2) {
    }

    @Override // f.i.a.a.j1.j
    @Deprecated
    public /* synthetic */ void o(long j2, long j3, long j4) {
        i.b(this, j2, j3, j4);
    }

    @Override // f.i.a.a.j1.j
    public /* synthetic */ void q() {
        i.a(this);
    }

    @Override // f.i.a.a.j1.j
    public final int r(int i2) {
        for (int i3 = 0; i3 < this.b; i3++) {
            if (this.f5486c[i3] == i2) {
                return i3;
            }
        }
        return -1;
    }

    public final boolean s(int i2, long j2) {
        return this.f5488e[i2] > j2;
    }
}
