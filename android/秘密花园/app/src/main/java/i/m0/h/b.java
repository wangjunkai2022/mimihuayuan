package i.m0.h;

import h.o.c.g;
import j.a0;
import j.b;
import j.b0;
import j.q;
import j.y;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: FileSystem.kt */
/* loaded from: classes.dex */
public interface b {
    public static final b a = new b() { // from class: i.m0.h.a$a
        @Override // i.m0.h.b
        public void a(File file) throws IOException {
            if (file == null) {
                g.f("file");
                throw null;
            } else if (!file.delete() && file.exists()) {
                throw new IOException("failed to delete " + file);
            }
        }

        @Override // i.m0.h.b
        public a0 b(File file) throws FileNotFoundException {
            if (file != null) {
                return new q(new FileInputStream(file), new b0());
            }
            g.f("file");
            throw null;
        }

        @Override // i.m0.h.b
        public y c(File file) throws FileNotFoundException {
            if (file != null) {
                try {
                    return b.x(file, false, 1);
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    return b.x(file, false, 1);
                }
            } else {
                g.f("file");
                throw null;
            }
        }

        @Override // i.m0.h.b
        public void d(File file) throws IOException {
            if (file != null) {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        g.b(file2, "file");
                        if (file2.isDirectory()) {
                            d(file2);
                        }
                        if (!file2.delete()) {
                            throw new IOException("failed to delete " + file2);
                        }
                    }
                    return;
                }
                throw new IOException("not a readable directory: " + file);
            }
            g.f("directory");
            throw null;
        }

        @Override // i.m0.h.b
        public y e(File file) throws FileNotFoundException {
            if (file != null) {
                try {
                    return b.a(file);
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    return b.a(file);
                }
            } else {
                g.f("file");
                throw null;
            }
        }

        @Override // i.m0.h.b
        public boolean f(File file) {
            if (file != null) {
                return file.exists();
            }
            g.f("file");
            throw null;
        }

        @Override // i.m0.h.b
        public void g(File file, File file2) throws IOException {
            if (file == null) {
                g.f("from");
                throw null;
            } else if (file2 != null) {
                a(file2);
                if (!file.renameTo(file2)) {
                    throw new IOException("failed to rename " + file + " to " + file2);
                }
            } else {
                g.f("to");
                throw null;
            }
        }

        @Override // i.m0.h.b
        public long h(File file) {
            if (file != null) {
                return file.length();
            }
            g.f("file");
            throw null;
        }
    };

    void a(File file) throws IOException;

    a0 b(File file) throws FileNotFoundException;

    y c(File file) throws FileNotFoundException;

    void d(File file) throws IOException;

    y e(File file) throws FileNotFoundException;

    boolean f(File file);

    void g(File file, File file2) throws IOException;

    long h(File file);
}
