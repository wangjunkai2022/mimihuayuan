package f.i.a.a.h1.s0;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.b1.p;
import f.i.a.a.m1.u;
import java.io.IOException;

/* compiled from: ChunkExtractorWrapper.java */
/* loaded from: classes.dex */
public final class e implements f.i.a.a.b1.h {
    public final f.i.a.a.b1.g a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final b0 f4948c;

    /* renamed from: d  reason: collision with root package name */
    public final SparseArray<a> f4949d = new SparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    public boolean f4950e;

    /* renamed from: f  reason: collision with root package name */
    public b f4951f;

    /* renamed from: g  reason: collision with root package name */
    public long f4952g;

    /* renamed from: h  reason: collision with root package name */
    public f.i.a.a.b1.n f4953h;

    /* renamed from: i  reason: collision with root package name */
    public b0[] f4954i;

    /* compiled from: ChunkExtractorWrapper.java */
    /* loaded from: classes.dex */
    public static final class a implements p {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final b0 f4955c;

        /* renamed from: d  reason: collision with root package name */
        public final f.i.a.a.b1.f f4956d = new f.i.a.a.b1.f();

        /* renamed from: e  reason: collision with root package name */
        public b0 f4957e;

        /* renamed from: f  reason: collision with root package name */
        public p f4958f;

        /* renamed from: g  reason: collision with root package name */
        public long f4959g;

        public a(int i2, int i3, b0 b0Var) {
            this.a = i2;
            this.b = i3;
            this.f4955c = b0Var;
        }

        @Override // f.i.a.a.b1.p
        public void a(u uVar, int i2) {
            this.f4958f.a(uVar, i2);
        }

        @Override // f.i.a.a.b1.p
        public int b(f.i.a.a.b1.d dVar, int i2, boolean z) throws IOException, InterruptedException {
            return this.f4958f.b(dVar, i2, z);
        }

        @Override // f.i.a.a.b1.p
        public void c(long j2, int i2, int i3, int i4, p.a aVar) {
            long j3 = this.f4959g;
            if (j3 != -9223372036854775807L && j2 >= j3) {
                this.f4958f = this.f4956d;
            }
            this.f4958f.c(j2, i2, i3, i4, aVar);
        }

        @Override // f.i.a.a.b1.p
        public void d(b0 b0Var) {
            b0 b0Var2 = this.f4955c;
            if (b0Var2 != null) {
                b0Var = b0Var.d(b0Var2);
            }
            this.f4957e = b0Var;
            this.f4958f.d(b0Var);
        }

        public void e(b bVar, long j2) {
            if (bVar == null) {
                this.f4958f = this.f4956d;
                return;
            }
            this.f4959g = j2;
            p b = ((c) bVar).b(this.a, this.b);
            this.f4958f = b;
            b0 b0Var = this.f4957e;
            if (b0Var != null) {
                b.d(b0Var);
            }
        }
    }

    /* compiled from: ChunkExtractorWrapper.java */
    /* loaded from: classes.dex */
    public interface b {
    }

    public e(f.i.a.a.b1.g gVar, int i2, b0 b0Var) {
        this.a = gVar;
        this.b = i2;
        this.f4948c = b0Var;
    }

    @Override // f.i.a.a.b1.h
    public void a(f.i.a.a.b1.n nVar) {
        this.f4953h = nVar;
    }

    public void b(@Nullable b bVar, long j2, long j3) {
        this.f4951f = bVar;
        this.f4952g = j3;
        if (!this.f4950e) {
            this.a.d(this);
            if (j2 != -9223372036854775807L) {
                this.a.f(0L, j2);
            }
            this.f4950e = true;
            return;
        }
        f.i.a.a.b1.g gVar = this.a;
        if (j2 == -9223372036854775807L) {
            j2 = 0;
        }
        gVar.f(0L, j2);
        for (int i2 = 0; i2 < this.f4949d.size(); i2++) {
            this.f4949d.valueAt(i2).e(bVar, j3);
        }
    }

    @Override // f.i.a.a.b1.h
    public void d() {
        b0[] b0VarArr = new b0[this.f4949d.size()];
        for (int i2 = 0; i2 < this.f4949d.size(); i2++) {
            b0VarArr[i2] = this.f4949d.valueAt(i2).f4957e;
        }
        this.f4954i = b0VarArr;
    }

    @Override // f.i.a.a.b1.h
    public p q(int i2, int i3) {
        a aVar = this.f4949d.get(i2);
        if (aVar == null) {
            c.a.a.b.g.h.v(this.f4954i == null);
            aVar = new a(i2, i3, i3 == this.b ? this.f4948c : null);
            aVar.e(this.f4951f, this.f4952g);
            this.f4949d.put(i2, aVar);
        }
        return aVar;
    }
}
