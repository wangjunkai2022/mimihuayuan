package f.a.a.a.l;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.VirtualLayoutManager;

/* compiled from: GridLayoutHelper.java */
/* loaded from: classes.dex */
public class g extends f.a.a.a.l.b {
    public static final int B = View.MeasureSpec.makeMeasureSpec(0, 0);
    public boolean A;
    public int p;
    public int q = 0;
    public int r = 0;
    public boolean s = true;
    @NonNull
    public b t;
    public int u;
    public int v;
    public float[] w;
    public View[] x;
    public int[] y;
    public int[] z;

    /* compiled from: GridLayoutHelper.java */
    /* loaded from: classes.dex */
    public static final class a extends b {
    }

    /* compiled from: GridLayoutHelper.java */
    /* loaded from: classes.dex */
    public static abstract class b {
        public final SparseIntArray a = new SparseIntArray();
        public boolean b = false;

        /* renamed from: c  reason: collision with root package name */
        public int f3389c = 0;

        public int a(int i2, int i3) {
            if (!this.b) {
                return (i2 - ((a) this).f3389c) % i3;
            }
            int i4 = this.a.get(i2, -1);
            if (i4 != -1) {
                return i4;
            }
            int i5 = (i2 - ((a) this).f3389c) % i3;
            this.a.put(i2, i5);
            return i5;
        }
    }

    public g(int i2) {
        this.p = 4;
        a aVar = new a();
        this.t = aVar;
        this.u = 0;
        this.v = 0;
        this.w = new float[0];
        this.A = false;
        if (i2 != this.p) {
            if (i2 >= 1) {
                this.p = i2;
                aVar.a.clear();
                z();
            } else {
                throw new IllegalArgumentException(f.b.a.a.a.J("Span count should be at least 1. Provided ", i2));
            }
        }
        this.t.b = true;
        this.n = -1;
        this.u = 0;
        this.v = 0;
    }

    public final int A(int i2, int i3, int i4, float f2) {
        if (!Float.isNaN(f2) && f2 > 0.0f && i4 > 0) {
            return View.MeasureSpec.makeMeasureSpec((int) ((i4 / f2) + 0.5f), 1073741824);
        }
        if (!Float.isNaN(this.f3385m)) {
            float f3 = this.f3385m;
            if (f3 > 0.0f) {
                return View.MeasureSpec.makeMeasureSpec((int) ((i3 / f3) + 0.5f), 1073741824);
            }
        }
        if (i2 < 0) {
            return B;
        }
        return View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
    }

    public final int B(RecyclerView.Recycler recycler, RecyclerView.State state, int i2) {
        if (!state.isPreLayout()) {
            if (((a) this.t) != null) {
                return 1;
            }
            throw null;
        } else if (recycler.convertPreLayoutPositionToPostLayout(i2) == -1) {
            return 0;
        } else {
            if (((a) this.t) != null) {
                return 1;
            }
            throw null;
        }
    }

    public void C(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        this.v = i2;
    }

    public void D(int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        this.u = i2;
    }

    @Override // f.a.a.a.a
    public void c(RecyclerView.State state, VirtualLayoutManager.d dVar, f.a.a.a.c cVar) {
        if (state.getItemCount() <= 0 || state.isPreLayout()) {
            return;
        }
        int a2 = this.t.a(dVar.a, this.p);
        if (!dVar.f87c) {
            while (a2 > 0) {
                int i2 = dVar.a;
                if (i2 <= 0) {
                    break;
                }
                int i3 = i2 - 1;
                dVar.a = i3;
                a2 = this.t.a(i3, this.p);
            }
        } else {
            while (a2 < this.p - 1 && dVar.a < this.a.b.intValue()) {
                int i4 = dVar.a + 1;
                dVar.a = i4;
                a2 = this.t.a(i4, this.p);
            }
        }
        this.A = true;
    }

    @Override // f.a.a.a.l.j, f.a.a.a.a
    public int d(int i2, boolean z, boolean z2, f.a.a.a.c cVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z3 = cVar.getOrientation() == 1;
        if (z) {
            if (i2 == this.n - 1) {
                if (z3) {
                    i5 = this.f3399j;
                    i6 = this.f3395f;
                } else {
                    i5 = this.f3397h;
                    i6 = this.f3393d;
                }
                return i5 + i6;
            }
        } else if (i2 == 0) {
            if (z3) {
                i3 = -this.f3398i;
                i4 = this.f3394e;
            } else {
                i3 = -this.f3396g;
                i4 = this.f3392c;
            }
            return i3 - i4;
        }
        return 0;
    }

    @Override // f.a.a.a.a
    public void h(f.a.a.a.c cVar) {
        this.t.a.clear();
    }

    @Override // f.a.a.a.a
    public void i(int i2, int i3) {
        b bVar = this.t;
        bVar.f3389c = i2;
        bVar.a.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x0237, code lost:
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x025d, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0146, code lost:
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x016c, code lost:
        r9 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:123:0x028d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e0  */
    @Override // f.a.a.a.l.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void v(androidx.recyclerview.widget.RecyclerView.Recycler r26, androidx.recyclerview.widget.RecyclerView.State r27, com.alibaba.android.vlayout.VirtualLayoutManager.f r28, f.a.a.a.l.h r29, f.a.a.a.c r30) {
        /*
            Method dump skipped, instructions count: 1577
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.a.a.l.g.v(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, com.alibaba.android.vlayout.VirtualLayoutManager$f, f.a.a.a.l.h, f.a.a.a.c):void");
    }

    @Override // f.a.a.a.l.b
    public void x(f.a.a.a.c cVar) {
        this.t.a.clear();
    }

    public final void z() {
        View[] viewArr = this.x;
        if (viewArr == null || viewArr.length != this.p) {
            this.x = new View[this.p];
        }
        int[] iArr = this.y;
        if (iArr == null || iArr.length != this.p) {
            this.y = new int[this.p];
        }
        int[] iArr2 = this.z;
        if (iArr2 == null || iArr2.length != this.p) {
            this.z = new int[this.p];
        }
    }
}
