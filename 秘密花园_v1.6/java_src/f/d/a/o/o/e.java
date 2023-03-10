package f.d.a.o.o;

import android.util.Base64;
import androidx.annotation.NonNull;
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
    public static final class b<Data> implements f.d.a.o.m.d<Data> {
        public final String a;
        public final a<Data> b;

        /* renamed from: c  reason: collision with root package name */
        public Data f3726c;

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
                Data data = this.f3726c;
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
        @Override // f.d.a.o.m.d
        public void f(@NonNull f.d.a.f fVar, @NonNull d.a<? super Data> aVar) {
            try {
                ?? r2 = (Data) ((c.a) this.b).a(this.a);
                this.f3726c = r2;
                aVar.d(r2);
            } catch (IllegalArgumentException e2) {
                aVar.c(e2);
            }
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
                    if (indexOf != -1) {
                        if (str.substring(0, indexOf).endsWith(";base64")) {
                            return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                        }
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                throw new IllegalArgumentException("Not a valid image data URL.");
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
    public n.a<Data> a(@NonNull Model model, int i2, int i3, @NonNull f.d.a.o.h hVar) {
        return new n.a<>(new f.d.a.t.d(model), new b(model.toString(), this.a));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull Model model) {
        return model.toString().startsWith("data:image");
    }
}
