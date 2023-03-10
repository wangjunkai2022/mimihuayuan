package f.d.a.o.o;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import f.d.a.o.m.d;
import f.d.a.o.o.n;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: FileLoader.java */
/* loaded from: classes.dex */
public class f<Data> implements n<File, Data> {
    public final d<Data> a;

    /* compiled from: FileLoader.java */
    /* loaded from: classes.dex */
    public static class a<Data> implements o<File, Data> {
        public final d<Data> a;

        public a(d<Data> dVar) {
            this.a = dVar;
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public final n<File, Data> b(@NonNull r rVar) {
            return new f(this.a);
        }

        @Override // f.d.a.o.o.o
        public final void c() {
        }
    }

    /* compiled from: FileLoader.java */
    /* loaded from: classes.dex */
    public static class b extends a<ParcelFileDescriptor> {

        /* compiled from: FileLoader.java */
        /* loaded from: classes.dex */
        public class a implements d<ParcelFileDescriptor> {
            @Override // f.d.a.o.o.f.d
            public Class<ParcelFileDescriptor> a() {
                return ParcelFileDescriptor.class;
            }

            @Override // f.d.a.o.o.f.d
            public ParcelFileDescriptor b(File file) throws FileNotFoundException {
                return ParcelFileDescriptor.open(file, 268435456);
            }

            @Override // f.d.a.o.o.f.d
            public void c(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                parcelFileDescriptor.close();
            }
        }

        public b() {
            super(new a());
        }
    }

    /* compiled from: FileLoader.java */
    /* loaded from: classes.dex */
    public static final class c<Data> implements f.d.a.o.m.d<Data> {
        public final File a;
        public final d<Data> b;

        /* renamed from: c  reason: collision with root package name */
        public Data f3727c;

        public c(File file, d<Data> dVar) {
            this.a = file;
            this.b = dVar;
        }

        @Override // f.d.a.o.m.d
        @NonNull
        public Class<Data> a() {
            return this.b.a();
        }

        @Override // f.d.a.o.m.d
        public void b() {
            Data data = this.f3727c;
            if (data != null) {
                try {
                    this.b.c(data);
                } catch (IOException unused) {
                }
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

        /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, Data] */
        @Override // f.d.a.o.m.d
        public void f(@NonNull f.d.a.f fVar, @NonNull d.a<? super Data> aVar) {
            try {
                Data b = this.b.b(this.a);
                this.f3727c = b;
                aVar.d(b);
            } catch (FileNotFoundException e2) {
                Log.isLoggable("FileLoader", 3);
                aVar.c(e2);
            }
        }
    }

    /* compiled from: FileLoader.java */
    /* loaded from: classes.dex */
    public interface d<Data> {
        Class<Data> a();

        Data b(File file) throws FileNotFoundException;

        void c(Data data) throws IOException;
    }

    /* compiled from: FileLoader.java */
    /* loaded from: classes.dex */
    public static class e extends a<InputStream> {

        /* compiled from: FileLoader.java */
        /* loaded from: classes.dex */
        public class a implements d<InputStream> {
            @Override // f.d.a.o.o.f.d
            public Class<InputStream> a() {
                return InputStream.class;
            }

            @Override // f.d.a.o.o.f.d
            public InputStream b(File file) throws FileNotFoundException {
                return new FileInputStream(file);
            }

            @Override // f.d.a.o.o.f.d
            public void c(InputStream inputStream) throws IOException {
                inputStream.close();
            }
        }

        public e() {
            super(new a());
        }
    }

    public f(d<Data> dVar) {
        this.a = dVar;
    }

    @Override // f.d.a.o.o.n
    public n.a a(@NonNull File file, int i2, int i3, @NonNull f.d.a.o.h hVar) {
        File file2 = file;
        return new n.a(new f.d.a.t.d(file2), new c(file2, this.a));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull File file) {
        return true;
    }
}
