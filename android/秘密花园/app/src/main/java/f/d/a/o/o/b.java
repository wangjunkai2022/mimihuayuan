package f.d.a.o.o;

import androidx.annotation.NonNull;
import f.d.a.f;
import f.d.a.o.h;
import f.d.a.o.m.d;
import f.d.a.o.o.n;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: ByteArrayLoader.java */
/* loaded from: classes.dex */
public class b<Data> implements n<byte[], Data> {
    public final AbstractC0037b<Data> a;

    /* compiled from: ByteArrayLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<byte[], ByteBuffer> {

        /* compiled from: ByteArrayLoader.java */
        /* renamed from: f.d.a.o.o.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0036a implements AbstractC0037b<ByteBuffer> {
            public C0036a(a aVar) {
            }

            @Override // f.d.a.o.o.b.AbstractC0037b
            public Class<ByteBuffer> a() {
                return ByteBuffer.class;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // f.d.a.o.o.b.AbstractC0037b
            public ByteBuffer b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<byte[], ByteBuffer> b(@NonNull r rVar) {
            return new b(new C0036a(this));
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: ByteArrayLoader.java */
    /* renamed from: f.d.a.o.o.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface AbstractC0037b<Data> {
        Class<Data> a();

        Data b(byte[] bArr);
    }

    /* compiled from: ByteArrayLoader.java */
    /* loaded from: classes.dex */
    public static class c<Data> implements f.d.a.o.m.d<Data> {
        public final byte[] a;
        public final AbstractC0037b<Data> b;

        public c(byte[] bArr, AbstractC0037b<Data> bVar) {
            this.a = bArr;
            this.b = bVar;
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public Class<Data> a() {
            return this.b.a();
        }

        @Override // f.d.a.o.m.d
        public void b() {
        }

        @Override // f.d.a.o.m.d
        public void cancel() {
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public f.d.a.o.a e() {
            return f.d.a.o.a.LOCAL;
        }

        /* JADX DEBUG: Type inference failed for r2v2. Raw type applied. Possible types: Data, ? super Data */
        @Override // f.d.a.o.m.d
        public void f(@NonNull f fVar, @NonNull d.a<? super Data> aVar) {
            aVar.d((Data) this.b.b(this.a));
        }
    }

    /* compiled from: ByteArrayLoader.java */
    /* loaded from: classes.dex */
    public static class d implements o<byte[], InputStream> {

        /* compiled from: ByteArrayLoader.java */
        /* loaded from: classes.dex */
        public class a implements AbstractC0037b<InputStream> {
            public a(d dVar) {
            }

            @Override // f.d.a.o.o.b.AbstractC0037b
            public Class<InputStream> a() {
                return InputStream.class;
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // f.d.a.o.o.b.AbstractC0037b
            public InputStream b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<byte[], InputStream> b(@NonNull r rVar) {
            return new b(new a(this));
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    public b(AbstractC0037b<Data> bVar) {
        this.a = bVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.o.n
    public n.a a(@NonNull byte[] bArr, int i2, int i3, @NonNull h hVar) {
        byte[] bArr2 = bArr;
        return new n.a(new f.d.a.t.d(bArr2), new c(bArr2, this.a));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // f.d.a.o.o.n
    public boolean b(@NonNull byte[] bArr) {
        return true;
    }
}
