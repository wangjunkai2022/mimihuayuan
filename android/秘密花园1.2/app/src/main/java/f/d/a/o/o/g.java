package f.d.a.o.o;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: GlideUrl.java */
/* loaded from: classes.dex */
public class g implements f.d.a.o.f {
    public final h b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final URL f3724c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f3725d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public String f3726e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public URL f3727f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public volatile byte[] f3728g;

    /* renamed from: h  reason: collision with root package name */
    public int f3729h;

    public g(URL url) {
        h hVar = h.a;
        c.a.a.b.g.h.s(url, "Argument must not be null");
        this.f3724c = url;
        this.f3725d = null;
        c.a.a.b.g.h.s(hVar, "Argument must not be null");
        this.b = hVar;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        if (this.f3728g == null) {
            this.f3728g = c().getBytes(f.d.a.o.f.a);
        }
        messageDigest.update(this.f3728g);
    }

    public String c() {
        String str = this.f3725d;
        if (str != null) {
            return str;
        }
        URL url = this.f3724c;
        c.a.a.b.g.h.s(url, "Argument must not be null");
        return url.toString();
    }

    public Map<String, String> d() {
        return this.b.a();
    }

    public final String e() {
        if (TextUtils.isEmpty(this.f3726e)) {
            String str = this.f3725d;
            if (TextUtils.isEmpty(str)) {
                URL url = this.f3724c;
                c.a.a.b.g.h.s(url, "Argument must not be null");
                str = url.toString();
            }
            this.f3726e = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f3726e;
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            return c().equals(gVar.c()) && this.b.equals(gVar.b);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        if (this.f3729h == 0) {
            int hashCode = c().hashCode();
            this.f3729h = hashCode;
            this.f3729h = this.b.hashCode() + (hashCode * 31);
        }
        return this.f3729h;
    }

    public String toString() {
        return c();
    }

    public g(String str) {
        h hVar = h.a;
        this.f3724c = null;
        if (!TextUtils.isEmpty(str)) {
            this.f3725d = str;
            c.a.a.b.g.h.s(hVar, "Argument must not be null");
            this.b = hVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }
}
