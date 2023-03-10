package com.comeback.data.ui.nana.viewpager;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import f.e.a.j.h0.n.a;
/* loaded from: classes.dex */
public abstract class RecyclingPagerAdapter extends PagerAdapter {
    public final a a;

    public RecyclingPagerAdapter() {
        a aVar = new a();
        this.a = aVar;
        SparseArray<View>[] sparseArrayArr = new SparseArray[1];
        for (int i2 = 0; i2 < 1; i2++) {
            sparseArrayArr[i2] = new SparseArray<>();
        }
        aVar.f3964c = 1;
        aVar.b = sparseArrayArr[0];
        aVar.f3965d = sparseArrayArr;
    }

    public int a() {
        return 0;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
        View view = (View) obj;
        viewGroup.removeView(view);
        int a = a();
        if (a != -1) {
            a aVar = this.a;
            if (aVar.f3964c == 1) {
                aVar.b.put(i2, view);
            } else {
                aVar.f3965d[a].put(i2, view);
            }
            view.setAccessibilityDelegate(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0078  */
    @Override // androidx.viewpager.widget.PagerAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object instantiateItem(android.view.ViewGroup r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.a()
            r1 = 0
            r2 = -1
            if (r0 == r2) goto L25
            f.e.a.j.h0.n.a r2 = r5.a
            int r3 = r2.f3964c
            r4 = 1
            if (r3 != r4) goto L16
            android.util.SparseArray<android.view.View> r0 = r2.b
            android.view.View r0 = f.e.a.j.h0.n.a.a(r0, r7)
            goto L26
        L16:
            if (r0 < 0) goto L25
            android.util.SparseArray<android.view.View>[] r2 = r2.f3965d
            int r3 = r2.length
            if (r0 < r3) goto L1e
            goto L25
        L1e:
            r0 = r2[r0]
            android.view.View r0 = f.e.a.j.h0.n.a.a(r0, r7)
            goto L26
        L25:
            r0 = r1
        L26:
            r2 = r5
            com.comeback.data.ui.nana.viewpager.AdPagerAdapter r2 = (com.comeback.data.ui.nana.viewpager.AdPagerAdapter) r2
            if (r0 == 0) goto L32
            java.lang.Object r3 = r0.getTag()
            com.comeback.data.ui.nana.viewpager.AdPagerAdapter$SpikePagerItemViewHolder r3 = (com.comeback.data.ui.nana.viewpager.AdPagerAdapter.SpikePagerItemViewHolder) r3
            goto L44
        L32:
            android.view.LayoutInflater r0 = r2.f1892d
            r3 = 2131493390(0x7f0c020e, float:1.8610259E38)
            r4 = 0
            android.view.View r0 = r0.inflate(r3, r6, r4)
            com.comeback.data.ui.nana.viewpager.AdPagerAdapter$SpikePagerItemViewHolder r3 = new com.comeback.data.ui.nana.viewpager.AdPagerAdapter$SpikePagerItemViewHolder
            r3.<init>(r0, r2)
            r0.setTag(r3)
        L44:
            boolean r4 = r2.b
            if (r4 == 0) goto L4d
            int r4 = r2.b()
            int r7 = r7 % r4
        L4d:
            boolean r4 = r2.b
            if (r4 == 0) goto L56
            int r4 = r2.b()
            int r7 = r7 % r4
        L56:
            if (r7 < 0) goto L67
            java.util.ArrayList<T> r4 = r2.f1891c
            int r4 = r4.size()
            if (r7 < r4) goto L61
            goto L67
        L61:
            java.util.ArrayList<T> r1 = r2.f1891c
            java.lang.Object r1 = r1.get(r7)
        L67:
            f.e.a.g.a r1 = (f.e.a.g.a) r1
            r3.b = r1
            java.lang.String r7 = r1.getCover()
            android.widget.ImageView r1 = r3.mIvImg
            boolean r2 = android.text.TextUtils.isEmpty(r7)
            if (r2 == 0) goto L78
            goto Lab
        L78:
            com.comeback.data.App r2 = com.comeback.data.App.b
            f.d.a.j r2 = f.d.a.c.d(r2)
            f.e.a.j.h0.m.f.a r3 = new f.e.a.j.h0.m.f.a
            r3.<init>(r7)
            f.d.a.i r7 = r2.o(r3)
            r2 = 2131230886(0x7f0800a6, float:1.8077837E38)
            f.d.a.s.a r7 = r7.q(r2)
            f.d.a.i r7 = (f.d.a.i) r7
            f.d.a.o.n.k r2 = f.d.a.o.n.k.a
            f.d.a.s.a r7 = r7.f(r2)
            f.d.a.i r7 = (f.d.a.i) r7
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            f.d.a.s.a r7 = r7.p(r2, r2)
            f.d.a.i r7 = (f.d.a.i) r7
            f.d.a.o.b r2 = f.d.a.o.b.PREFER_RGB_565
            f.d.a.s.a r7 = r7.i(r2)
            f.d.a.i r7 = (f.d.a.i) r7
            r7.G(r1)
        Lab:
            r6.addView(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.comeback.data.ui.nana.viewpager.RecyclingPagerAdapter.instantiateItem(android.view.ViewGroup, int):java.lang.Object");
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        a aVar = this.a;
        View[] viewArr = aVar.a;
        int[] iArr = aVar.f3966e;
        boolean z = aVar.f3964c > 1;
        SparseArray<View> sparseArray = aVar.b;
        for (int length = viewArr.length - 1; length >= 0; length--) {
            View view = viewArr[length];
            if (view != null) {
                int i2 = iArr[length];
                viewArr[length] = null;
                iArr[length] = -1;
                if (i2 >= 0) {
                    if (z) {
                        sparseArray = aVar.f3965d[i2];
                    }
                    sparseArray.put(length, view);
                    view.setAccessibilityDelegate(null);
                }
            }
        }
        int length2 = aVar.a.length;
        int i3 = aVar.f3964c;
        SparseArray<View>[] sparseArrayArr = aVar.f3965d;
        for (int i4 = 0; i4 < i3; i4++) {
            SparseArray<View> sparseArray2 = sparseArrayArr[i4];
            int size = sparseArray2.size();
            int i5 = size - length2;
            int i6 = size - 1;
            int i7 = 0;
            while (i7 < i5) {
                sparseArray2.remove(sparseArray2.keyAt(i6));
                i7++;
                i6--;
            }
        }
        super.notifyDataSetChanged();
    }
}
