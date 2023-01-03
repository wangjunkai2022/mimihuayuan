package k.a.f;

import com.tencent.smtt.sdk.TbsListener;
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
    public i.AbstractC0118i f7103i;
    public String o;

    /* renamed from: c  reason: collision with root package name */
    public l f7097c = l.a;

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

    /* JADX WARN: Code restructure failed: missing block: B:124:0x01d6, code lost:
        if (r13.a.q('=', '-', '_') == false) goto L136;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int[] b(java.lang.Character r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 567
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.f.k.b(java.lang.Character, boolean):int[]");
    }

    public void c() {
        this.n.g();
        this.n.f7079d = true;
    }

    public i.AbstractC0118i d(boolean z) {
        i.AbstractC0118i abstractC0118i;
        if (z) {
            abstractC0118i = this.f7104j;
            abstractC0118i.s();
        } else {
            abstractC0118i = this.f7105k;
            abstractC0118i.g();
        }
        this.f7103i = abstractC0118i;
        return abstractC0118i;
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
        j.b.m(this.f7099e);
        this.f7098d = iVar;
        this.f7099e = true;
        i.j jVar = iVar.a;
        if (jVar == i.j.StartTag) {
            this.o = ((i.h) iVar).b;
        } else if (jVar != i.j.EndTag || ((i.g) iVar).f7091j == null) {
        } else {
            j("Attributes incorrectly present on end tag");
        }
    }

    public void h() {
        i.AbstractC0118i abstractC0118i = this.f7103i;
        if (abstractC0118i.f7085d != null) {
            abstractC0118i.r();
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
