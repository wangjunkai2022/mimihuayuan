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
    public final File f3484c;

    /* renamed from: d  reason: collision with root package name */
    public final File f3485d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3486e;

    /* renamed from: f  reason: collision with root package name */
    public long f3487f;

    /* renamed from: g  reason: collision with root package name */
    public final int f3488g;

    /* renamed from: i  reason: collision with root package name */
    public Writer f3490i;

    /* renamed from: k  reason: collision with root package name */
    public int f3492k;

    /* renamed from: h  reason: collision with root package name */
    public long f3489h = 0;

    /* renamed from: j  reason: collision with root package name */
    public final LinkedHashMap<String, d> f3491j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: l  reason: collision with root package name */
    public long f3493l = 0;

    /* renamed from: m  reason: collision with root package name */
    public final ThreadPoolExecutor f3494m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));
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
                if (a.this.f3490i == null) {
                    return null;
                }
                a.this.O();
                if (a.this.H()) {
                    a.this.M();
                    a.this.f3492k = 0;
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
        public boolean f3495c;

        public c(d dVar, CallableC0032a callableC0032a) {
            this.a = dVar;
            this.b = dVar.f3499e ? null : new boolean[a.this.f3488g];
        }

        public void a() throws IOException {
            a.d(a.this, this, false);
        }

        public File b(int i2) throws IOException {
            File file;
            synchronized (a.this) {
                if (this.a.f3500f == this) {
                    if (!this.a.f3499e) {
                        this.b[i2] = true;
                    }
                    file = this.a.f3498d[i2];
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
        public File[] f3497c;

        /* renamed from: d  reason: collision with root package name */
        public File[] f3498d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f3499e;

        /* renamed from: f  reason: collision with root package name */
        public c f3500f;

        /* renamed from: g  reason: collision with root package name */
        public long f3501g;

        public d(String str, CallableC0032a callableC0032a) {
            this.a = str;
            int i2 = a.this.f3488g;
            this.b = new long[i2];
            this.f3497c = new File[i2];
            this.f3498d = new File[i2];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i3 = 0; i3 < a.this.f3488g; i3++) {
                sb.append(i3);
                this.f3497c[i3] = new File(a.this.a, sb.toString());
                sb.append(".tmp");
                this.f3498d[i3] = new File(a.this.a, sb.toString());
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
        this.f3486e = i2;
        this.b = new File(file, "journal");
        this.f3484c = new File(file, "journal.tmp");
        this.f3485d = new File(file, "journal.bkp");
        this.f3488g = i3;
        this.f3487f = j2;
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
            if (dVar.f3500f == cVar) {
                if (z && !dVar.f3499e) {
                    for (int i2 = 0; i2 < aVar.f3488g; i2++) {
                        if (cVar.b[i2]) {
                            if (!dVar.f3498d[i2].exists()) {
                                cVar.a();
                                return;
                            }
                        } else {
                            cVar.a();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                        }
                    }
                }
                for (int i3 = 0; i3 < aVar.f3488g; i3++) {
                    File file = dVar.f3498d[i3];
                    if (z) {
                        if (file.exists()) {
                            File file2 = dVar.f3497c[i3];
                            file.renameTo(file2);
                            long j2 = dVar.b[i3];
                            long length = file2.length();
                            dVar.b[i3] = length;
                            aVar.f3489h = (aVar.f3489h - j2) + length;
                        }
                    } else {
                        g(file);
                    }
                }
                aVar.f3492k++;
                dVar.f3500f = null;
                if (dVar.f3499e | z) {
                    dVar.f3499e = true;
                    aVar.f3490i.append((CharSequence) i.m0.c.e.v);
                    aVar.f3490i.append(' ');
                    aVar.f3490i.append((CharSequence) dVar.a);
                    aVar.f3490i.append((CharSequence) dVar.a());
                    aVar.f3490i.append('\n');
                    if (z) {
                        long j3 = aVar.f3493l;
                        aVar.f3493l = 1 + j3;
                        dVar.f3501g = j3;
                    }
                } else {
                    aVar.f3491j.remove(dVar.a);
                    aVar.f3490i.append((CharSequence) i.m0.c.e.x);
                    aVar.f3490i.append(' ');
                    aVar.f3490i.append((CharSequence) dVar.a);
                    aVar.f3490i.append('\n');
                }
                F(aVar.f3490i);
                if (aVar.f3489h > aVar.f3487f || aVar.H()) {
                    aVar.f3494m.submit(aVar.n);
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
            d dVar = this.f3491j.get(str);
            if (dVar == null) {
                dVar = new d(str, null);
                this.f3491j.put(str, dVar);
            } else if (dVar.f3500f != null) {
                return null;
            }
            c cVar = new c(dVar, null);
            dVar.f3500f = cVar;
            this.f3490i.append((CharSequence) i.m0.c.e.w);
            this.f3490i.append(' ');
            this.f3490i.append((CharSequence) str);
            this.f3490i.append('\n');
            F(this.f3490i);
            return cVar;
        }
    }

    public synchronized e G(String str) throws IOException {
        e();
        d dVar = this.f3491j.get(str);
        if (dVar == null) {
            return null;
        }
        if (dVar.f3499e) {
            for (File file : dVar.f3497c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.f3492k++;
            this.f3490i.append((CharSequence) i.m0.c.e.y);
            this.f3490i.append(' ');
            this.f3490i.append((CharSequence) str);
            this.f3490i.append('\n');
            if (H()) {
                this.f3494m.submit(this.n);
            }
            return new e(str, dVar.f3501g, dVar.f3497c, dVar.b, null);
        }
        return null;
    }

    public final boolean H() {
        int i2 = this.f3492k;
        return i2 >= 2000 && i2 >= this.f3491j.size();
    }

    public final void J() throws IOException {
        g(this.f3484c);
        Iterator<d> it = this.f3491j.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i2 = 0;
            if (next.f3500f == null) {
                while (i2 < this.f3488g) {
                    this.f3489h += next.b[i2];
                    i2++;
                }
            } else {
                next.f3500f = null;
                while (i2 < this.f3488g) {
                    g(next.f3497c[i2]);
                    g(next.f3498d[i2]);
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
            if (!"libcore.io.DiskLruCache".equals(e2) || !UMRTLog.RTLOG_ENABLE.equals(e3) || !Integer.toString(this.f3486e).equals(e4) || !Integer.toString(this.f3488g).equals(e5) || !"".equals(e6)) {
                throw new IOException("unexpected journal header: [" + e2 + ", " + e3 + ", " + e5 + ", " + e6 + "]");
            }
            int i2 = 0;
            while (true) {
                try {
                    L(bVar.e());
                    i2++;
                } catch (EOFException unused) {
                    this.f3492k = i2 - this.f3491j.size();
                    if (bVar.f3505e == -1) {
                        M();
                    } else {
                        this.f3490i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), f.d.a.l.c.a));
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
                    this.f3491j.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i2, indexOf2);
            }
            d dVar = this.f3491j.get(substring);
            if (dVar == null) {
                dVar = new d(substring, null);
                this.f3491j.put(substring, dVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith(i.m0.c.e.v)) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar.f3499e = true;
                dVar.f3500f = null;
                if (split.length == a.this.f3488g) {
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
                dVar.f3500f = new c(dVar, null);
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
        if (this.f3490i != null) {
            f(this.f3490i);
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3484c), f.d.a.l.c.a));
        bufferedWriter.write("libcore.io.DiskLruCache");
        bufferedWriter.write(g.a);
        bufferedWriter.write(UMRTLog.RTLOG_ENABLE);
        bufferedWriter.write(g.a);
        bufferedWriter.write(Integer.toString(this.f3486e));
        bufferedWriter.write(g.a);
        bufferedWriter.write(Integer.toString(this.f3488g));
        bufferedWriter.write(g.a);
        bufferedWriter.write(g.a);
        for (d dVar : this.f3491j.values()) {
            if (dVar.f3500f != null) {
                bufferedWriter.write("DIRTY " + dVar.a + '\n');
            } else {
                bufferedWriter.write("CLEAN " + dVar.a + dVar.a() + '\n');
            }
        }
        f(bufferedWriter);
        if (this.b.exists()) {
            N(this.b, this.f3485d, true);
        }
        N(this.f3484c, this.b, false);
        this.f3485d.delete();
        this.f3490i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), f.d.a.l.c.a));
    }

    public final void O() throws IOException {
        while (this.f3489h > this.f3487f) {
            String key = this.f3491j.entrySet().iterator().next().getKey();
            synchronized (this) {
                e();
                d dVar = this.f3491j.get(key);
                if (dVar != null && dVar.f3500f == null) {
                    for (int i2 = 0; i2 < this.f3488g; i2++) {
                        File file = dVar.f3497c[i2];
                        if (file.exists() && !file.delete()) {
                            throw new IOException("failed to delete " + file);
                        }
                        this.f3489h -= dVar.b[i2];
                        dVar.b[i2] = 0;
                    }
                    this.f3492k++;
                    this.f3490i.append((CharSequence) i.m0.c.e.x);
                    this.f3490i.append(' ');
                    this.f3490i.append((CharSequence) key);
                    this.f3490i.append('\n');
                    this.f3491j.remove(key);
                    if (H()) {
                        this.f3494m.submit(this.n);
                    }
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f3490i == null) {
            return;
        }
        Iterator it = new ArrayList(this.f3491j.values()).iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (dVar.f3500f != null) {
                dVar.f3500f.a();
            }
        }
        O();
        f(this.f3490i);
        this.f3490i = null;
    }

    public final void e() {
        if (this.f3490i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }
}
