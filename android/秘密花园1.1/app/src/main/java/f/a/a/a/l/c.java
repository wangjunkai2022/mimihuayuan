package f.a.a.a.l;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.VirtualLayoutManager;

/* compiled from: ColumnLayoutHelper.java */
/* loaded from: classes.dex */
public class c extends a {
    public View[] s;
    public View[] t;
    public Rect u = new Rect();
    public float[] v = new float[0];

    @Override // f.a.a.a.a
    public void c(RecyclerView.State state, VirtualLayoutManager.d dVar, f.a.a.a.c cVar) {
        if (dVar.f87c) {
            dVar.a = this.a.b.intValue();
        } else {
            dVar.a = this.a.a.intValue();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0091, code lost:
        if (r10 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0093, code lost:
        r3 = r12 - 1;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0096, code lost:
        if (r10 >= r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0098, code lost:
        r11 = r6[r10];
        r6[r10] = r6[r3];
        r6[r3] = r11;
        r10 = r10 + 1;
        r3 = r3 - 1;
     */
    @Override // f.a.a.a.l.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void v(androidx.recyclerview.widget.RecyclerView.Recycler r22, androidx.recyclerview.widget.RecyclerView.State r23, com.alibaba.android.vlayout.VirtualLayoutManager.f r24, f.a.a.a.l.h r25, f.a.a.a.c r26) {
        /*
            Method dump skipped, instructions count: 798
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.a.a.l.c.v(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, com.alibaba.android.vlayout.VirtualLayoutManager$f, f.a.a.a.l.h, f.a.a.a.c):void");
    }
}
