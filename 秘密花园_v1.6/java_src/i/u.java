package i;

import i.m0.b;
import i.x;
import i.z;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
/* compiled from: FormBody.kt */
/* loaded from: classes.dex */
public final class u extends g0 {

    /* renamed from: d  reason: collision with root package name */
    public static final z f6847d;
    public final List<String> b;

    /* renamed from: c  reason: collision with root package name */
    public final List<String> f6848c;

    /* compiled from: FormBody.kt */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        public final Charset f6849c = null;
        public final List<String> a = new ArrayList();
        public final List<String> b = new ArrayList();

        public final a a(String str, String str2) {
            if (str == null) {
                h.o.c.g.f("name");
                throw null;
            } else if (str2 != null) {
                this.a.add(x.b.a(x.f6855l, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, this.f6849c, 91));
                this.b.add(x.b.a(x.f6855l, str2, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, this.f6849c, 91));
                return this;
            } else {
                h.o.c.g.f("value");
                throw null;
            }
        }

        public final u b() {
            return new u(this.a, this.b);
        }
    }

    static {
        z.a aVar = z.f6873f;
        f6847d = z.a.a("application/x-www-form-urlencoded");
    }

    public u(List<String> list, List<String> list2) {
        if (list == null) {
            h.o.c.g.f("encodedNames");
            throw null;
        } else if (list2 != null) {
            this.b = b.D(list);
            this.f6848c = b.D(list2);
        } else {
            h.o.c.g.f("encodedValues");
            throw null;
        }
    }

    @Override // i.g0
    public long a() {
        return i(null, true);
    }

    @Override // i.g0
    public z b() {
        return f6847d;
    }

    @Override // i.g0
    public void e(j.i iVar) throws IOException {
        if (iVar != null) {
            i(iVar, false);
        } else {
            h.o.c.g.f("sink");
            throw null;
        }
    }

    public final String f(int i2) {
        return this.b.get(i2);
    }

    public final String g(int i2) {
        return this.f6848c.get(i2);
    }

    public final int h() {
        return this.b.size();
    }

    public final long i(j.i iVar, boolean z) {
        j.g h2;
        if (z) {
            h2 = new j.g();
        } else if (iVar == null) {
            h.o.c.g.e();
            throw null;
        } else {
            h2 = iVar.h();
        }
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                h2.Q(38);
            }
            h2.c0(this.b.get(i2));
            h2.Q(61);
            h2.c0(this.f6848c.get(i2));
        }
        if (z) {
            long j2 = h2.b;
            h2.skip(j2);
            return j2;
        }
        return 0L;
    }
}
