package f.a.a.a.l;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.VirtualLayoutManager;

/* compiled from: BaseLayoutHelper.java */
/* loaded from: classes.dex */
public abstract class b extends j {

    /* renamed from: l  reason: collision with root package name */
    public View f3309l;
    public a o;

    /* renamed from: k  reason: collision with root package name */
    public Rect f3308k = new Rect();

    /* renamed from: m  reason: collision with root package name */
    public float f3310m = Float.NaN;
    public int n = 0;

    /* compiled from: BaseLayoutHelper.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(View view, b bVar);
    }

    @Override // f.a.a.a.a
    public void a(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i3, int i4, f.a.a.a.c cVar) {
        View view;
        if (y()) {
            if (((i4 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE) ? false : true) && (view = this.f3309l) != null) {
                this.f3308k.union(view.getLeft(), this.f3309l.getTop(), this.f3309l.getRight(), this.f3309l.getBottom());
            }
            if (!this.f3308k.isEmpty()) {
                if ((i4 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE) ? false : true) {
                    if (cVar.getOrientation() == 1) {
                        this.f3308k.offset(0, -i4);
                    } else {
                        this.f3308k.offset(-i4, 0);
                    }
                }
                VirtualLayoutManager virtualLayoutManager = (VirtualLayoutManager) cVar;
                int j2 = virtualLayoutManager.j();
                int i5 = virtualLayoutManager.i();
                if (virtualLayoutManager.getOrientation() != 1 ? this.f3308k.intersects((-j2) / 4, 0, (j2 / 4) + j2, i5) : this.f3308k.intersects(0, (-i5) / 4, j2, (i5 / 4) + i5)) {
                    if (this.f3309l == null) {
                        View f2 = virtualLayoutManager.f();
                        this.f3309l = f2;
                        virtualLayoutManager.showView(f2);
                        virtualLayoutManager.addHiddenView(f2, true);
                    }
                    if (virtualLayoutManager.getOrientation() == 1) {
                        this.f3308k.left = virtualLayoutManager.getPaddingLeft() + this.f3321g;
                        this.f3308k.right = (virtualLayoutManager.j() - virtualLayoutManager.getPaddingRight()) - this.f3322h;
                    } else {
                        this.f3308k.top = virtualLayoutManager.getPaddingTop() + this.f3323i;
                        this.f3308k.bottom = (virtualLayoutManager.j() - virtualLayoutManager.getPaddingBottom()) - this.f3324j;
                    }
                    View view2 = this.f3309l;
                    view2.measure(View.MeasureSpec.makeMeasureSpec(this.f3308k.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f3308k.height(), 1073741824));
                    Rect rect = this.f3308k;
                    view2.layout(rect.left, rect.top, rect.right, rect.bottom);
                    view2.setBackgroundColor(0);
                    a aVar = this.o;
                    if (aVar != null) {
                        aVar.a(view2, this);
                    }
                    this.f3308k.set(0, 0, 0, 0);
                    return;
                }
                this.f3308k.set(0, 0, 0, 0);
                View view3 = this.f3309l;
                if (view3 != null) {
                    view3.layout(0, 0, 0, 0);
                }
            }
        }
        View view4 = this.f3309l;
        if (view4 != null) {
            ((VirtualLayoutManager) cVar).removeView(view4);
            this.f3309l = null;
        }
    }

    @Override // f.a.a.a.a
    public void b(RecyclerView.Recycler recycler, RecyclerView.State state, f.a.a.a.c cVar) {
        if (y()) {
            View view = this.f3309l;
            return;
        }
        View view2 = this.f3309l;
        if (view2 != null) {
            ((VirtualLayoutManager) cVar).removeView(view2);
            this.f3309l = null;
        }
    }

    @Override // f.a.a.a.a
    public boolean e() {
        return false;
    }

    @Override // f.a.a.a.a
    public void j(int i2) {
        this.n = i2;
    }

    public final int r(int i2, int i3) {
        if (i2 < i3) {
            return i3 - i2;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        if (r0 != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int s(f.a.a.a.c r4, boolean r5, boolean r6, boolean r7) {
        /*
            r3 = this;
            boolean r0 = r4 instanceof com.alibaba.android.vlayout.VirtualLayoutManager
            r1 = 0
            if (r0 == 0) goto L35
            com.alibaba.android.vlayout.VirtualLayoutManager r4 = (com.alibaba.android.vlayout.VirtualLayoutManager) r4
            f.a.a.a.b r4 = r4.f80g
            f.a.a.a.k r4 = (f.a.a.a.k) r4
            java.util.List<f.a.a.a.a> r4 = r4.b
            java.util.List r4 = java.util.Collections.unmodifiableList(r4)
            int r0 = r4.indexOf(r3)
            r2 = -1
            if (r0 != r2) goto L19
            goto L35
        L19:
            if (r6 == 0) goto L1d
            int r0 = r0 + r2
            goto L1f
        L1d:
            int r0 = r0 + 1
        L1f:
            if (r0 < 0) goto L35
            int r2 = r4.size()
            if (r0 >= r2) goto L35
            java.lang.Object r4 = r4.get(r0)
            f.a.a.a.a r4 = (f.a.a.a.a) r4
            if (r4 == 0) goto L35
            boolean r0 = r4.e()
            if (r0 == 0) goto L36
        L35:
            r4 = r1
        L36:
            if (r4 == 0) goto L3f
            boolean r0 = r4 instanceof f.a.a.a.l.j
            if (r0 == 0) goto L3f
            r1 = r4
            f.a.a.a.l.j r1 = (f.a.a.a.l.j) r1
        L3f:
            r0 = 0
            if (r4 != r3) goto L43
            return r0
        L43:
            if (r7 != 0) goto L52
            if (r5 == 0) goto L4c
            int r4 = r3.f3323i
            int r5 = r3.f3319e
            goto L50
        L4c:
            int r4 = r3.f3321g
            int r5 = r3.f3317c
        L50:
            int r4 = r4 + r5
            goto L95
        L52:
            if (r1 != 0) goto L61
            if (r5 == 0) goto L5b
            int r4 = r3.f3323i
            int r7 = r3.f3319e
            goto L5f
        L5b:
            int r4 = r3.f3321g
            int r7 = r3.f3317c
        L5f:
            int r4 = r4 + r7
            goto L82
        L61:
            if (r5 == 0) goto L73
            if (r6 == 0) goto L6a
            int r4 = r1.f3324j
            int r7 = r3.f3323i
            goto L6e
        L6a:
            int r4 = r1.f3323i
            int r7 = r3.f3324j
        L6e:
            int r4 = r3.r(r4, r7)
            goto L82
        L73:
            if (r6 == 0) goto L7a
            int r4 = r1.f3322h
            int r7 = r3.f3321g
            goto L7e
        L7a:
            int r4 = r1.f3321g
            int r7 = r3.f3322h
        L7e:
            int r4 = r3.r(r4, r7)
        L82:
            if (r5 == 0) goto L8c
            if (r6 == 0) goto L89
            int r5 = r3.f3319e
            goto L93
        L89:
            int r5 = r3.f3320f
            goto L93
        L8c:
            if (r6 == 0) goto L91
            int r5 = r3.f3317c
            goto L93
        L91:
            int r5 = r3.f3318d
        L93:
            int r5 = r5 + r0
            goto L50
        L95:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.a.a.l.b.s(f.a.a.a.c, boolean, boolean, boolean):int");
    }

    public void t(h hVar, View view) {
        if (view == null) {
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        boolean z = true;
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            hVar.f3315c = true;
        }
        if (!hVar.f3316d && !view.isFocusable()) {
            z = false;
        }
        hVar.f3316d = z;
    }

    public void u(View view, int i2, int i3, int i4, int i5, @NonNull f.a.a.a.c cVar) {
        ((VirtualLayoutManager) cVar).k(view, i2, i3, i4, i5);
        if (y()) {
            this.f3308k.union(i2 - this.f3317c, i3 - this.f3319e, i4 + this.f3318d, i5 + this.f3320f);
        }
    }

    public abstract void v(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.f fVar, h hVar, f.a.a.a.c cVar);

    @Nullable
    public final View w(RecyclerView.Recycler recycler, VirtualLayoutManager.f fVar, f.a.a.a.c cVar, h hVar) {
        View a2 = fVar.a.a(recycler);
        if (a2 == null) {
            hVar.b = true;
            return null;
        }
        ((VirtualLayoutManager) cVar).b(fVar, a2);
        return a2;
    }

    public void x(f.a.a.a.c cVar) {
    }

    public boolean y() {
        return this.o != null;
    }
}
