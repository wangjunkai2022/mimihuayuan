package f.d.a.o.o.y;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.h;
import f.d.a.o.m.j;
import f.d.a.o.o.g;
import f.d.a.o.o.m;
import f.d.a.o.o.n;
import f.d.a.o.o.o;
import f.d.a.o.o.r;
import java.io.InputStream;
/* compiled from: HttpGlideUrlLoader.java */
/* loaded from: classes.dex */
public class a implements n<g, InputStream> {
    public static final f.d.a.o.g<Integer> b = f.d.a.o.g.a("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);
    @Nullable
    public final m<g, g> a;

    /* compiled from: HttpGlideUrlLoader.java */
    /* renamed from: f.d.a.o.o.y.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0046a implements o<g, InputStream> {
        public final m<g, g> a = new m<>(500);

        @Override // f.d.a.o.o.o
        @NonNull
        public n<g, InputStream> b(r rVar) {
            return new a(this.a);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    public a(@Nullable m<g, g> mVar) {
        this.a = mVar;
    }

    @Override // f.d.a.o.o.n
    public n.a<InputStream> a(@NonNull g gVar, int i2, int i3, @NonNull h hVar) {
        g gVar2 = gVar;
        m<g, g> mVar = this.a;
        if (mVar != null) {
            m.b<g> a = m.b.a(gVar2, 0, 0);
            g a2 = mVar.a.a(a);
            synchronized (m.b.f3737d) {
                m.b.f3737d.offer(a);
            }
            g gVar3 = a2;
            if (gVar3 == null) {
                m<g, g> mVar2 = this.a;
                if (mVar2 != null) {
                    mVar2.a.d(m.b.a(gVar2, 0, 0), gVar2);
                } else {
                    throw null;
                }
            } else {
                gVar2 = gVar3;
            }
        }
        return new n.a<>(gVar2, new j(gVar2, ((Integer) hVar.c(b)).intValue()));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull g gVar) {
        return true;
    }
}
