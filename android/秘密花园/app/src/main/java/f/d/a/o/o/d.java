package f.d.a.o.o;

import android.util.Log;
import androidx.annotation.NonNull;
import f.d.a.f;
import f.d.a.o.h;
import f.d.a.o.m.d;
import f.d.a.o.o.n;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferFileLoader.java */
/* loaded from: classes.dex */
public class d implements n<File, ByteBuffer> {

    /* compiled from: ByteBufferFileLoader.java */
    /* loaded from: classes.dex */
    public static final class a implements f.d.a.o.m.d<ByteBuffer> {
        public final File a;

        public a(File file) {
            this.a = file;
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
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

        @Override // f.d.a.o.m.d
        public void f(@NonNull f fVar, @NonNull d.a<? super ByteBuffer> aVar) {
            try {
                aVar.d(f.d.a.u.a.a(this.a));
            } catch (IOException e2) {
                Log.isLoggable("ByteBufferFileLoader", 3);
                aVar.c(e2);
            }
        }
    }

    /* compiled from: ByteBufferFileLoader.java */
    /* loaded from: classes.dex */
    public static class b implements o<File, ByteBuffer> {
        @Override // f.d.a.o.o.o
        @NonNull
        public n<File, ByteBuffer> b(@NonNull r rVar) {
            return new d();
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* Return type fixed from 'f.d.a.o.o.n$a' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.o.n
    public n.a<ByteBuffer> a(@NonNull File file, int i2, int i3, @NonNull h hVar) {
        File file2 = file;
        return new n.a<>(new f.d.a.t.d(file2), new a(file2));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // f.d.a.o.o.n
    public boolean b(@NonNull File file) {
        return true;
    }
}
