package f.i.a.a.h1.t0.k;

import android.net.Uri;
import f.i.a.a.b0;
import f.i.a.a.h1.t0.k.j;
import f.i.a.a.m1.h0;
import java.util.Collections;
import java.util.List;
/* compiled from: Representation.java */
/* loaded from: classes.dex */
public abstract class i {
    public final b0 a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final long f5067c;

    /* renamed from: d  reason: collision with root package name */
    public final List<d> f5068d;

    /* renamed from: e  reason: collision with root package name */
    public final h f5069e;

    /* compiled from: Representation.java */
    /* loaded from: classes.dex */
    public static class b extends i implements f.i.a.a.h1.t0.f {

        /* renamed from: f  reason: collision with root package name */
        public final j.a f5070f;

        public b(long j2, b0 b0Var, String str, j.a aVar, List<d> list) {
            super(j2, b0Var, str, aVar, list, null);
            this.f5070f = aVar;
        }

        @Override // f.i.a.a.h1.t0.f
        public long a(long j2, long j3) {
            long j4;
            j.a aVar = this.f5070f;
            long j5 = aVar.f5075d;
            long b = aVar.b(j3);
            if (b == 0) {
                return j5;
            }
            if (aVar.f5077f == null) {
                j4 = (j2 / ((aVar.f5076e * 1000000) / aVar.b)) + aVar.f5075d;
                if (j4 < j5) {
                    return j5;
                }
                if (b != -1) {
                    return Math.min(j4, (j5 + b) - 1);
                }
            } else {
                long j6 = (b + j5) - 1;
                j4 = j5;
                while (j4 <= j6) {
                    long j7 = ((j6 - j4) / 2) + j4;
                    int i2 = (aVar.c(j7) > j2 ? 1 : (aVar.c(j7) == j2 ? 0 : -1));
                    if (i2 < 0) {
                        j4 = j7 + 1;
                    } else if (i2 <= 0) {
                        return j7;
                    } else {
                        j6 = j7 - 1;
                    }
                }
                if (j4 != j5) {
                    return j6;
                }
            }
            return j4;
        }

        @Override // f.i.a.a.h1.t0.f
        public long b(long j2) {
            return this.f5070f.c(j2);
        }

        @Override // f.i.a.a.h1.t0.f
        public long c(long j2, long j3) {
            j.a aVar = this.f5070f;
            List<j.d> list = aVar.f5077f;
            if (list != null) {
                return (list.get((int) (j2 - aVar.f5075d)).b * 1000000) / aVar.b;
            }
            int b = aVar.b(j3);
            return (b == -1 || j2 != (aVar.f5075d + ((long) b)) - 1) ? (aVar.f5076e * 1000000) / aVar.b : j3 - aVar.c(j2);
        }

        @Override // f.i.a.a.h1.t0.f
        public h d(long j2) {
            return this.f5070f.d(this, j2);
        }

        @Override // f.i.a.a.h1.t0.f
        public boolean e() {
            return this.f5070f.e();
        }

        @Override // f.i.a.a.h1.t0.f
        public long f() {
            return this.f5070f.f5075d;
        }

        @Override // f.i.a.a.h1.t0.f
        public int g(long j2) {
            return this.f5070f.b(j2);
        }

        @Override // f.i.a.a.h1.t0.k.i
        public String h() {
            return null;
        }

        @Override // f.i.a.a.h1.t0.k.i
        public f.i.a.a.h1.t0.f i() {
            return this;
        }

        @Override // f.i.a.a.h1.t0.k.i
        public h j() {
            return null;
        }
    }

    /* compiled from: Representation.java */
    /* loaded from: classes.dex */
    public static class c extends i {

        /* renamed from: f  reason: collision with root package name */
        public final String f5071f;

        /* renamed from: g  reason: collision with root package name */
        public final h f5072g;

        /* renamed from: h  reason: collision with root package name */
        public final k f5073h;

        public c(long j2, b0 b0Var, String str, j.e eVar, List<d> list, String str2, long j3) {
            super(j2, b0Var, str, eVar, list, null);
            Uri.parse(str);
            long j4 = eVar.f5083e;
            h hVar = j4 <= 0 ? null : new h(null, eVar.f5082d, j4);
            this.f5072g = hVar;
            this.f5071f = str2;
            this.f5073h = hVar == null ? new k(new h(null, 0L, j3)) : null;
        }

        @Override // f.i.a.a.h1.t0.k.i
        public String h() {
            return this.f5071f;
        }

        @Override // f.i.a.a.h1.t0.k.i
        public f.i.a.a.h1.t0.f i() {
            return this.f5073h;
        }

        @Override // f.i.a.a.h1.t0.k.i
        public h j() {
            return this.f5072g;
        }
    }

    public i(long j2, b0 b0Var, String str, j jVar, List list, a aVar) {
        List<d> unmodifiableList;
        this.a = b0Var;
        this.b = str;
        if (list == null) {
            unmodifiableList = Collections.emptyList();
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        this.f5068d = unmodifiableList;
        this.f5069e = jVar.a(this);
        this.f5067c = h0.h0(jVar.f5074c, 1000000L, jVar.b);
    }

    public abstract String h();

    public abstract f.i.a.a.h1.t0.f i();

    public abstract h j();
}
