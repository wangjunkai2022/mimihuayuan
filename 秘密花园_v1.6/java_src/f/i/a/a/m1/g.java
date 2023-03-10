package f.i.a.a.m1;

import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* compiled from: AtomicFile.java */
/* loaded from: classes.dex */
public final class g {
    public final File a;
    public final File b;

    /* compiled from: AtomicFile.java */
    /* loaded from: classes.dex */
    public static final class a extends OutputStream {
        public final FileOutputStream a;
        public boolean b = false;

        public a(File file) throws FileNotFoundException {
            this.a = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.b) {
                return;
            }
            this.b = true;
            this.a.flush();
            try {
                this.a.getFD().sync();
            } catch (IOException unused) {
            }
            this.a.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.a.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i2) throws IOException {
            this.a.write(i2);
        }

        @Override // java.io.OutputStream
        public void write(@NonNull byte[] bArr) throws IOException {
            this.a.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(@NonNull byte[] bArr, int i2, int i3) throws IOException {
            this.a.write(bArr, i2, i3);
        }
    }

    public g(File file) {
        this.a = file;
        this.b = new File(file.getPath() + ".bak");
    }

    public void a() {
        this.a.delete();
        this.b.delete();
    }

    public boolean b() {
        return this.a.exists() || this.b.exists();
    }

    public InputStream c() throws FileNotFoundException {
        if (this.b.exists()) {
            this.a.delete();
            this.b.renameTo(this.a);
        }
        return new FileInputStream(this.a);
    }

    public OutputStream d() throws IOException {
        if (this.a.exists()) {
            if (!this.b.exists()) {
                if (!this.a.renameTo(this.b)) {
                    StringBuilder o = f.b.a.a.a.o("Couldn't rename file ");
                    o.append(this.a);
                    o.append(" to backup file ");
                    o.append(this.b);
                    o.toString();
                }
            } else {
                this.a.delete();
            }
        }
        try {
            return new a(this.a);
        } catch (FileNotFoundException e2) {
            File parentFile = this.a.getParentFile();
            if (parentFile != null && parentFile.mkdirs()) {
                try {
                    return new a(this.a);
                } catch (FileNotFoundException e3) {
                    StringBuilder o2 = f.b.a.a.a.o("Couldn't create ");
                    o2.append(this.a);
                    throw new IOException(o2.toString(), e3);
                }
            }
            StringBuilder o3 = f.b.a.a.a.o("Couldn't create directory ");
            o3.append(this.a);
            throw new IOException(o3.toString(), e2);
        }
    }
}
