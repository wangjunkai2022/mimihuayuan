package f.i.a.a.l1;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.umeng.commonsdk.debug.UMRTLog;
import f.i.a.a.l1.a0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

/* compiled from: DefaultHttpDataSource.java */
/* loaded from: classes.dex */
public class u extends h implements a0 {
    public static final Pattern t = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    public static final AtomicReference<byte[]> u = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    public final boolean f5639e;

    /* renamed from: f  reason: collision with root package name */
    public final int f5640f;

    /* renamed from: g  reason: collision with root package name */
    public final int f5641g;

    /* renamed from: h  reason: collision with root package name */
    public final String f5642h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final f.i.a.a.m1.w<String> f5643i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final a0.f f5644j;

    /* renamed from: k  reason: collision with root package name */
    public final a0.f f5645k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public p f5646l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public HttpURLConnection f5647m;
    @Nullable
    public InputStream n;
    public boolean o;
    public long p;
    public long q;
    public long r;
    public long s;

    public u(String str, @Nullable f.i.a.a.m1.w<String> wVar, int i2, int i3, boolean z, @Nullable a0.f fVar) {
        super(true);
        if (!TextUtils.isEmpty(str)) {
            this.f5642h = str;
            this.f5643i = null;
            this.f5645k = new a0.f();
            this.f5640f = i2;
            this.f5641g = i3;
            this.f5639e = z;
            this.f5644j = fVar;
            return;
        }
        throw new IllegalArgumentException();
    }

    public static URL j(URL url, String str) throws IOException {
        if (str != null) {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if ("https".equals(protocol) || "http".equals(protocol)) {
                return url2;
            }
            throw new ProtocolException(f.b.a.a.a.f("Unsupported protocol redirect: ", protocol));
        }
        throw new ProtocolException("Null location redirect");
    }

    public static void m(HttpURLConnection httpURLConnection, long j2) {
        int i2 = f.i.a.a.m1.h0.a;
        if (i2 == 19 || i2 == 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j2 == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j2 <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, new Object[0]);
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // f.i.a.a.l1.h, f.i.a.a.l1.m
    public Map<String, List<String>> a() {
        HttpURLConnection httpURLConnection = this.f5647m;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
        if (r4 != 0) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b4  */
    @Override // f.i.a.a.l1.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long b(f.i.a.a.l1.p r13) throws f.i.a.a.l1.a0.c {
        /*
            Method dump skipped, instructions count: 296
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.l1.u.b(f.i.a.a.l1.p):long");
    }

    @Override // f.i.a.a.l1.m
    public void close() throws a0.c {
        try {
            if (this.n != null) {
                HttpURLConnection httpURLConnection = this.f5647m;
                long j2 = this.q;
                if (j2 != -1) {
                    j2 -= this.s;
                }
                m(httpURLConnection, j2);
                try {
                    this.n.close();
                } catch (IOException e2) {
                    throw new a0.c(e2, this.f5646l, 3);
                }
            }
        } finally {
            this.n = null;
            i();
            if (this.o) {
                this.o = false;
                f();
            }
        }
    }

    @Override // f.i.a.a.l1.m
    @Nullable
    public Uri d() {
        HttpURLConnection httpURLConnection = this.f5647m;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    public final void i() {
        HttpURLConnection httpURLConnection = this.f5647m;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception unused) {
            }
            this.f5647m = null;
        }
    }

    public final HttpURLConnection k(p pVar) throws IOException {
        HttpURLConnection l2;
        URL url = new URL(pVar.a.toString());
        int i2 = pVar.b;
        byte[] bArr = pVar.f5603c;
        long j2 = pVar.f5605e;
        long j3 = pVar.f5606f;
        boolean b = pVar.b(1);
        boolean b2 = pVar.b(2);
        if (this.f5639e) {
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i3 <= 20) {
                    long j4 = j3;
                    long j5 = j2;
                    l2 = l(url, i2, bArr, j2, j3, b, b2, false);
                    int responseCode = l2.getResponseCode();
                    String headerField = l2.getHeaderField("Location");
                    if ((i2 == 1 || i2 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                        l2.disconnect();
                        url = j(url, headerField);
                    } else if (i2 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                        break;
                    } else {
                        l2.disconnect();
                        url = j(url, headerField);
                        i2 = 1;
                        bArr = null;
                    }
                    i3 = i4;
                    j3 = j4;
                    j2 = j5;
                } else {
                    throw new NoRouteToHostException(f.b.a.a.a.J("Too many redirects: ", i4));
                }
            }
            return l2;
        }
        return l(url, i2, bArr, j2, j3, b, b2, true);
    }

    public final HttpURLConnection l(URL url, int i2, byte[] bArr, long j2, long j3, boolean z, boolean z2, boolean z3) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f5640f);
        httpURLConnection.setReadTimeout(this.f5641g);
        a0.f fVar = this.f5644j;
        if (fVar != null) {
            for (Map.Entry<String, String> entry : fVar.a().entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry<String, String> entry2 : this.f5645k.a().entrySet()) {
            httpURLConnection.setRequestProperty(entry2.getKey(), entry2.getValue());
        }
        if (j2 != 0 || j3 != -1) {
            String str = "bytes=" + j2 + "-";
            if (j3 != -1) {
                StringBuilder o = f.b.a.a.a.o(str);
                o.append((j2 + j3) - 1);
                str = o.toString();
            }
            httpURLConnection.setRequestProperty("Range", str);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.f5642h);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        if (z2) {
            httpURLConnection.setRequestProperty("Icy-MetaData", UMRTLog.RTLOG_ENABLE);
        }
        httpURLConnection.setInstanceFollowRedirects(z3);
        httpURLConnection.setDoOutput(bArr != null);
        httpURLConnection.setRequestMethod(p.a(i2));
        if (bArr != null) {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    public final void n() throws IOException {
        if (this.r == this.p) {
            return;
        }
        byte[] andSet = u.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[4096];
        }
        while (true) {
            long j2 = this.r;
            long j3 = this.p;
            if (j2 != j3) {
                int read = this.n.read(andSet, 0, (int) Math.min(j3 - j2, andSet.length));
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                if (read != -1) {
                    this.r += read;
                    e(read);
                } else {
                    throw new EOFException();
                }
            } else {
                u.set(andSet);
                return;
            }
        }
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws a0.c {
        try {
            n();
            if (i3 == 0) {
                return 0;
            }
            long j2 = this.q;
            if (j2 != -1) {
                long j3 = j2 - this.s;
                if (j3 != 0) {
                    i3 = (int) Math.min(i3, j3);
                }
                return -1;
            }
            int read = this.n.read(bArr, i2, i3);
            if (read == -1) {
                if (this.q == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.s += read;
            e(read);
            return read;
        } catch (IOException e2) {
            throw new a0.c(e2, this.f5646l, 2);
        }
    }
}
