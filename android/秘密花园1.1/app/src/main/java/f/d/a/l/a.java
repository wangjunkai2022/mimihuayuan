package f.d.a.l;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.utils.g;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: DiskLruCache.java */
/* loaded from: classes.dex */
public final class a implements Closeable {
    public final File a;
    public final File b;

    /* renamed from: c  reason: collision with root package name */
    public final File f3405c;

    /* renamed from: d  reason: collision with root package name */
    public final File f3406d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3407e;

    /* renamed from: f  reason: collision with root package name */
    public long f3408f;

    /* renamed from: g  reason: collision with root package name */
    public final int f3409g;

    /* renamed from: i  reason: collision with root package name */
    public Writer f3411i;

    /* renamed from: k  reason: collision with root package name */
    public int f3413k;

    /* renamed from: h  reason: collision with root package name */
    public long f3410h = 0;

    /* renamed from: j  reason: collision with root package name */
    public final LinkedHashMap<String, d> f3412j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: l  reason: collision with root package name */
    public long f3414l = 0;

    /* renamed from: m  reason: collision with root package name */
    public final ThreadPoolExecutor f3415m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));
    public final Callable<Void> n = new CallableC0032a();

    /* compiled from: DiskLruCache.java */
    /* renamed from: f.d.a.l.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class CallableC0032a implements Callable<Void> {
        public CallableC0032a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (a.this) {
                if (a.this.f3411i == null) {
                    return null;
                }
                a.this.O();
                if (a.this.H()) {
                    a.this.M();
                    a.this.f3413k = 0;
                }
                return null;
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public static final class b implements ThreadFactory {
        public b(CallableC0032a callableC0032a) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public final class c {
        public final d a;
        public final boolean[] b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f3416c;

        public c(d dVar, CallableC0032a callableC0032a) {
            this.a = dVar;
            this.b = dVar.f3420e ? null : new boolean[a.this.f3409g];
        }

        public void a() throws IOException {
            a.d(a.this, this, false);
        }

        public File b(int i2) throws IOException {
            File file;
            synchronized (a.this) {
                if (this.a.f3421f == this) {
                    if (!this.a.f3420e) {
                        this.b[i2] = true;
                    }
                    file = this.a.f3419d[i2];
                    if (!a.this.a.exists()) {
                        a.this.a.mkdirs();
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
            return file;
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public final class d {
        public final String a;
        public final long[] b;

        /* renamed from: c  reason: collision with root package name */
        public File[] f3418c;

        /* renamed from: d  reason: collision with root package name */
        public File[] f3419d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f3420e;

        /* renamed from: f  reason: collision with root package name */
        public c f3421f;

        /* renamed from: g  reason: collision with root package name */
        public long f3422g;

        public d(String str, CallableC0032a callableC0032a) {
            this.a = str;
            int i2 = a.this.f3409g;
            this.b = new long[i2];
            this.f3418c = new File[i2];
            this.f3419d = new File[i2];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i3 = 0; i3 < a.this.f3409g; i3++) {
                sb.append(i3);
                this.f3418c[i3] = new File(a.this.a, sb.toString());
                sb.append(".tmp");
                this.f3419d[i3] = new File(a.this.a, sb.toString());
                sb.setLength(length);
            }
        }

        public String a() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j2 : this.b) {
                sb.append(' ');
                sb.append(j2);
            }
            return sb.toString();
        }

        public final IOException b(String[] strArr) throws IOException {
            StringBuilder o = f.b.a.a.a.o("unexpected journal line: ");
            o.append(Arrays.toString(strArr));
            throw new IOException(o.toString());
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public final class e {
        public final File[] a;

        public e(String str, long j2, File[] fileArr, long[] jArr, CallableC0032a callableC0032a) {
            this.a = fileArr;
        }
    }

    public a(File file, int i2, int i3, long j2) {
        this.a = file;
        this.f3407e = i2;
        this.b = new File(file, "journal");
        this.f3405c = new File(file, "journal.tmp");
        this.f3406d = new File(file, "journal.bkp");
        this.f3409g = i3;
        this.f3408f = j2;
    }

    @TargetApi(26)
    public static void F(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static a I(File file, int i2, int i3, long j2) throws IOException {
        if (j2 > 0) {
            if (i3 > 0) {
                File file2 = new File(file, "journal.bkp");
                if (file2.exists()) {
                    File file3 = new File(file, "journal");
                    if (file3.exists()) {
                        file2.delete();
                    } else {
                        N(file2, file3, false);
                    }
                }
                a aVar = new a(file, i2, i3, j2);
                if (aVar.b.exists()) {
                    try {
                        aVar.K();
                        aVar.J();
                        return aVar;
                    } catch (IOException e2) {
                        PrintStream printStream = System.out;
                        String str = "DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing";
                        aVar.close();
                        f.d.a.l.c.a(aVar.a);
                    }
                }
                file.mkdirs();
                a aVar2 = new a(file, i2, i3, j2);
                aVar2.M();
                return aVar2;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public static void N(File file, File file2, boolean z) throws IOException {
        if (z) {
            g(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public static void d(a aVar, c cVar, boolean z) throws IOException {
        synchronized (aVar) {
            d dVar = cVar.a;
            if (dVar.f3421f == cVar) {
                if (z && !dVar.f3420e) {
                    for (int i2 = 0; i2 < aVar.f3409g; i2++) {
                        if (cVar.b[i2]) {
                            if (!dVar.f3419d[i2].exists()) {
                                cVar.a();
                                return;
                            }
                        } else {
                            cVar.a();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                        }
                    }
                }
                for (int i3 = 0; i3 < aVar.f3409g; i3++) {
                    File file = dVar.f3419d[i3];
                    if (z) {
                        if (file.exists()) {
                            File file2 = dVar.f3418c[i3];
                            file.renameTo(file2);
                            long j2 = dVar.b[i3];
                            long length = file2.length();
                            dVar.b[i3] = length;
                            aVar.f3410h = (aVar.f3410h - j2) + length;
                        }
                    } else {
                        g(file);
                    }
                }
                aVar.f3413k++;
                dVar.f3421f = null;
                if (dVar.f3420e | z) {
                    dVar.f3420e = true;
                    aVar.f3411i.append((CharSequence) i.m0.c.e.v);
                    aVar.f3411i.append(' ');
                    aVar.f3411i.append((CharSequence) dVar.a);
                    aVar.f3411i.append((CharSequence) dVar.a());
                    aVar.f3411i.append('\n');
                    if (z) {
                        long j3 = aVar.f3414l;
                        aVar.f3414l = 1 + j3;
                        dVar.f3422g = j3;
                    }
                } else {
                    aVar.f3412j.remove(dVar.a);
                    aVar.f3411i.append((CharSequence) i.m0.c.e.x);
                    aVar.f3411i.append(' ');
                    aVar.f3411i.append((CharSequence) dVar.a);
                    aVar.f3411i.append('\n');
                }
                F(aVar.f3411i);
                if (aVar.f3410h > aVar.f3408f || aVar.H()) {
                    aVar.f3415m.submit(aVar.n);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    @TargetApi(26)
    public static void f(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void g(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public c E(String str) throws IOException {
        synchronized (this) {
            e();
            d dVar = this.f3412j.get(str);
            if (dVar == null) {
                dVar = new d(str, null);
                this.f3412j.put(str, dVar);
            } else if (dVar.f3421f != null) {
                return null;
            }
            c cVar = new c(dVar, null);
            dVar.f3421f = cVar;
            this.f3411i.append((CharSequence) i.m0.c.e.w);
            this.f3411i.append(' ');
            this.f3411i.append((CharSequence) str);
            this.f3411i.append('\n');
            F(this.f3411i);
            return cVar;
        }
    }

    public synchronized e G(String str) throws IOException {
        e();
        d dVar = this.f3412j.get(str);
        if (dVar == null) {
            return null;
        }
        if (dVar.f3420e) {
            for (File file : dVar.f3418c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.f3413k++;
            this.f3411i.append((CharSequence) i.m0.c.e.y);
            this.f3411i.append(' ');
            this.f3411i.append((CharSequence) str);
            this.f3411i.append('\n');
            if (H()) {
                this.f3415m.submit(this.n);
            }
            return new e(str, dVar.f3422g, dVar.f3418c, dVar.b, null);
        }
        return null;
    }

    public final boolean H() {
        int i2 = this.f3413k;
        return i2 >= 2000 && i2 >= this.f3412j.size();
    }

    public final void J() throws IOException {
        g(this.f3405c);
        Iterator<d> it = this.f3412j.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i2 = 0;
            if (next.f3421f == null) {
                while (i2 < this.f3409g) {
                    this.f3410h += next.b[i2];
                    i2++;
                }
            } else {
                next.f3421f = null;
                while (i2 < this.f3409g) {
                    g(next.f3418c[i2]);
                    g(next.f3419d[i2]);
                    i2++;
                }
                it.remove();
            }
        }
    }

    public final void K() throws IOException {
        f.d.a.l.b bVar = new f.d.a.l.b(new FileInputStream(this.b), f.d.a.l.c.a);
        try {
            String e2 = bVar.e();
            String e3 = bVar.e();
            String e4 = bVar.e();
            String e5 = bVar.e();
            String e6 = bVar.e();
            if (!"libcore.io.DiskLruCache".equals(e2) || !UMRTLog.RTLOG_ENABLE.equals(e3) || !Integer.toString(this.f3407e).equals(e4) || !Integer.toString(this.f3409g).equals(e5) || !"".equals(e6)) {
                throw new IOException("unexpected journal header: [" + e2 + ", " + e3 + ", " + e5 + ", " + e6 + "]");
            }
            int i2 = 0;
            while (true) {
                try {
                    L(bVar.e());
                    i2++;
                } catch (EOFException unused) {
                    this.f3413k = i2 - this.f3412j.size();
                    if (bVar.f3426e == -1) {
                        M();
                    } else {
                        this.f3411i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), f.d.a.l.c.a));
                    }
                    try {
                        bVar.close();
                        return;
                    } catch (RuntimeException e7) {
                        throw e7;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                bVar.close();
            } catch (RuntimeException e8) {
                throw e8;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final void L(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i2 = indexOf + 1;
            int indexOf2 = str.indexOf(32, i2);
            if (indexOf2 == -1) {
                substring = str.substring(i2);
                if (indexOf == 6 && str.startsWith(i.m0.c.e.x)) {
                    this.f3412j.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i2, indexOf2);
            }
            d dVar = this.f3412j.get(substring);
            if (dVar == null) {
                dVar = new d(substring, null);
                this.f3412j.put(substring, dVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith(i.m0.c.e.v)) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar.f3420e = true;
                dVar.f3421f = null;
                if (split.length == a.this.f3409g) {
                    for (int i3 = 0; i3 < split.length; i3++) {
                        try {
                            dVar.b[i3] = Long.parseLong(split[i3]);
                        } catch (NumberFormatException unused) {
                            dVar.b(split);
                            throw null;
                        }
                    }
                    return;
                }
                dVar.b(split);
                throw null;
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith(i.m0.c.e.w)) {
                dVar.f3421f = new c(dVar, null);
                return;
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith(i.m0.c.e.y)) {
                throw new IOException(f.b.a.a.a.f("unexpected journal line: ", str));
            } else {
                return;
            }
        }
        throw new IOException(f.b.a.a.a.f("unexpected journal line: ", str));
    }

    public final synchronized void M() throws IOException {
        if (this.f3411i != null) {
            f(this.f3411i);
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3405c), f.d.a.l.c.a));
        bufferedWriter.write("libcore.io.DiskLruCache");
        bufferedWriter.write(g.a);
        bufferedWriter.write(UMRTLog.RTLOG_ENABLE);
        bufferedWriter.write(g.a);
        bufferedWriter.write(Integer.toString(this.f3407e));
        bufferedWriter.write(g.a);
        bufferedWriter.write(Integer.toString(this.f3409g));
        bufferedWriter.write(g.a);
        bufferedWriter.write(g.a);
        for (d dVar : this.f3412j.values()) {
            if (dVar.f3421f != null) {
                bufferedWriter.write("DIRTY " + dVar.a + '\n');
            } else {
                bufferedWriter.write("CLEAN " + dVar.a + dVar.a() + '\n');
            }
        }
        f(bufferedWriter);
        if (this.b.exists()) {
            N(this.b, this.f3406d, true);
        }
        N(this.f3405c, this.b, false);
        this.f3406d.delete();
        this.f3411i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), f.d.a.l.c.a));
    }

    public final void O() throws IOException {
        while (this.f3410h > this.f3408f) {
            String key = this.f3412j.entrySet().iterator().next().getKey();
            synchronized (this) {
                e();
                d dVar = this.f3412j.get(key);
                if (dVar != null && dVar.f3421f == null) {
                    for (int i2 = 0; i2 < this.f3409g; i2++) {
                        File file = dVar.f3418c[i2];
                        if (file.exists() && !file.delete()) {
                            throw new IOException("failed to delete " + file);
                        }
                        this.f3410h -= dVar.b[i2];
                        dVar.b[i2] = 0;
                    }
                    this.f3413k++;
                    this.f3411i.append((CharSequence) i.m0.c.e.x);
                    this.f3411i.append(' ');
                    this.f3411i.append((CharSequence) key);
                    this.f3411i.append('\n');
                    this.f3412j.remove(key);
                    if (H()) {
                        this.f3415m.submit(this.n);
                    }
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f3411i == null) {
            return;
        }
        Iterator it = new ArrayList(this.f3412j.values()).iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (dVar.f3421f != null) {
                dVar.f3421f.a();
            }
        }
        O();
        f(this.f3411i);
        this.f3411i = null;
    }

    public final void e() {
        if (this.f3411i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }
}
