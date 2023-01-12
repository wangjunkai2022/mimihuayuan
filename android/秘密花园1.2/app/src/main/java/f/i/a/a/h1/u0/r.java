package f.i.a.a.h1.u0;

import android.text.TextUtils;
import f.i.a.a.b0;
import f.i.a.a.b1.n;
import f.i.a.a.h0;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.u;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: WebvttExtractor.java */
/* loaded from: classes.dex */
public final class r implements f.i.a.a.b1.g {

    /* renamed from: g  reason: collision with root package name */
    public static final Pattern f5149g = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: h  reason: collision with root package name */
    public static final Pattern f5150h = Pattern.compile("MPEGTS:(\\d+)");
    public final String a;
    public final e0 b;

    /* renamed from: d  reason: collision with root package name */
    public f.i.a.a.b1.h f5152d;

    /* renamed from: f  reason: collision with root package name */
    public int f5154f;

    /* renamed from: c  reason: collision with root package name */
    public final u f5151c = new u();

    /* renamed from: e  reason: collision with root package name */
    public byte[] f5153e = new byte[1024];

    public r(String str, e0 e0Var) {
        this.a = str;
        this.b = e0Var;
    }

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    public final f.i.a.a.b1.p b(long j2) {
        f.i.a.a.b1.p q = this.f5152d.q(0, 3);
        q.d(b0.r(null, "text/vtt", null, -1, 0, this.a, -1, null, j2, Collections.emptyList()));
        this.f5152d.d();
        return q;
    }

    @Override // f.i.a.a.b1.g
    public int c(f.i.a.a.b1.d dVar, f.i.a.a.b1.m mVar) throws IOException, InterruptedException {
        Matcher matcher;
        String e2;
        int i2 = (int) dVar.f4116c;
        int i3 = this.f5154f;
        byte[] bArr = this.f5153e;
        if (i3 == bArr.length) {
            this.f5153e = Arrays.copyOf(bArr, ((i2 != -1 ? i2 : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f5153e;
        int i4 = this.f5154f;
        int e3 = dVar.e(bArr2, i4, bArr2.length - i4);
        if (e3 != -1) {
            int i5 = this.f5154f + e3;
            this.f5154f = i5;
            if (i2 == -1 || i5 != i2) {
                return 0;
            }
        }
        u uVar = new u(this.f5153e);
        f.i.a.a.i1.t.h.d(uVar);
        long j2 = 0;
        long j3 = 0;
        while (true) {
            String e4 = uVar.e();
            if (TextUtils.isEmpty(e4)) {
                while (true) {
                    String e5 = uVar.e();
                    if (e5 == null) {
                        matcher = null;
                        break;
                    } else if (f.i.a.a.i1.t.h.a.matcher(e5).matches()) {
                        do {
                            e2 = uVar.e();
                            if (e2 != null) {
                            }
                        } while (!e2.isEmpty());
                    } else {
                        matcher = f.i.a.a.i1.t.f.b.matcher(e5);
                        if (matcher.matches()) {
                            break;
                        }
                    }
                }
                if (matcher == null) {
                    b(0L);
                } else {
                    long c2 = f.i.a.a.i1.t.h.c(matcher.group(1));
                    long b = this.b.b((((j2 + c2) - j3) * 90000) / 1000000);
                    f.i.a.a.b1.p b2 = b(b - c2);
                    this.f5151c.y(this.f5153e, this.f5154f);
                    b2.a(this.f5151c, this.f5154f);
                    b2.c(b, 1, this.f5154f, 0, null);
                }
                return -1;
            } else if (e4.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher2 = f5149g.matcher(e4);
                if (matcher2.find()) {
                    Matcher matcher3 = f5150h.matcher(e4);
                    if (matcher3.find()) {
                        j3 = f.i.a.a.i1.t.h.c(matcher2.group(1));
                        j2 = (Long.parseLong(matcher3.group(1)) * 1000000) / 90000;
                    } else {
                        throw new h0(f.b.a.a.a.f("X-TIMESTAMP-MAP doesn't contain media timestamp: ", e4));
                    }
                } else {
                    throw new h0(f.b.a.a.a.f("X-TIMESTAMP-MAP doesn't contain local timestamp: ", e4));
                }
            }
        }
    }

    @Override // f.i.a.a.b1.g
    public void d(f.i.a.a.b1.h hVar) {
        this.f5152d = hVar;
        hVar.a(new n.b(-9223372036854775807L, 0L));
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        throw new IllegalStateException();
    }

    @Override // f.i.a.a.b1.g
    public boolean i(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        dVar.d(this.f5153e, 0, 6, false);
        this.f5151c.y(this.f5153e, 6);
        if (f.i.a.a.i1.t.h.a(this.f5151c)) {
            return true;
        }
        dVar.d(this.f5153e, 6, 3, false);
        this.f5151c.y(this.f5153e, 9);
        return f.i.a.a.i1.t.h.a(this.f5151c);
    }
}
