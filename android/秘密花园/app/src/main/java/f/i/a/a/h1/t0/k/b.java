package f.i.a.a.h1.t0.k;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.e1.c0;
import f.i.a.a.e1.y;
import f.i.a.a.q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* compiled from: DashManifest.java */
/* loaded from: classes.dex */
public class b implements y<b> {
    public final long a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4956c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f4957d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4958e;

    /* renamed from: f  reason: collision with root package name */
    public final long f4959f;

    /* renamed from: g  reason: collision with root package name */
    public final long f4960g;

    /* renamed from: h  reason: collision with root package name */
    public final long f4961h;

    /* renamed from: i  reason: collision with root package name */
    public final m f4962i;

    /* renamed from: j  reason: collision with root package name */
    public final Uri f4963j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final g f4964k;

    /* renamed from: l  reason: collision with root package name */
    public final List<f> f4965l;

    public b(long j2, long j3, long j4, boolean z, long j5, long j6, long j7, long j8, @Nullable g gVar, m mVar, Uri uri, List<f> list) {
        this.a = j2;
        this.b = j3;
        this.f4956c = j4;
        this.f4957d = z;
        this.f4958e = j5;
        this.f4959f = j6;
        this.f4960g = j7;
        this.f4961h = j8;
        this.f4964k = gVar;
        this.f4962i = mVar;
        this.f4963j = uri;
        this.f4965l = list == null ? Collections.emptyList() : list;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.i.a.a.e1.y
    public b a(List list) {
        long j2;
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new c0(-1, -1, -1));
        ArrayList arrayList = new ArrayList();
        long j3 = 0;
        int i2 = 0;
        while (true) {
            j2 = -9223372036854775807L;
            if (i2 >= c()) {
                break;
            }
            if (((c0) linkedList.peek()).a != i2) {
                long d2 = d(i2);
                if (d2 != -9223372036854775807L) {
                    j3 += d2;
                }
            } else {
                f b = b(i2);
                List<a> list2 = b.f4976c;
                c0 c0Var = (c0) linkedList.poll();
                int i3 = c0Var.a;
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    int i4 = c0Var.b;
                    a aVar = list2.get(i4);
                    List<i> list3 = aVar.f4953c;
                    ArrayList arrayList3 = new ArrayList();
                    do {
                        arrayList3.add(list3.get(c0Var.f4628c));
                        c0Var = (c0) linkedList.poll();
                        if (c0Var.a != i3) {
                            break;
                        }
                    } while (c0Var.b == i4);
                    arrayList2.add(new a(aVar.a, aVar.b, arrayList3, aVar.f4954d, aVar.f4955e));
                    if (c0Var.a != i3) {
                        break;
                    }
                    list2 = list2;
                }
                linkedList.addFirst(c0Var);
                arrayList.add(new f(b.a, b.b - j3, arrayList2, b.f4977d));
            }
            i2++;
        }
        long j4 = this.b;
        if (j4 != -9223372036854775807L) {
            j2 = j4 - j3;
        }
        return new b(this.a, j2, this.f4956c, this.f4957d, this.f4958e, this.f4959f, this.f4960g, this.f4961h, this.f4964k, this.f4962i, this.f4963j, arrayList);
    }

    public final f b(int i2) {
        return this.f4965l.get(i2);
    }

    public final int c() {
        return this.f4965l.size();
    }

    public final long d(int i2) {
        if (i2 != this.f4965l.size() - 1) {
            return this.f4965l.get(i2 + 1).b - this.f4965l.get(i2).b;
        }
        long j2 = this.b;
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j2 - this.f4965l.get(i2).b;
    }

    public final long e(int i2) {
        return q.a(d(i2));
    }
}
