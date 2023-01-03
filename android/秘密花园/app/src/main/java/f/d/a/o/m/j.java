package f.d.a.o.m;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import f.d.a.f;
import f.d.a.o.e;
import f.d.a.o.m.d;
import f.d.a.o.o.g;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* compiled from: HttpUrlFetcher.java */
/* loaded from: classes.dex */
public class j implements d<InputStream> {
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    public static final b f3482g = new a();
    public final g a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final b f3483c;

    /* renamed from: d  reason: collision with root package name */
    public HttpURLConnection f3484d;

    /* renamed from: e  reason: collision with root package name */
    public InputStream f3485e;

    /* renamed from: f  reason: collision with root package name */
    public volatile boolean f3486f;

    /* compiled from: HttpUrlFetcher.java */
    /* loaded from: classes.dex */
    public static class a implements b {
    }

    /* compiled from: HttpUrlFetcher.java */
    /* loaded from: classes.dex */
    public interface b {
    }

    public j(g gVar, int i2) {
        b bVar = f3482g;
        this.a = gVar;
        this.b = i2;
        this.f3483c = bVar;
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // f.d.a.o.m.d
    public void b() {
        InputStream inputStream = this.f3485e;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f3484d;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f3484d = null;
    }

    public final InputStream c(URL url, int i2, URL url2, Map<String, String> map) throws IOException {
        if (i2 < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new e("In re-direct loop");
                    }
                } catch (URISyntaxException unused) {
                }
            }
            if (((a) this.f3483c) != null) {
                this.f3484d = (HttpURLConnection) url.openConnection();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    this.f3484d.addRequestProperty(entry.getKey(), entry.getValue());
                }
                this.f3484d.setConnectTimeout(this.b);
                this.f3484d.setReadTimeout(this.b);
                boolean z = false;
                this.f3484d.setUseCaches(false);
                this.f3484d.setDoInput(true);
                this.f3484d.setInstanceFollowRedirects(false);
                this.f3484d.connect();
                this.f3485e = this.f3484d.getInputStream();
                if (this.f3486f) {
                    return null;
                }
                int responseCode = this.f3484d.getResponseCode();
                int i3 = responseCode / 100;
                if (i3 == 2) {
                    HttpURLConnection httpURLConnection = this.f3484d;
                    if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                        this.f3485e = new f.d.a.u.b(httpURLConnection.getInputStream(), (long) httpURLConnection.getContentLength());
                    } else {
                        if (Log.isLoggable("HttpUrlFetcher", 3)) {
                            httpURLConnection.getContentEncoding();
                        }
                        this.f3485e = httpURLConnection.getInputStream();
                    }
                    return this.f3485e;
                }
                if (i3 == 3) {
                    z = true;
                }
                if (z) {
                    String headerField = this.f3484d.getHeaderField("Location");
                    if (!TextUtils.isEmpty(headerField)) {
                        URL url3 = new URL(url, headerField);
                        b();
                        return c(url3, i2 + 1, url, map);
                    }
                    throw new e("Received empty or null redirect url");
                } else if (responseCode == -1) {
                    throw new e(responseCode);
                } else {
                    throw new e(this.f3484d.getResponseMessage(), responseCode);
                }
            } else {
                throw null;
            }
        } else {
            throw new e("Too many (> 5) redirects!");
        }
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
        this.f3486f = true;
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public f.d.a.o.a e() {
        return f.d.a.o.a.REMOTE;
    }

    /* JADX INFO: finally extract failed */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:21:0x0000 */
    /* JADX DEBUG: Multi-variable search result rejected for r8v0, resolved type: f.d.a.f */
    /* JADX DEBUG: Multi-variable search result rejected for r8v1, resolved type: java.lang.String */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.String] */
    @Override // f.d.a.o.m.d
    public void f(@NonNull f fVar, @NonNull d.a<? super InputStream> aVar) {
        long b2;
        try {
            fVar = "HttpUrlFetcher";
            b2 = f.d.a.u.e.b();
            try {
                g gVar = this.a;
                if (gVar.f3652f == null) {
                    gVar.f3652f = new URL(gVar.e());
                }
                aVar.d(c(gVar.f3652f, 0, null, this.a.d()));
                if (!Log.isLoggable(fVar, 2)) {
                    return;
                }
            } catch (IOException e2) {
                Log.isLoggable(fVar, 3);
                aVar.c(e2);
                if (!Log.isLoggable(fVar, 2)) {
                    return;
                }
            }
            f.d.a.u.e.a(b2);
        } catch (Throwable th) {
            if (Log.isLoggable(fVar, 2)) {
                f.d.a.u.e.a(b2);
            }
            throw th;
        }
    }
}
