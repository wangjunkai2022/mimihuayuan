package k.a.e;

import java.util.Collections;
import java.util.List;
/* compiled from: LeafNode.java */
/* loaded from: classes2.dex */
public abstract class k extends l {

    /* renamed from: d  reason: collision with root package name */
    public static final List<l> f7115d = Collections.emptyList();

    /* renamed from: c  reason: collision with root package name */
    public Object f7116c;

    public final void A() {
        Object obj = this.f7116c;
        if (obj instanceof b) {
            return;
        }
        b bVar = new b();
        this.f7116c = bVar;
        if (obj != null) {
            bVar.n(q(), (String) obj);
        }
    }

    @Override // k.a.e.l
    public String a(String str) {
        A();
        return super.a(str);
    }

    @Override // k.a.e.l
    public String b(String str) {
        j.b.s(str);
        if (this.f7116c instanceof b) {
            return super.b(str);
        }
        return str.equals(q()) ? (String) this.f7116c : "";
    }

    @Override // k.a.e.l
    public l c(String str, String str2) {
        if (!(this.f7116c instanceof b) && str.equals("#doctype")) {
            this.f7116c = str2;
        } else {
            A();
            super.c(str, str2);
        }
        return this;
    }

    @Override // k.a.e.l
    public final b d() {
        A();
        return (b) this.f7116c;
    }

    @Override // k.a.e.l
    public String e() {
        return this.a != null ? this.a.e() : "";
    }

    @Override // k.a.e.l
    public int f() {
        return 0;
    }

    @Override // k.a.e.l
    public l i(l lVar) {
        k kVar = (k) super.i(lVar);
        Object obj = this.f7116c;
        if (obj instanceof b) {
            kVar.f7116c = ((b) obj).clone();
        }
        return kVar;
    }

    @Override // k.a.e.l
    public void j(String str) {
    }

    @Override // k.a.e.l
    public l k() {
        return this;
    }

    @Override // k.a.e.l
    public List<l> l() {
        return f7115d;
    }

    @Override // k.a.e.l
    public boolean m(String str) {
        A();
        return super.m(str);
    }

    @Override // k.a.e.l
    public final boolean n() {
        return this.f7116c instanceof b;
    }

    public String z() {
        return b(q());
    }
}
