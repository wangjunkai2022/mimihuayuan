package l.n0.a;

import f.i.b.j;
import i.f0;
import i.g0;
import i.z;
import j.g;
import j.h;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import l.l;
/* compiled from: GsonRequestBodyConverter.java */
/* loaded from: classes2.dex */
public final class b<T> implements l<T, g0> {

    /* renamed from: c  reason: collision with root package name */
    public static final z f7290c = z.b("application/json; charset=UTF-8");

    /* renamed from: d  reason: collision with root package name */
    public static final Charset f7291d = Charset.forName("UTF-8");
    public final j a;
    public final f.i.b.z<T> b;

    public b(j jVar, f.i.b.z<T> zVar) {
        this.a = jVar;
        this.b = zVar;
    }

    @Override // l.l
    public g0 a(Object obj) throws IOException {
        g gVar = new g();
        f.i.b.e0.c i2 = this.a.i(new OutputStreamWriter(new h(gVar), f7291d));
        this.b.b(i2, obj);
        i2.close();
        return new f0(gVar.F(), f7290c);
    }
}
