package f.a.a.a;

import androidx.annotation.NonNull;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import f.a.a.a.l.b;
import java.util.LinkedList;

/* compiled from: LayoutHelper.java */
/* loaded from: classes.dex */
public abstract class a {
    public static final j<Integer> b;
    @NonNull
    public j<Integer> a = b;

    static {
        Integer num = Integer.MIN_VALUE;
        Integer valueOf = Integer.valueOf((int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        if (num == null) {
            throw new IllegalArgumentException("lower must not be null");
        } else if (valueOf == null) {
            throw new IllegalArgumentException("upper must not be null");
        } else if (num.compareTo(valueOf) <= 0) {
            b = new j<>(-1, -1);
        } else {
            throw new IllegalArgumentException("lower must be less than or equal to upper");
        }
    }

    public a() {
        new LinkedList();
    }

    public abstract void a(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i3, int i4, c cVar);

    public abstract void b(RecyclerView.Recycler recycler, RecyclerView.State state, c cVar);

    public void c(RecyclerView.State state, VirtualLayoutManager.d dVar, c cVar) {
    }

    public abstract int d(int i2, boolean z, boolean z2, c cVar);

    public abstract boolean e();

    public boolean f(int i2) {
        return !this.a.b(Integer.valueOf(i2));
    }

    public boolean g(int i2, int i3, int i4, c cVar, boolean z) {
        return true;
    }

    public void h(c cVar) {
    }

    public void i(int i2, int i3) {
    }

    public abstract void j(int i2);

    public void k(int i2, int i3) {
        if (i3 < i2) {
            throw new IllegalArgumentException("end should be larger or equeal then start position");
        } else if (i2 == -1 && i3 == -1) {
            this.a = b;
            i(i2, i3);
        } else {
            b bVar = (b) this;
            if ((i3 - i2) + 1 != bVar.n) {
                StringBuilder o = f.b.a.a.a.o("ItemCount mismatch when range: ");
                o.append(this.a.toString());
                o.append(" childCount: ");
                o.append(bVar.n);
                throw new f(o.toString());
            } else if (i2 != this.a.b.intValue() || i3 != this.a.a.intValue()) {
                this.a = new j<>(Integer.valueOf(i2), Integer.valueOf(i3));
                i(i2, i3);
            }
        }
    }
}
