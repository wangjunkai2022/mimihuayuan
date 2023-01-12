package i.m0.g;

import androidx.appcompat.widget.ActivityChooserView;
import i.m0.g.o;
import j.a0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Hpack.kt */
/* loaded from: classes.dex */
public final class d {
    public static final Map<j.k, Integer> b;

    /* renamed from: c  reason: collision with root package name */
    public static final d f6703c = new d();
    public static final c[] a = {new c(c.f6701i, ""), new c(c.f6698f, "GET"), new c(c.f6698f, "POST"), new c(c.f6699g, "/"), new c(c.f6699g, "/index.html"), new c(c.f6700h, "http"), new c(c.f6700h, "https"), new c(c.f6697e, "200"), new c(c.f6697e, "204"), new c(c.f6697e, "206"), new c(c.f6697e, "304"), new c(c.f6697e, "400"), new c(c.f6697e, "404"), new c(c.f6697e, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c("content-encoding", ""), new c("content-language", ""), new c("content-length", ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c("etag", ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c("location", ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c("referer", ""), new c("refresh", ""), new c("retry-after", ""), new c("server", ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};

    /* compiled from: Hpack.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public final List<c> a;
        public final j.j b;

        /* renamed from: c  reason: collision with root package name */
        public c[] f6704c;

        /* renamed from: d  reason: collision with root package name */
        public int f6705d;

        /* renamed from: e  reason: collision with root package name */
        public int f6706e;

        /* renamed from: f  reason: collision with root package name */
        public int f6707f;

        /* renamed from: g  reason: collision with root package name */
        public final int f6708g;

        /* renamed from: h  reason: collision with root package name */
        public int f6709h;

        public a(a0 a0Var, int i2, int i3, int i4) {
            i3 = (i4 & 4) != 0 ? i2 : i3;
            this.f6708g = i2;
            this.f6709h = i3;
            this.a = new ArrayList();
            this.b = j.b.h(a0Var);
            this.f6704c = new c[8];
            this.f6705d = 7;
        }

        public final void a() {
            c.a.a.b.g.h.P(this.f6704c, null, 0, 0, 6);
            this.f6705d = this.f6704c.length - 1;
            this.f6706e = 0;
            this.f6707f = 0;
        }

        public final int b(int i2) {
            return this.f6705d + 1 + i2;
        }

        public final int c(int i2) {
            int i3 = 0;
            if (i2 > 0) {
                int length = this.f6704c.length;
                while (true) {
                    length--;
                    if (length < this.f6705d || i2 <= 0) {
                        break;
                    }
                    c cVar = this.f6704c[length];
                    if (cVar != null) {
                        int i4 = cVar.a;
                        i2 -= i4;
                        this.f6707f -= i4;
                        this.f6706e--;
                        i3++;
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                c[] cVarArr = this.f6704c;
                int i5 = this.f6705d;
                System.arraycopy(cVarArr, i5 + 1, cVarArr, i5 + 1 + i3, this.f6706e);
                this.f6705d += i3;
            }
            return i3;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0010  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0019  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final j.k d(int r4) throws java.io.IOException {
            /*
                r3 = this;
                if (r4 < 0) goto Ld
                i.m0.g.d r0 = i.m0.g.d.f6703c
                i.m0.g.c[] r0 = i.m0.g.d.a
                int r0 = r0.length
                int r0 = r0 + (-1)
                if (r4 > r0) goto Ld
                r0 = 1
                goto Le
            Ld:
                r0 = 0
            Le:
                if (r0 == 0) goto L19
                i.m0.g.d r0 = i.m0.g.d.f6703c
                i.m0.g.c[] r0 = i.m0.g.d.a
                r4 = r0[r4]
                j.k r4 = r4.b
                goto L31
            L19:
                i.m0.g.d r0 = i.m0.g.d.f6703c
                i.m0.g.c[] r0 = i.m0.g.d.a
                int r0 = r0.length
                int r0 = r4 - r0
                int r0 = r3.b(r0)
                if (r0 < 0) goto L37
                i.m0.g.c[] r1 = r3.f6704c
                int r2 = r1.length
                if (r0 >= r2) goto L37
                r4 = r1[r0]
                if (r4 == 0) goto L32
                j.k r4 = r4.b
            L31:
                return r4
            L32:
                h.o.c.g.e()
                r4 = 0
                throw r4
            L37:
                java.io.IOException r0 = new java.io.IOException
                java.lang.String r1 = "Header index too large "
                java.lang.StringBuilder r1 = f.b.a.a.a.o(r1)
                int r4 = r4 + 1
                r1.append(r4)
                java.lang.String r4 = r1.toString()
                r0.<init>(r4)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: i.m0.g.d.a.d(int):j.k");
        }

        public final void e(int i2, c cVar) {
            this.a.add(cVar);
            int i3 = cVar.a;
            if (i2 != -1) {
                c cVar2 = this.f6704c[this.f6705d + 1 + i2];
                if (cVar2 == null) {
                    h.o.c.g.e();
                    throw null;
                }
                i3 -= cVar2.a;
            }
            int i4 = this.f6709h;
            if (i3 > i4) {
                a();
                return;
            }
            int c2 = c((this.f6707f + i3) - i4);
            if (i2 == -1) {
                int i5 = this.f6706e + 1;
                c[] cVarArr = this.f6704c;
                if (i5 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f6705d = this.f6704c.length - 1;
                    this.f6704c = cVarArr2;
                }
                int i6 = this.f6705d;
                this.f6705d = i6 - 1;
                this.f6704c[i6] = cVar;
                this.f6706e++;
            } else {
                this.f6704c[this.f6705d + 1 + i2 + c2 + i2] = cVar;
            }
            this.f6707f += i3;
        }

        public final j.k f() throws IOException {
            int a = i.m0.b.a(this.b.readByte(), 255);
            int i2 = 0;
            boolean z = (a & 128) == 128;
            long g2 = g(a, 127);
            if (z) {
                j.g gVar = new j.g();
                o oVar = o.f6796d;
                j.j jVar = this.b;
                if (jVar != null) {
                    o.a aVar = o.f6795c;
                    int i3 = 0;
                    for (long j2 = 0; j2 < g2; j2++) {
                        i2 = (i2 << 8) | (jVar.readByte() & 255);
                        i3 += 8;
                        while (i3 >= 8) {
                            int i4 = i3 - 8;
                            int i5 = (i2 >>> i4) & 255;
                            o.a[] aVarArr = aVar.a;
                            if (aVarArr == null) {
                                h.o.c.g.e();
                                throw null;
                            }
                            aVar = aVarArr[i5];
                            if (aVar != null) {
                                if (aVar.a == null) {
                                    gVar.Q(aVar.b);
                                    i3 -= aVar.f6797c;
                                    aVar = o.f6795c;
                                } else {
                                    i3 = i4;
                                }
                            } else {
                                h.o.c.g.e();
                                throw null;
                            }
                        }
                    }
                    while (i3 > 0) {
                        int i6 = (i2 << (8 - i3)) & 255;
                        o.a[] aVarArr2 = aVar.a;
                        if (aVarArr2 == null) {
                            h.o.c.g.e();
                            throw null;
                        }
                        o.a aVar2 = aVarArr2[i6];
                        if (aVar2 != null) {
                            if (aVar2.a != null || aVar2.f6797c > i3) {
                                break;
                            }
                            gVar.Q(aVar2.b);
                            i3 -= aVar2.f6797c;
                            aVar = o.f6795c;
                        } else {
                            h.o.c.g.e();
                            throw null;
                        }
                    }
                    return gVar.F();
                }
                h.o.c.g.f("source");
                throw null;
            }
            return this.b.b(g2);
        }

        public final int g(int i2, int i3) throws IOException {
            int i4 = i2 & i3;
            if (i4 < i3) {
                return i4;
            }
            int i5 = 0;
            while (true) {
                int a = i.m0.b.a(this.b.readByte(), 255);
                if ((a & 128) == 0) {
                    return i3 + (a << i5);
                }
                i3 += (a & 127) << i5;
                i5 += 7;
            }
        }
    }

    /* compiled from: Hpack.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public int a;
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public int f6710c;

        /* renamed from: d  reason: collision with root package name */
        public c[] f6711d;

        /* renamed from: e  reason: collision with root package name */
        public int f6712e;

        /* renamed from: f  reason: collision with root package name */
        public int f6713f;

        /* renamed from: g  reason: collision with root package name */
        public int f6714g;

        /* renamed from: h  reason: collision with root package name */
        public int f6715h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f6716i;

        /* renamed from: j  reason: collision with root package name */
        public final j.g f6717j;

        public b(int i2, boolean z, j.g gVar, int i3) {
            i2 = (i3 & 1) != 0 ? 4096 : i2;
            z = (i3 & 2) != 0 ? true : z;
            this.f6715h = i2;
            this.f6716i = z;
            this.f6717j = gVar;
            this.a = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            this.f6710c = i2;
            this.f6711d = new c[8];
            this.f6712e = 7;
        }

        public final void a() {
            c.a.a.b.g.h.P(this.f6711d, null, 0, 0, 6);
            this.f6712e = this.f6711d.length - 1;
            this.f6713f = 0;
            this.f6714g = 0;
        }

        public final int b(int i2) {
            int i3 = 0;
            if (i2 > 0) {
                int length = this.f6711d.length;
                while (true) {
                    length--;
                    if (length < this.f6712e || i2 <= 0) {
                        break;
                    }
                    c[] cVarArr = this.f6711d;
                    c cVar = cVarArr[length];
                    if (cVar != null) {
                        i2 -= cVar.a;
                        int i4 = this.f6714g;
                        c cVar2 = cVarArr[length];
                        if (cVar2 != null) {
                            this.f6714g = i4 - cVar2.a;
                            this.f6713f--;
                            i3++;
                        } else {
                            h.o.c.g.e();
                            throw null;
                        }
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                c[] cVarArr2 = this.f6711d;
                int i5 = this.f6712e;
                System.arraycopy(cVarArr2, i5 + 1, cVarArr2, i5 + 1 + i3, this.f6713f);
                c[] cVarArr3 = this.f6711d;
                int i6 = this.f6712e;
                Arrays.fill(cVarArr3, i6 + 1, i6 + 1 + i3, (Object) null);
                this.f6712e += i3;
            }
            return i3;
        }

        public final void c(c cVar) {
            int i2 = cVar.a;
            int i3 = this.f6710c;
            if (i2 > i3) {
                a();
                return;
            }
            b((this.f6714g + i2) - i3);
            int i4 = this.f6713f + 1;
            c[] cVarArr = this.f6711d;
            if (i4 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f6712e = this.f6711d.length - 1;
                this.f6711d = cVarArr2;
            }
            int i5 = this.f6712e;
            this.f6712e = i5 - 1;
            this.f6711d[i5] = cVar;
            this.f6713f++;
            this.f6714g += i2;
        }

        public final void d(j.k kVar) throws IOException {
            if (kVar != null) {
                if (this.f6716i) {
                    o oVar = o.f6796d;
                    long j2 = 0;
                    for (int i2 = 0; i2 < kVar.b(); i2++) {
                        j2 += o.b[i.m0.b.a(kVar.e(i2), 255)];
                    }
                    if (((int) ((j2 + 7) >> 3)) < kVar.b()) {
                        j.g gVar = new j.g();
                        o oVar2 = o.f6796d;
                        int b = kVar.b();
                        long j3 = 0;
                        int i3 = 0;
                        for (int i4 = 0; i4 < b; i4++) {
                            int a = i.m0.b.a(kVar.e(i4), 255);
                            int i5 = o.a[a];
                            byte b2 = o.b[a];
                            j3 = (j3 << b2) | i5;
                            i3 += b2;
                            while (i3 >= 8) {
                                i3 = (i3 == true ? 1 : 0) - 8;
                                gVar.q((int) (j3 >> i3));
                            }
                        }
                        if (i3 > 0) {
                            gVar.q((int) ((255 >>> i3) | (j3 << (8 - i3))));
                        }
                        j.k F = gVar.F();
                        f(F.b(), 127, 128);
                        this.f6717j.M(F);
                        return;
                    }
                }
                f(kVar.b(), 127, 0);
                this.f6717j.M(kVar);
                return;
            }
            h.o.c.g.f("data");
            throw null;
        }

        public final void e(List<c> list) throws IOException {
            int i2;
            int i3;
            if (this.b) {
                int i4 = this.a;
                if (i4 < this.f6710c) {
                    f(i4, 31, 32);
                }
                this.b = false;
                this.a = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                f(this.f6710c, 31, 32);
            }
            int size = list.size();
            for (int i5 = 0; i5 < size; i5++) {
                c cVar = list.get(i5);
                j.k h2 = cVar.b.h();
                j.k kVar = cVar.f6702c;
                d dVar = d.f6703c;
                Integer num = d.b.get(h2);
                if (num != null) {
                    i2 = num.intValue() + 1;
                    if (2 <= i2 && 7 >= i2) {
                        d dVar2 = d.f6703c;
                        if (h.o.c.g.a(d.a[i2 - 1].f6702c, kVar)) {
                            i3 = i2;
                        } else {
                            d dVar3 = d.f6703c;
                            if (h.o.c.g.a(d.a[i2].f6702c, kVar)) {
                                i3 = i2;
                                i2++;
                            }
                        }
                    }
                    i3 = i2;
                    i2 = -1;
                } else {
                    i2 = -1;
                    i3 = -1;
                }
                if (i2 == -1) {
                    int i6 = this.f6712e + 1;
                    int length = this.f6711d.length;
                    while (true) {
                        if (i6 >= length) {
                            break;
                        }
                        c cVar2 = this.f6711d[i6];
                        if (cVar2 == null) {
                            h.o.c.g.e();
                            throw null;
                        }
                        if (h.o.c.g.a(cVar2.b, h2)) {
                            c cVar3 = this.f6711d[i6];
                            if (cVar3 == null) {
                                h.o.c.g.e();
                                throw null;
                            } else if (h.o.c.g.a(cVar3.f6702c, kVar)) {
                                int i7 = i6 - this.f6712e;
                                d dVar4 = d.f6703c;
                                i2 = d.a.length + i7;
                                break;
                            } else if (i3 == -1) {
                                d dVar5 = d.f6703c;
                                i3 = (i6 - this.f6712e) + d.a.length;
                            }
                        }
                        i6++;
                    }
                }
                if (i2 != -1) {
                    f(i2, 127, 128);
                } else if (i3 == -1) {
                    this.f6717j.Q(64);
                    d(h2);
                    d(kVar);
                    c(cVar);
                } else {
                    j.k kVar2 = c.f6696d;
                    if (h2 == null) {
                        throw null;
                    }
                    if (kVar2 != null) {
                        if (j.c0.a.o(h2, kVar2) && (!h.o.c.g.a(c.f6701i, h2))) {
                            f(i3, 15, 0);
                            d(kVar);
                        } else {
                            f(i3, 63, 64);
                            d(kVar);
                            c(cVar);
                        }
                    } else {
                        h.o.c.g.f("prefix");
                        throw null;
                    }
                }
            }
        }

        public final void f(int i2, int i3, int i4) {
            if (i2 < i3) {
                this.f6717j.Q(i2 | i4);
                return;
            }
            this.f6717j.Q(i4 | i3);
            int i5 = i2 - i3;
            while (i5 >= 128) {
                this.f6717j.Q(128 | (i5 & 127));
                i5 >>>= 7;
            }
            this.f6717j.Q(i5);
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(a.length);
        int length = a.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (!linkedHashMap.containsKey(a[i2].b)) {
                linkedHashMap.put(a[i2].b, Integer.valueOf(i2));
            }
        }
        Map<j.k, Integer> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        h.o.c.g.b(unmodifiableMap, "Collections.unmodifiableMap(result)");
        b = unmodifiableMap;
    }

    public final j.k a(j.k kVar) throws IOException {
        if (kVar != null) {
            int b2 = kVar.b();
            for (int i2 = 0; i2 < b2; i2++) {
                byte b3 = (byte) 65;
                byte b4 = (byte) 90;
                byte e2 = kVar.e(i2);
                if (b3 <= e2 && b4 >= e2) {
                    StringBuilder o = f.b.a.a.a.o("PROTOCOL_ERROR response malformed: mixed case name: ");
                    o.append(j.c0.a.r(kVar));
                    throw new IOException(o.toString());
                }
            }
            return kVar;
        }
        h.o.c.g.f("name");
        throw null;
    }
}
