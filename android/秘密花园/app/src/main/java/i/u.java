package i;

import h.o.c.g;
import i.m0.b;
import i.x;
import i.z;
import j.i;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FormBody.kt */
/* loaded from: classes.dex */
public final class u extends g0 {

    /* renamed from: d  reason: collision with root package name */
    public static final z f6763d = z.a.a("application/x-www-form-urlencoded");
    public final List<String> b;

    /* renamed from: c  reason: collision with root package name */
    public final List<String> f6764c;

    /* compiled from: FormBody.kt */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        public final Charset f6765c = null;
        public final List<String> a = new ArrayList();
        public final List<String> b = new ArrayList();

        public final a a(String str, String str2) {
            if (str == null) {
                g.f("name");
                throw null;
            } else if (str2 != null) {
                this.a.add(x.b.a(x.f6771l, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, this.f6765c, 91));
                this.b.add(x.b.a(x.f6771l, str2, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, false, this.f6765c, 91));
                return this;
            } else {
                g.f("value");
                throw null;
            }
        }

        public final u b() {
            return new u(this.a, this.b);
        }
    }

    static {
        z.a aVar = z.f6789f;
    }

    public u(List<String> list, List<String> list2) {
        if (list == null) {
            g.f("encodedNames");
            throw null;
        } else if (list2 != null) {
            this.b = b.D(list);
            this.f6764c = b.D(list2);
        } else {
            g.f("encodedValues");
            throw null;
        }
    }

    @Override // i.g0
    public long a() {
        return i(null, true);
    }

    @Override // i.g0
    public z b() {
        return f6763d;
    }

    @Override // i.g0
    public void e(i iVar) throws IOException {
        if (iVar != null) {
            i(iVar, false);
        } else {
            g.f("sink");
            throw null;
        }
    }

    public final String f(int i2) {
        return this.b.get(i2);
    }

    public final String g(int i2) {
        return this.f6764c.get(i2);
    }

    public final int h() {
        return this.b.size();
    }

    public final long i(i iVar, boolean z) {
        j.g gVar;
        if (z) {
            gVar = new j.g();
        } else if (iVar != null) {
            gVar = iVar.h();
        } else {
            g.e();
            throw null;
        }
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                gVar.Q(38);
            }
            gVar.c0(this.b.get(i2));
            gVar.Q(61);
            gVar.c0(this.f6764c.get(i2));
        }
        if (!z) {
            return 0;
        }
        long j2 = gVar.b;
        gVar.skip(j2);
        return j2;
    }
}
