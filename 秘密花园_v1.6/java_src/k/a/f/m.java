package k.a.f;

import java.io.Reader;
import java.util.ArrayList;
import k.a.f.i;
/* compiled from: TreeBuilder.java */
/* loaded from: classes2.dex */
public abstract class m {
    public g a;
    public a b;

    /* renamed from: c  reason: collision with root package name */
    public k f7203c;

    /* renamed from: d  reason: collision with root package name */
    public k.a.e.f f7204d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList<k.a.e.h> f7205e;

    /* renamed from: f  reason: collision with root package name */
    public String f7206f;

    /* renamed from: g  reason: collision with root package name */
    public i f7207g;

    /* renamed from: h  reason: collision with root package name */
    public f f7208h;

    /* renamed from: i  reason: collision with root package name */
    public i.h f7209i = new i.h();

    /* renamed from: j  reason: collision with root package name */
    public i.g f7210j = new i.g();

    public k.a.e.h a() {
        int size = this.f7205e.size();
        if (size > 0) {
            return this.f7205e.get(size - 1);
        }
        return null;
    }

    public void b(Reader reader, String str, g gVar) {
        if (reader == null) {
            throw new IllegalArgumentException("String input must not be null");
        }
        if (str != null) {
            k.a.e.f fVar = new k.a.e.f(str);
            this.f7204d = fVar;
            fVar.f7089j = gVar;
            this.a = gVar;
            this.f7208h = gVar.b;
            this.b = new a(reader, 32768);
            this.f7207g = null;
            this.f7203c = new k(this.b, gVar.a);
            this.f7205e = new ArrayList<>(32);
            this.f7206f = str;
            return;
        }
        throw new IllegalArgumentException("BaseURI must not be null");
    }

    public abstract boolean c(i iVar);

    public boolean d(String str) {
        i iVar = this.f7207g;
        i.g gVar = this.f7210j;
        if (iVar == gVar) {
            i.g gVar2 = new i.g();
            gVar2.b = str;
            gVar2.f7168c = j.b.o(str);
            return c(gVar2);
        }
        gVar.g();
        gVar.b = str;
        gVar.f7168c = j.b.o(str);
        return c(gVar);
    }

    public boolean e(String str) {
        i.h hVar = this.f7209i;
        if (this.f7207g == hVar) {
            i.h hVar2 = new i.h();
            hVar2.b = str;
            hVar2.f7168c = j.b.o(str);
            b bVar = (b) this;
            bVar.f7207g = hVar2;
            return bVar.f7124k.c(hVar2, bVar);
        }
        hVar.s();
        hVar.b = str;
        hVar.f7168c = j.b.o(str);
        b bVar2 = (b) this;
        bVar2.f7207g = hVar;
        return bVar2.f7124k.c(hVar, bVar2);
    }
}
