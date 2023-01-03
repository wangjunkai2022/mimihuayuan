package f.e.a.m.b;

import android.util.SparseArray;
import android.view.View;

/* compiled from: C1726.java */
/* loaded from: classes.dex */
public class a {
    public SparseArray<View> b;

    /* renamed from: c  reason: collision with root package name */
    public int f3982c;

    /* renamed from: d  reason: collision with root package name */
    public SparseArray<View>[] f3983d;
    public View[] a = new View[0];

    /* renamed from: e  reason: collision with root package name */
    public int[] f3984e = new int[0];

    public static View a(SparseArray<View> sparseArray, int i2) {
        int size = sparseArray.size();
        if (size <= 0) {
            return null;
        }
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt = sparseArray.keyAt(i3);
            View view = sparseArray.get(keyAt);
            if (keyAt == i2) {
                sparseArray.remove(keyAt);
                return view;
            }
        }
        int i4 = size - 1;
        View valueAt = sparseArray.valueAt(i4);
        sparseArray.remove(sparseArray.keyAt(i4));
        return valueAt;
    }
}
