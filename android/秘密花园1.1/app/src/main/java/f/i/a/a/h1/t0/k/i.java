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
    public final long f4983c;

    /* renamed from: d  reason: collision with root package name */
    public final List<d> f4984d;

    /* renamed from: e  reason: collision with root package name */
    public final h f4985e;

    /* compiled from: Representation.java */
    /* loaded from: classes.dex */
    public static class b extends i implements f.i.a.a.h1.t0.f {

        /* renamed from: f  reason: collision with root package name */
        public final j.a f4986f;

        public b(long j2, b0 b0Var, String str, j.a aVar, List<d> list) {
            super(j2, b0Var, str, aVar, list, null);
            this.f4986f = aVar;
        }

        @Override // f.i.a.a.h1.t0.f
        public long a(long j2, long j3) {
            long j4;
            j.a aVar = this.f4986f;
            long j5 = aVar.f4991d;
            long b = aVar.b(j3);
            if (b == 0) {
                return j5;
            }
            if (aVar.f4993f == null) {
                j4 = (j2 / ((aVar.f4992e * 1000000) / aVar.b)) + aVar.f4991d;
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
            return this.f4986f.c(j2);
        }

        @Override // f.i.a.a.h1.t0.f
        public long c(long j2, long j3) {
            j.a aVar = this.f4986f;
            List<j.d> list = aVar.f4993f;
            if (list != null) {
                return (list.get((int) (j2 - aVar.f4991d)).b * 1000000) / aVar.b;
            }
            int b = aVar.b(j3);
            return (b == -1 || j2 != (aVar.f4991d + ((long) b)) - 1) ? (aVar.f4992e * 1000000) / aVar.b : j3 - aVar.c(j2);
        }

        @Override // f.i.a.a.h1.t0.f
        public h d(long j2) {
            return this.f4986f.d(this, j2);
        }

        @Override // f.i.a.a.h1.t0.f
        public boolean e() {
            return this.f4986f.e();
        }

        @Override // f.i.a.a.h1.t0.f
        public long f() {
            return this.f4986f.f4991d;
        }

        @Override // f.i.a.a.h1.t0.f
        public int g(long j2) {
            return this.f4986f.b(j2);
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
        public final String f4987f;

        /* renamed from: g  reason: collision with root package name */
        public final h f4988g;

        /* renamed from: h  reason: collision with root package name */
        public final k f4989h;

        public c(long j2, b0 b0Var, String str, j.e eVar, List<d> list, String str2, long j3) {
            super(j2, b0Var, str, eVar, list, null);
            Uri.parse(str);
            long j4 = eVar.f4999e;
            h hVar = j4 <= 0 ? null : new h(null, eVar.f4998d, j4);
            this.f4988g = hVar;
            this.f4987f = str2;
            this.f4989h = hVar == null ? new k(new h(null, 0L, j3)) : null;
        }

        @Override // f.i.a.a.h1.t0.k.i
        public String h() {
            return this.f4987f;
        }

        @Override // f.i.a.a.h1.t0.k.i
        public f.i.a.a.h1.t0.f i() {
            return this.f4989h;
        }

        @Override // f.i.a.a.h1.t0.k.i
        public h j() {
            return this.f4988g;
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
        this.f4984d = unmodifiableList;
        this.f4985e = jVar.a(this);
        this.f4983c = h0.h0(jVar.f4990c, 1000000L, jVar.b);
    }

    public abstract String h();

    public abstract f.i.a.a.h1.t0.f i();

    public abstract h j();
}
