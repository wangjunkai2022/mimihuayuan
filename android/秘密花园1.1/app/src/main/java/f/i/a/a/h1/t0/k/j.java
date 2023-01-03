package f.i.a.a.h1.t0.k;

import f.i.a.a.b0;
import f.i.a.a.m1.h0;
import java.util.List;

/* compiled from: SegmentBase.java */
/* loaded from: classes.dex */
public abstract class j {
    public final h a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4990c;

    /* compiled from: SegmentBase.java */
    /* loaded from: classes.dex */
    public static abstract class a extends j {

        /* renamed from: d  reason: collision with root package name */
        public final long f4991d;

        /* renamed from: e  reason: collision with root package name */
        public final long f4992e;

        /* renamed from: f  reason: collision with root package name */
        public final List<d> f4993f;

        public a(h hVar, long j2, long j3, long j4, long j5, List<d> list) {
            super(hVar, j2, j3);
            this.f4991d = j4;
            this.f4992e = j5;
            this.f4993f = list;
        }

        public abstract int b(long j2);

        public final long c(long j2) {
            long j3;
            List<d> list = this.f4993f;
            if (list != null) {
                j3 = list.get((int) (j2 - this.f4991d)).a - this.f4990c;
            } else {
                j3 = (j2 - this.f4991d) * this.f4992e;
            }
            return h0.h0(j3, 1000000L, this.b);
        }

        public abstract h d(i iVar, long j2);

        public boolean e() {
            return this.f4993f != null;
        }
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes.dex */
    public static class b extends a {

        /* renamed from: g  reason: collision with root package name */
        public final List<h> f4994g;

        public b(h hVar, long j2, long j3, long j4, long j5, List<d> list, List<h> list2) {
            super(hVar, j2, j3, j4, j5, list);
            this.f4994g = list2;
        }

        @Override // f.i.a.a.h1.t0.k.j.a
        public int b(long j2) {
            return this.f4994g.size();
        }

        @Override // f.i.a.a.h1.t0.k.j.a
        public h d(i iVar, long j2) {
            return this.f4994g.get((int) (j2 - this.f4991d));
        }

        @Override // f.i.a.a.h1.t0.k.j.a
        public boolean e() {
            return true;
        }
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes.dex */
    public static class c extends a {

        /* renamed from: g  reason: collision with root package name */
        public final l f4995g;

        /* renamed from: h  reason: collision with root package name */
        public final l f4996h;

        /* renamed from: i  reason: collision with root package name */
        public final long f4997i;

        public c(h hVar, long j2, long j3, long j4, long j5, long j6, List<d> list, l lVar, l lVar2) {
            super(hVar, j2, j3, j4, j6, list);
            this.f4995g = lVar;
            this.f4996h = lVar2;
            this.f4997i = j5;
        }

        @Override // f.i.a.a.h1.t0.k.j
        public h a(i iVar) {
            l lVar = this.f4995g;
            if (lVar != null) {
                b0 b0Var = iVar.a;
                return new h(lVar.a(b0Var.a, 0L, b0Var.f4009e, 0L), 0L, -1L);
            }
            return this.a;
        }

        @Override // f.i.a.a.h1.t0.k.j.a
        public int b(long j2) {
            List<d> list = this.f4993f;
            if (list != null) {
                return list.size();
            }
            long j3 = this.f4997i;
            if (j3 != -1) {
                return (int) ((j3 - this.f4991d) + 1);
            }
            if (j2 != -9223372036854775807L) {
                return (int) h0.j(j2, (this.f4992e * 1000000) / this.b);
            }
            return -1;
        }

        @Override // f.i.a.a.h1.t0.k.j.a
        public h d(i iVar, long j2) {
            long j3;
            List<d> list = this.f4993f;
            if (list != null) {
                j3 = list.get((int) (j2 - this.f4991d)).a;
            } else {
                j3 = (j2 - this.f4991d) * this.f4992e;
            }
            long j4 = j3;
            l lVar = this.f4996h;
            b0 b0Var = iVar.a;
            return new h(lVar.a(b0Var.a, j2, b0Var.f4009e, j4), 0L, -1L);
        }
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes.dex */
    public static class d {
        public final long a;
        public final long b;

        public d(long j2, long j3) {
            this.a = j2;
            this.b = j3;
        }
    }

    public j(h hVar, long j2, long j3) {
        this.a = hVar;
        this.b = j2;
        this.f4990c = j3;
    }

    public h a(i iVar) {
        return this.a;
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes.dex */
    public static class e extends j {

        /* renamed from: d  reason: collision with root package name */
        public final long f4998d;

        /* renamed from: e  reason: collision with root package name */
        public final long f4999e;

        public e() {
            super(null, 1L, 0L);
            this.f4998d = 0L;
            this.f4999e = 0L;
        }

        public e(h hVar, long j2, long j3, long j4, long j5) {
            super(hVar, j2, j3);
            this.f4998d = j4;
            this.f4999e = j5;
        }
    }
}
