package l;

import com.tencent.smtt.sdk.TbsListener;
import i.a0;
import i.e0;
import i.u;
import i.w;
import i.x;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: RequestBuilder.java */
/* loaded from: classes2.dex */
public final class e0 {

    /* renamed from: l  reason: collision with root package name */
    public static final char[] f7228l = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: m  reason: collision with root package name */
    public static final Pattern f7229m = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");
    public final String a;
    public final i.x b;

    /* renamed from: c  reason: collision with root package name */
    public String f7230c;

    /* renamed from: d  reason: collision with root package name */
    public x.a f7231d;

    /* renamed from: e  reason: collision with root package name */
    public final e0.a f7232e = new e0.a();

    /* renamed from: f  reason: collision with root package name */
    public final w.a f7233f;

    /* renamed from: g  reason: collision with root package name */
    public i.z f7234g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f7235h;

    /* renamed from: i  reason: collision with root package name */
    public a0.a f7236i;

    /* renamed from: j  reason: collision with root package name */
    public u.a f7237j;

    /* renamed from: k  reason: collision with root package name */
    public i.g0 f7238k;

    /* compiled from: RequestBuilder.java */
    /* loaded from: classes2.dex */
    public static class a extends i.g0 {
        public final i.g0 b;

        /* renamed from: c  reason: collision with root package name */
        public final i.z f7239c;

        public a(i.g0 g0Var, i.z zVar) {
            this.b = g0Var;
            this.f7239c = zVar;
        }

        @Override // i.g0
        public long a() throws IOException {
            return this.b.a();
        }

        @Override // i.g0
        public i.z b() {
            return this.f7239c;
        }

        @Override // i.g0
        public void e(j.i iVar) throws IOException {
            this.b.e(iVar);
        }
    }

    public e0(String str, i.x xVar, String str2, i.w wVar, i.z zVar, boolean z, boolean z2, boolean z3) {
        this.a = str;
        this.b = xVar;
        this.f7230c = str2;
        this.f7234g = zVar;
        this.f7235h = z;
        if (wVar != null) {
            this.f7233f = wVar.d();
        } else {
            this.f7233f = new w.a();
        }
        if (z2) {
            this.f7237j = new u.a();
        } else if (z3) {
            a0.a aVar = new a0.a();
            this.f7236i = aVar;
            aVar.d(i.a0.f6432h);
        }
    }

    public void a(String str, String str2, boolean z) {
        if (z) {
            u.a aVar = this.f7237j;
            if (str != null) {
                aVar.a.add(x.b.a(i.x.f6846l, str, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, false, aVar.f6840c, 83));
                aVar.b.add(x.b.a(i.x.f6846l, str2, 0, 0, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, false, aVar.f6840c, 83));
                return;
            }
            h.o.c.g.f("name");
            throw null;
        }
        this.f7237j.a(str, str2);
    }

    public void b(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                this.f7234g = i.z.b(str2);
                return;
            } catch (IllegalArgumentException e2) {
                throw new IllegalArgumentException(f.b.a.a.a.f("Malformed content type: ", str2), e2);
            }
        }
        this.f7233f.a(str, str2);
    }

    public void c(i.w wVar, i.g0 g0Var) {
        a0.a aVar = this.f7236i;
        if (aVar == null) {
            throw null;
        }
        if (g0Var == null) {
            h.o.c.g.f("body");
            throw null;
        }
        if (!((wVar != null ? wVar.b("Content-Type") : null) == null)) {
            throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
        }
        if ((wVar != null ? wVar.b("Content-Length") : null) == null) {
            aVar.b(new a0.c(wVar, g0Var, null));
            return;
        }
        throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
    }

    public void d(String str, String str2, boolean z) {
        String str3 = this.f7230c;
        if (str3 != null) {
            x.a h2 = this.b.h(str3);
            this.f7231d = h2;
            if (h2 != null) {
                this.f7230c = null;
            } else {
                StringBuilder o = f.b.a.a.a.o("Malformed URL. Base: ");
                o.append(this.b);
                o.append(", Relative: ");
                o.append(this.f7230c);
                throw new IllegalArgumentException(o.toString());
            }
        }
        if (z) {
            x.a aVar = this.f7231d;
            if (str != null) {
                if (aVar.f6860g == null) {
                    aVar.f6860g = new ArrayList();
                }
                List<String> list = aVar.f6860g;
                if (list != null) {
                    list.add(x.b.a(i.x.f6846l, str, 0, 0, " \"'<>#&=", true, false, true, false, null, TbsListener.ErrorCode.EXCEED_COPY_RETRY_NUM));
                    List<String> list2 = aVar.f6860g;
                    if (list2 != null) {
                        list2.add(str2 != null ? x.b.a(i.x.f6846l, str2, 0, 0, " \"'<>#&=", true, false, true, false, null, TbsListener.ErrorCode.EXCEED_COPY_RETRY_NUM) : null);
                        return;
                    } else {
                        h.o.c.g.e();
                        throw null;
                    }
                }
                h.o.c.g.e();
                throw null;
            }
            h.o.c.g.f("encodedName");
            throw null;
        }
        this.f7231d.a(str, str2);
    }
}
