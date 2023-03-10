package f.i.a.a.i1.t;

import android.text.SpannableStringBuilder;
import f.i.a.a.m1.h0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: WebvttSubtitle.java */
/* loaded from: classes.dex */
public final class i implements f.i.a.a.i1.e {
    public final List<e> a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final long[] f5465c;

    /* renamed from: d  reason: collision with root package name */
    public final long[] f5466d;

    public i(List<e> list) {
        this.a = list;
        int size = list.size();
        this.b = size;
        this.f5465c = new long[size * 2];
        for (int i2 = 0; i2 < this.b; i2++) {
            e eVar = list.get(i2);
            int i3 = i2 * 2;
            long[] jArr = this.f5465c;
            jArr[i3] = eVar.p;
            jArr[i3 + 1] = eVar.q;
        }
        long[] jArr2 = this.f5465c;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f5466d = copyOf;
        Arrays.sort(copyOf);
    }

    @Override // f.i.a.a.i1.e
    public int a(long j2) {
        int c2 = h0.c(this.f5466d, j2, false, false);
        if (c2 < this.f5466d.length) {
            return c2;
        }
        return -1;
    }

    @Override // f.i.a.a.i1.e
    public long b(int i2) {
        c.a.a.b.g.h.m(i2 >= 0);
        c.a.a.b.g.h.m(i2 < this.f5466d.length);
        return this.f5466d[i2];
    }

    @Override // f.i.a.a.i1.e
    public List<f.i.a.a.i1.b> c(long j2) {
        ArrayList arrayList;
        e eVar = null;
        SpannableStringBuilder spannableStringBuilder = null;
        ArrayList arrayList2 = null;
        for (int i2 = 0; i2 < this.b; i2++) {
            long[] jArr = this.f5465c;
            int i3 = i2 * 2;
            if (jArr[i3] <= j2 && j2 < jArr[i3 + 1]) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                e eVar2 = this.a.get(i2);
                if (!(eVar2.f5312d == Float.MIN_VALUE && eVar2.f5315g == Float.MIN_VALUE)) {
                    arrayList2.add(eVar2);
                } else if (eVar == null) {
                    eVar = eVar2;
                } else if (spannableStringBuilder == null) {
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                    spannableStringBuilder2.append(eVar.a).append((CharSequence) com.umeng.commonsdk.internal.utils.g.a).append(eVar2.a);
                    spannableStringBuilder = spannableStringBuilder2;
                } else {
                    spannableStringBuilder.append((CharSequence) com.umeng.commonsdk.internal.utils.g.a).append(eVar2.a);
                }
            }
        }
        if (spannableStringBuilder != null) {
            arrayList = arrayList2;
            arrayList.add(new e(0L, 0L, spannableStringBuilder, null, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE));
        } else {
            arrayList = arrayList2;
            if (eVar != null) {
                arrayList.add(eVar);
            }
        }
        return arrayList != null ? arrayList : Collections.emptyList();
    }

    @Override // f.i.a.a.i1.e
    public int d() {
        return this.f5466d.length;
    }
}
