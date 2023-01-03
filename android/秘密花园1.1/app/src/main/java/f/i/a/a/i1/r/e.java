package f.i.a.a.i1.r;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import f.i.a.a.m1.h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* compiled from: TtmlSubtitle.java */
/* loaded from: classes.dex */
public final class e implements f.i.a.a.i1.e {
    public final b a;
    public final long[] b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, d> f5354c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, c> f5355d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<String, String> f5356e;

    public e(b bVar, Map<String, d> map, Map<String, c> map2, Map<String, String> map3) {
        this.a = bVar;
        this.f5355d = map2;
        this.f5356e = map3;
        this.f5354c = Collections.unmodifiableMap(map);
        if (bVar != null) {
            TreeSet<Long> treeSet = new TreeSet<>();
            int i2 = 0;
            bVar.e(treeSet, false);
            long[] jArr = new long[treeSet.size()];
            Iterator<Long> it = treeSet.iterator();
            while (it.hasNext()) {
                jArr[i2] = it.next().longValue();
                i2++;
            }
            this.b = jArr;
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.i1.e
    public int a(long j2) {
        int c2 = h0.c(this.b, j2, false, false);
        if (c2 < this.b.length) {
            return c2;
        }
        return -1;
    }

    @Override // f.i.a.a.i1.e
    public long b(int i2) {
        return this.b[i2];
    }

    @Override // f.i.a.a.i1.e
    public List<f.i.a.a.i1.b> c(long j2) {
        int i2;
        int i3;
        b bVar = this.a;
        Map<String, d> map = this.f5354c;
        Map<String, c> map2 = this.f5355d;
        Map<String, String> map3 = this.f5356e;
        if (bVar != null) {
            ArrayList arrayList = new ArrayList();
            bVar.h(j2, bVar.f5331h, arrayList);
            TreeMap treeMap = new TreeMap();
            bVar.j(j2, false, bVar.f5331h, treeMap);
            bVar.i(j2, map, treeMap);
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                String str = map3.get(pair.second);
                if (str != null) {
                    byte[] decode = Base64.decode(str, 0);
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                    c cVar = map2.get(pair.first);
                    arrayList2.add(new f.i.a.a.i1.b(decodeByteArray, cVar.b, 0, cVar.f5336c, cVar.f5338e, cVar.f5339f, cVar.f5340g));
                }
            }
            for (Map.Entry entry : treeMap.entrySet()) {
                c cVar2 = map2.get(entry.getKey());
                SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) entry.getValue();
                int length = spannableStringBuilder.length();
                for (int i4 = 0; i4 < length; i4++) {
                    if (spannableStringBuilder.charAt(i4) == ' ') {
                        int i5 = i4 + 1;
                        int i6 = i5;
                        while (i6 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i6) == ' ') {
                            i6++;
                        }
                        int i7 = i6 - i5;
                        if (i7 > 0) {
                            spannableStringBuilder.delete(i4, i4 + i7);
                            length -= i7;
                        }
                    }
                }
                if (length > 0 && spannableStringBuilder.charAt(0) == ' ') {
                    spannableStringBuilder.delete(0, 1);
                    length--;
                }
                int i8 = 0;
                while (true) {
                    i2 = length - 1;
                    if (i8 >= i2) {
                        break;
                    }
                    if (spannableStringBuilder.charAt(i8) == '\n') {
                        int i9 = i8 + 1;
                        if (spannableStringBuilder.charAt(i9) == ' ') {
                            spannableStringBuilder.delete(i9, i8 + 2);
                            length = i2;
                        }
                    }
                    i8++;
                }
                if (length > 0 && spannableStringBuilder.charAt(i2) == ' ') {
                    spannableStringBuilder.delete(i2, length);
                    length = i2;
                }
                int i10 = 0;
                while (true) {
                    i3 = length - 1;
                    if (i10 >= i3) {
                        break;
                    }
                    if (spannableStringBuilder.charAt(i10) == ' ') {
                        int i11 = i10 + 1;
                        if (spannableStringBuilder.charAt(i11) == '\n') {
                            spannableStringBuilder.delete(i10, i11);
                            length = i3;
                        }
                    }
                    i10++;
                }
                if (length > 0 && spannableStringBuilder.charAt(i3) == '\n') {
                    spannableStringBuilder.delete(i3, length);
                }
                arrayList2.add(new f.i.a.a.i1.b(spannableStringBuilder, null, null, cVar2.f5336c, cVar2.f5337d, cVar2.f5338e, cVar2.b, Integer.MIN_VALUE, cVar2.f5341h, cVar2.f5342i, cVar2.f5339f, Float.MIN_VALUE, false, -16777216));
            }
            return arrayList2;
        }
        throw null;
    }

    @Override // f.i.a.a.i1.e
    public int d() {
        return this.b.length;
    }
}
