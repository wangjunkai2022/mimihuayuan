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
    public final long f5031c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f5032d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5033e;

    /* renamed from: f  reason: collision with root package name */
    public final long f5034f;

    /* renamed from: g  reason: collision with root package name */
    public final long f5035g;

    /* renamed from: h  reason: collision with root package name */
    public final long f5036h;

    /* renamed from: i  reason: collision with root package name */
    public final m f5037i;

    /* renamed from: j  reason: collision with root package name */
    public final Uri f5038j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final g f5039k;

    /* renamed from: l  reason: collision with root package name */
    public final List<f> f5040l;

    public b(long j2, long j3, long j4, boolean z, long j5, long j6, long j7, long j8, @Nullable g gVar, m mVar, Uri uri, List<f> list) {
        this.a = j2;
        this.b = j3;
        this.f5031c = j4;
        this.f5032d = z;
        this.f5033e = j5;
        this.f5034f = j6;
        this.f5035g = j7;
        this.f5036h = j8;
        this.f5039k = gVar;
        this.f5037i = mVar;
        this.f5038j = uri;
        this.f5040l = list == null ? Collections.emptyList() : list;
    }

    @Override // f.i.a.a.e1.y
    public b a(List list) {
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new c0(-1, -1, -1));
        ArrayList arrayList = new ArrayList();
        long j2 = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= c()) {
                break;
            }
            if (((c0) linkedList.peek()).a != i2) {
                long d2 = d(i2);
                if (d2 != -9223372036854775807L) {
                    j2 += d2;
                }
            } else {
                f b = b(i2);
                List<a> list2 = b.f5051c;
                c0 c0Var = (c0) linkedList.poll();
                int i3 = c0Var.a;
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    int i4 = c0Var.b;
                    a aVar = list2.get(i4);
                    List<i> list3 = aVar.f5028c;
                    ArrayList arrayList3 = new ArrayList();
                    do {
                        arrayList3.add(list3.get(c0Var.f4703c));
                        c0Var = (c0) linkedList.poll();
                        if (c0Var.a != i3) {
                            break;
                        }
                    } while (c0Var.b == i4);
                    List<a> list4 = list2;
                    arrayList2.add(new a(aVar.a, aVar.b, arrayList3, aVar.f5029d, aVar.f5030e));
                    if (c0Var.a != i3) {
                        break;
                    }
                    list2 = list4;
                }
                linkedList.addFirst(c0Var);
                arrayList.add(new f(b.a, b.b - j2, arrayList2, b.f5052d));
            }
            i2++;
        }
        long j3 = this.b;
        return new b(this.a, j3 != -9223372036854775807L ? j3 - j2 : -9223372036854775807L, this.f5031c, this.f5032d, this.f5033e, this.f5034f, this.f5035g, this.f5036h, this.f5039k, this.f5037i, this.f5038j, arrayList);
    }

    public final f b(int i2) {
        return this.f5040l.get(i2);
    }

    public final int c() {
        return this.f5040l.size();
    }

    public final long d(int i2) {
        if (i2 == this.f5040l.size() - 1) {
            long j2 = this.b;
            if (j2 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return j2 - this.f5040l.get(i2).b;
        }
        return this.f5040l.get(i2 + 1).b - this.f5040l.get(i2).b;
    }

    public final long e(int i2) {
        return q.a(d(i2));
    }
}
