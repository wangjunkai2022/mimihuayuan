package f.i.a.a.h1.u0;

import f.i.a.a.b0;
import f.i.a.a.b1.d;
import f.i.a.a.b1.g;
import f.i.a.a.b1.h;
import f.i.a.a.b1.n;
import f.i.a.a.b1.p;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.u;
import java.io.IOException;
import java.util.Collections;
import java.util.regex.Pattern;

/* compiled from: WebvttExtractor.java */
/* loaded from: classes.dex */
public final class r implements g {

    /* renamed from: g  reason: collision with root package name */
    public static final Pattern f5074g = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: h  reason: collision with root package name */
    public static final Pattern f5075h = Pattern.compile("MPEGTS:(\\d+)");
    public final String a;
    public final e0 b;

    /* renamed from: d  reason: collision with root package name */
    public h f5077d;

    /* renamed from: f  reason: collision with root package name */
    public int f5079f;

    /* renamed from: c  reason: collision with root package name */
    public final u f5076c = new u();

    /* renamed from: e  reason: collision with root package name */
    public byte[] f5078e = new byte[1024];

    public r(String str, e0 e0Var) {
        this.a = str;
        this.b = e0Var;
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    public final p b(long j2) {
        p q = this.f5077d.q(0, 3);
        q.d(b0.r(null, "text/vtt", null, -1, 0, this.a, -1, null, j2, Collections.emptyList()));
        this.f5077d.d();
        return q;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x009c, code lost:
        r15 = r14.e();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00a0, code lost:
        if (r15 == null) goto L_0x00c8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00ac, code lost:
        if (f.i.a.a.i1.t.h.a.matcher(r15).matches() == false) goto L_0x00bb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00ae, code lost:
        r15 = r14.e();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00b2, code lost:
        if (r15 == null) goto L_0x009c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00b8, code lost:
        if (r15.isEmpty() != false) goto L_0x009c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00bb, code lost:
        r15 = f.i.a.a.i1.t.f.b.matcher(r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00c5, code lost:
        if (r15.matches() == false) goto L_0x009c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00c8, code lost:
        r15 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00c9, code lost:
        if (r15 != null) goto L_0x00cf;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00cb, code lost:
        b(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00cf, code lost:
        r14 = f.i.a.a.i1.t.h.c(r15.group(1));
        r7 = r13.b.b((((r4 + r14) - r6) * 90000) / 1000000);
        r6 = b(r7 - r14);
        r13.f5076c.y(r13.f5078e, r13.f5079f);
        r6.a(r13.f5076c, r13.f5079f);
        r6.c(r7, 1, r13.f5079f, 0, null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0100, code lost:
        return -1;
     */
    @Override // f.i.a.a.b1.g
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int c(f.i.a.a.b1.d r14, f.i.a.a.b1.m r15) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 257
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.u0.r.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public void d(h hVar) {
        this.f5077d = hVar;
        hVar.a(new n.b(-9223372036854775807L, 0));
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        throw new IllegalStateException();
    }

    @Override // f.i.a.a.b1.g
    public boolean i(d dVar) throws IOException, InterruptedException {
        dVar.d(this.f5078e, 0, 6, false);
        this.f5076c.y(this.f5078e, 6);
        if (f.i.a.a.i1.t.h.a(this.f5076c)) {
            return true;
        }
        dVar.d(this.f5078e, 6, 3, false);
        this.f5076c.y(this.f5078e, 9);
        return f.i.a.a.i1.t.h.a(this.f5076c);
    }
}
