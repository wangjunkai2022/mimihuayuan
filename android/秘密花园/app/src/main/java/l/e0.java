package l;

import com.tencent.smtt.sdk.TbsListener;
import h.o.c.g;
import i.a0;
import i.e0;
import i.g0;
import i.u;
import i.w;
import i.x;
import i.z;
import j.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: RequestBuilder.java */
/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: l  reason: collision with root package name */
    public static final char[] f7153l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: m  reason: collision with root package name */
    public static final Pattern f7154m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");
    public final String a;
    public final x b;

    /* renamed from: c  reason: collision with root package name */
    public String f7155c;

    /* renamed from: d  reason: collision with root package name */
    public x.a f7156d;

    /* renamed from: e  reason: collision with root package name */
    public final e0.a f7157e = new e0.a();

    /* renamed from: f  reason: collision with root package name */
    public final w.a f7158f;

    /* renamed from: g  reason: collision with root package name */
    public z f7159g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f7160h;

    /* renamed from: i  reason: collision with root package name */
    public a0.a f7161i;

    /* renamed from: j  reason: collision with root package name */
    public u.a f7162j;

    /* renamed from: k  reason: collision with root package name */
    public g0 f7163k;

    /* compiled from: RequestBuilder.java */
    /* loaded from: classes2.dex */
    public static class a extends g0 {
        public final g0 b;

        /* renamed from: c  reason: collision with root package name */
        public final z f7164c;

        public a(g0 g0Var, z zVar) {
            this.b = g0Var;
            this.f7164c = zVar;
        }

        @Override // i.g0
        public long a() throws IOException {
            return this.b.a();
        }

        @Override // i.g0
        public z b() {
            return this.f7164c;
        }

        @Override // i.g0
        public void e(i iVar) throws IOException {
            this.b.e(iVar);
        }
    }

    public e0(String str, x xVar, String str2, w wVar, z zVar, boolean z, boolean z2, boolean z3) {
        this.a = str;
        this.b = xVar;
        this.f7155c = str2;
        this.f7159g = zVar;
        this.f7160h = z;
        if (wVar != null) {
            this.f7158f = wVar.d();
        } else {
            this.f7158f = new w.a();
        }
        if (z2) {
            this.f7162j = new u.a();
        } else if (z3) {
            a0.a aVar = new a0.a();
            this.f7161i = aVar;
            aVar.d(a0.f6357h);
        }
    }

    public void a(String str, String str2, boolean z) {
        if (z) {
            u.a aVar = this.f7162j;
            if (str != null) {
                aVar.a.add(x.b.a(x.f6771l, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, false, aVar.f6765c, 83));
                aVar.b.add(x.b.a(x.f6771l, str2, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, false, aVar.f6765c, 83));
                return;
            }
            g.f("name");
            throw null;
        }
        this.f7162j.a(str, str2);
    }

    public void b(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                this.f7159g = z.b(str2);
            } catch (IllegalArgumentException e2) {
                throw new IllegalArgumentException(f.b.a.a.a.f("Malformed content type: ", str2), e2);
            }
        } else {
            this.f7158f.a(str, str2);
        }
    }

    public void c(w wVar, g0 g0Var) {
        a0.a aVar = this.f7161i;
        if (aVar == null) {
            throw null;
        } else if (g0Var != null) {
            boolean z = false;
            if ((wVar != null ? wVar.b("Content-Type") : null) == null) {
                if ((wVar != null ? wVar.b("Content-Length") : null) == null) {
                    z = true;
                }
                if (z) {
                    aVar.b(new a0.c(wVar, g0Var, null));
                    return;
                }
                throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
            }
            throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
        } else {
            g.f("body");
            throw null;
        }
    }

    public void d(String str, String str2, boolean z) {
        String str3 = this.f7155c;
        String str4 = null;
        if (str3 != null) {
            x.a h2 = this.b.h(str3);
            this.f7156d = h2;
            if (h2 != null) {
                this.f7155c = null;
            } else {
                StringBuilder o = f.b.a.a.a.o("Malformed URL. Base: ");
                o.append(this.b);
                o.append(", Relative: ");
                o.append(this.f7155c);
                throw new IllegalArgumentException(o.toString());
            }
        }
        if (z) {
            x.a aVar = this.f7156d;
            if (str != null) {
                if (aVar.f6785g == null) {
                    aVar.f6785g = new ArrayList();
                }
                List<String> list = aVar.f6785g;
                if (list != null) {
                    list.add(x.b.a(x.f6771l, str, 0, 0, " \"'<>#&=", true, false, true, false, null, TbsListener.ErrorCode.EXCEED_COPY_RETRY_NUM));
                    List<String> list2 = aVar.f6785g;
                    if (list2 != null) {
                        if (str2 != null) {
                            str4 = x.b.a(x.f6771l, str2, 0, 0, " \"'<>#&=", true, false, true, false, null, TbsListener.ErrorCode.EXCEED_COPY_RETRY_NUM);
                        }
                        list2.add(str4);
                        return;
                    }
                    g.e();
                    throw null;
                }
                g.e();
                throw null;
            }
            g.f("encodedName");
            throw null;
        }
        this.f7156d.a(str, str2);
    }
}
