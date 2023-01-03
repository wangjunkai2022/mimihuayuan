package f.d.a.o.o;

import android.util.Base64;
import androidx.annotation.NonNull;
import f.d.a.o.h;
import f.d.a.o.m.d;
import f.d.a.o.o.n;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: DataUrlLoader.java */
/* loaded from: classes.dex */
public final class e<Model, Data> implements n<Model, Data> {
    public final a<Data> a;

    /* compiled from: DataUrlLoader.java */
    /* loaded from: classes.dex */
    public interface a<Data> {
    }

    /* compiled from: DataUrlLoader.java */
    /* loaded from: classes.dex */
    public static final class b<Data> implements d<Data> {
        public final String a;
        public final a<Data> b;

        /* renamed from: c  reason: collision with root package name */
        public Data f3647c;

        public b(String str, a<Data> aVar) {
            this.a = str;
            this.b = aVar;
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public Class<Data> a() {
            if (((c.a) this.b) != null) {
                return InputStream.class;
            }
            throw null;
        }

        @Override // f.d.a.o.m.d
        public void b() {
            try {
                a<Data> aVar = this.b;
                Data data = this.f3647c;
                if (((c.a) aVar) != null) {
                    ((InputStream) data).close();
                    return;
                }
                throw null;
            } catch (IOException unused) {
            }
        }

        @Override // f.d.a.o.m.d
        public void cancel() {
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public f.d.a.o.a e() {
            return f.d.a.o.a.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, Data] */
        /* JADX WARNING: Unknown variable types count: 1 */
        @Override // f.d.a.o.m.d
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void f(@androidx.annotation.NonNull f.d.a.f r2, @androidx.annotation.NonNull f.d.a.o.m.d.a<? super Data> r3) {
            /*
                r1 = this;
                f.d.a.o.o.e$a<Data> r2 = r1.b     // Catch: IllegalArgumentException -> 0x0010
                java.lang.String r0 = r1.a     // Catch: IllegalArgumentException -> 0x0010
                f.d.a.o.o.e$c$a r2 = (f.d.a.o.o.e.c.a) r2
                java.lang.Object r2 = r2.a(r0)     // Catch: IllegalArgumentException -> 0x0010
                r1.f3647c = r2     // Catch: IllegalArgumentException -> 0x0010
                r3.d(r2)     // Catch: IllegalArgumentException -> 0x0010
                goto L_0x0014
            L_0x0010:
                r2 = move-exception
                r3.c(r2)
            L_0x0014:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.o.e.b.f(f.d.a.f, f.d.a.o.m.d$a):void");
        }
    }

    /* compiled from: DataUrlLoader.java */
    /* loaded from: classes.dex */
    public static final class c<Model> implements o<Model, InputStream> {
        public final a<InputStream> a = new a(this);

        /* compiled from: DataUrlLoader.java */
        /* loaded from: classes.dex */
        public class a implements a<InputStream> {
            public a(c cVar) {
            }

            public Object a(String str) throws IllegalArgumentException {
                if (str.startsWith("data:image")) {
                    int indexOf = str.indexOf(44);
                    if (indexOf == -1) {
                        throw new IllegalArgumentException("Missing comma in data URL.");
                    } else if (str.substring(0, indexOf).endsWith(";base64")) {
                        return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                    } else {
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                } else {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
            }
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Model, InputStream> b(@NonNull r rVar) {
            return new e(this.a);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    public e(a<Data> aVar) {
        this.a = aVar;
    }

    @Override // f.d.a.o.o.n
    public n.a<Data> a(@NonNull Model model, int i2, int i3, @NonNull h hVar) {
        return new n.a<>(new f.d.a.t.d(model), new b(model.toString(), this.a));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull Model model) {
        return model.toString().startsWith("data:image");
    }
}
