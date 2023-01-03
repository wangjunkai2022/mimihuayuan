package f.i.a.a.j1;

import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.h1.o0;
import java.util.List;

/* compiled from: TrackSelection.java */
/* loaded from: classes.dex */
public interface j {

    /* compiled from: TrackSelection.java */
    /* loaded from: classes.dex */
    public interface b {
        j[] a(a[] aVarArr, f.i.a.a.l1.g gVar);
    }

    boolean a(int i2, long j2);

    void b();

    b0 c(int i2);

    void d();

    int e(int i2);

    int f(long j2, List<? extends f.i.a.a.h1.s0.l> list);

    int g(b0 b0Var);

    void h(long j2, long j3, long j4, List<? extends f.i.a.a.h1.s0.l> list, f.i.a.a.h1.s0.m[] mVarArr);

    int i();

    o0 j();

    b0 k();

    int l();

    int length();

    int m();

    void n(float f2);

    @Deprecated
    void o(long j2, long j3, long j4);

    @Nullable
    Object p();

    void q();

    int r(int i2);

    /* compiled from: TrackSelection.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final o0 a;
        public final int[] b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5444c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final Object f5445d;

        public a(o0 o0Var, int... iArr) {
            this.a = o0Var;
            this.b = iArr;
            this.f5444c = 0;
            this.f5445d = null;
        }

        public a(o0 o0Var, int[] iArr, int i2, @Nullable Object obj) {
            this.a = o0Var;
            this.b = iArr;
            this.f5444c = i2;
            this.f5445d = obj;
        }
    }
}
