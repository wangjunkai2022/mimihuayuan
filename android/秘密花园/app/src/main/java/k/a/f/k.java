package k.a.f;

import com.tencent.smtt.sdk.TbsListener;
import j.b;
import java.util.Arrays;
import k.a.f.i;

/* compiled from: Tokeniser.java */
/* loaded from: classes.dex */
public final class k {
    public static final char[] r;
    public static final int[] s = {8364, 129, 8218, TbsListener.ErrorCode.INFO_FORCE_SYSTEM_WEBVIEW_OUTER, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, TbsListener.ErrorCode.NEEDDOWNLOAD_2, 381, TbsListener.ErrorCode.NEEDDOWNLOAD_4, TbsListener.ErrorCode.NEEDDOWNLOAD_5, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};
    public final a a;
    public final e b;

    /* renamed from: d  reason: collision with root package name */
    public i f7098d;

    /* renamed from: i  reason: collision with root package name */
    public i.AbstractC0111i f7103i;
    public String o;

    /* renamed from: c  reason: collision with root package name */
    public l f7097c = l.Data;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7099e = false;

    /* renamed from: f  reason: collision with root package name */
    public String f7100f = null;

    /* renamed from: g  reason: collision with root package name */
    public StringBuilder f7101g = new StringBuilder(1024);

    /* renamed from: h  reason: collision with root package name */
    public StringBuilder f7102h = new StringBuilder(1024);

    /* renamed from: j  reason: collision with root package name */
    public i.h f7104j = new i.h();

    /* renamed from: k  reason: collision with root package name */
    public i.g f7105k = new i.g();

    /* renamed from: l  reason: collision with root package name */
    public i.c f7106l = new i.c();

    /* renamed from: m  reason: collision with root package name */
    public i.e f7107m = new i.e();
    public i.d n = new i.d();
    public final int[] p = new int[1];
    public final int[] q = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        r = cArr;
        Arrays.sort(cArr);
    }

    public k(a aVar, e eVar) {
        this.a = aVar;
        this.b = eVar;
    }

    public final void a(String str) {
        if (this.b.b()) {
            this.b.add(new d(this.a.t(), "Invalid character reference: %s", str));
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:120:0x01d6, code lost:
        if (r13.a.q('=', '-', '_') == false) goto L_0x01de;
     */
    /* JADX WARNING: Removed duplicated region for block: B:104:0x019b  */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x01a8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int[] b(java.lang.Character r14, boolean r15) {
        /*
        // Method dump skipped, instructions count: 567
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.k.b(java.lang.Character, boolean):int[]");
    }

    public void c() {
        this.n.g();
        this.n.f7079d = true;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v3, resolved type: k.a.f.i$h */
    /* JADX WARN: Multi-variable type inference failed */
    public i.AbstractC0111i d(boolean z) {
        i.g gVar;
        if (z) {
            i.h hVar = this.f7104j;
            hVar.s();
            gVar = hVar;
        } else {
            i.g gVar2 = this.f7105k;
            gVar2.g();
            gVar = gVar2;
        }
        this.f7103i = gVar;
        return gVar;
    }

    public void e(char c2) {
        f(String.valueOf(c2));
    }

    public void f(String str) {
        if (this.f7100f == null) {
            this.f7100f = str;
            return;
        }
        if (this.f7101g.length() == 0) {
            this.f7101g.append(this.f7100f);
        }
        this.f7101g.append(str);
    }

    public void g(i iVar) {
        b.m(this.f7099e);
        this.f7098d = iVar;
        this.f7099e = true;
        i.j jVar = iVar.a;
        if (jVar == i.j.StartTag) {
            this.o = ((i.h) iVar).b;
        } else if (jVar == i.j.EndTag && ((i.g) iVar).f7091j != null) {
            j("Attributes incorrectly present on end tag");
        }
    }

    public void h() {
        i.AbstractC0111i iVar = this.f7103i;
        if (iVar.f7085d != null) {
            iVar.r();
        }
        g(this.f7103i);
    }

    public void i(l lVar) {
        if (this.b.b()) {
            this.b.add(new d(this.a.t(), "Unexpectedly reached end of file (EOF) in input state [%s]", lVar));
        }
    }

    public void j(String str) {
        if (this.b.b()) {
            this.b.add(new d(this.a.t(), str));
        }
    }

    public void k(l lVar) {
        if (this.b.b()) {
            this.b.add(new d(this.a.t(), "Unexpected character '%s' in input state [%s]", Character.valueOf(this.a.k()), lVar));
        }
    }

    public boolean l() {
        return this.o != null && this.f7103i.p().equalsIgnoreCase(this.o);
    }
}
