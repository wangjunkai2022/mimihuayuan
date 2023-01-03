package f.d.a.n.a;

import androidx.annotation.NonNull;
import f.d.a.o.h;
import f.d.a.o.o.g;
import f.d.a.o.o.n;
import f.d.a.o.o.o;
import f.d.a.o.o.r;
import i.b0;
import i.f;
import java.io.InputStream;

/* compiled from: OkHttpUrlLoader.java */
/* loaded from: classes.dex */
public class c implements n<g, InputStream> {
    public final f.a a;

    public c(@NonNull f.a aVar) {
        this.a = aVar;
    }

    /* Return type fixed from 'f.d.a.o.o.n$a' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.o.n
    public n.a<InputStream> a(@NonNull g gVar, int i2, int i3, @NonNull h hVar) {
        g gVar2 = gVar;
        return new n.a<>(gVar2, new b(this.a, gVar2));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // f.d.a.o.o.n
    public boolean b(@NonNull g gVar) {
        return true;
    }

    /* compiled from: OkHttpUrlLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<g, InputStream> {
        public static volatile f.a b;
        public final f.a a;

        public a() {
            if (b == null) {
                synchronized (a.class) {
                    if (b == null) {
                        b = new b0();
                    }
                }
            }
            this.a = b;
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<g, InputStream> b(r rVar) {
            return new c(this.a);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }

        public a(@NonNull f.a aVar) {
            this.a = aVar;
        }
    }
}
