package com.comeback.data.widget.viewpager;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import f.e.a.m.b.a;

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
        aVar.f4057c = 1;
        aVar.b = sparseArrayArr[0];
        aVar.f4058d = sparseArrayArr;
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
            if (aVar.f4057c == 1) {
                aVar.b.put(i2, view);
            } else {
                aVar.f4058d[a].put(i2, view);
            }
            view.setAccessibilityDelegate(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0051  */
    @Override // androidx.viewpager.widget.PagerAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object instantiateItem(android.view.ViewGroup r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.a()
            r1 = 0
            r2 = -1
            if (r0 == r2) goto L25
            f.e.a.m.b.a r2 = r5.a
            int r3 = r2.f4057c
            r4 = 1
            if (r3 != r4) goto L16
            android.util.SparseArray<android.view.View> r0 = r2.b
            android.view.View r0 = f.e.a.m.b.a.a(r0, r7)
            goto L26
        L16:
            if (r0 < 0) goto L25
            android.util.SparseArray<android.view.View>[] r2 = r2.f4058d
            int r3 = r2.length
            if (r0 < r3) goto L1e
            goto L25
        L1e:
            r0 = r2[r0]
            android.view.View r0 = f.e.a.m.b.a.a(r0, r7)
            goto L26
        L25:
            r0 = r1
        L26:
            r2 = r5
            com.comeback.data.widget.viewpager.AdPagerAdapter r2 = (com.comeback.data.widget.viewpager.AdPagerAdapter) r2
            if (r0 == 0) goto L32
            java.lang.Object r3 = r0.getTag()
            com.comeback.data.widget.viewpager.AdPagerAdapter$SpikePagerItemViewHolder r3 = (com.comeback.data.widget.viewpager.AdPagerAdapter.SpikePagerItemViewHolder) r3
            goto L44
        L32:
            android.view.LayoutInflater r0 = r2.f2355d
            r3 = 2131493390(0x7f0c020e, float:1.8610259E38)
            r4 = 0
            android.view.View r0 = r0.inflate(r3, r6, r4)
            com.comeback.data.widget.viewpager.AdPagerAdapter$SpikePagerItemViewHolder r3 = new com.comeback.data.widget.viewpager.AdPagerAdapter$SpikePagerItemViewHolder
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
            java.util.ArrayList<T> r4 = r2.f2354c
            int r4 = r4.size()
            if (r7 < r4) goto L61
            goto L67
        L61:
            java.util.ArrayList<T> r1 = r2.f2354c
            java.lang.Object r1 = r1.get(r7)
        L67:
            f.e.a.g.a r1 = (f.e.a.g.a) r1
            r3.b = r1
            java.lang.String r7 = r1.getCover()
            android.widget.ImageView r1 = r3.mIvImg
            c.a.a.b.g.h.u0(r7, r1)
            r6.addView(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.comeback.data.widget.viewpager.RecyclingPagerAdapter.instantiateItem(android.view.ViewGroup, int):java.lang.Object");
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        a aVar = this.a;
        View[] viewArr = aVar.a;
        int[] iArr = aVar.f4059e;
        boolean z = aVar.f4057c > 1;
        SparseArray<View> sparseArray = aVar.b;
        for (int length = viewArr.length - 1; length >= 0; length--) {
            View view = viewArr[length];
            if (view != null) {
                int i2 = iArr[length];
                viewArr[length] = null;
                iArr[length] = -1;
                if (i2 >= 0) {
                    if (z) {
                        sparseArray = aVar.f4058d[i2];
                    }
                    sparseArray.put(length, view);
                    view.setAccessibilityDelegate(null);
                }
            }
        }
        int length2 = aVar.a.length;
        int i3 = aVar.f4057c;
        SparseArray<View>[] sparseArrayArr = aVar.f4058d;
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
