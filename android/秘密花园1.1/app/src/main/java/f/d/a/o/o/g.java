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
    public final URL f3649c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f3650d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public String f3651e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public URL f3652f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public volatile byte[] f3653g;

    /* renamed from: h  reason: collision with root package name */
    public int f3654h;

    public g(URL url) {
        h hVar = h.a;
        c.a.a.b.g.h.s(url, "Argument must not be null");
        this.f3649c = url;
        this.f3650d = null;
        c.a.a.b.g.h.s(hVar, "Argument must not be null");
        this.b = hVar;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        if (this.f3653g == null) {
            this.f3653g = c().getBytes(f.d.a.o.f.a);
        }
        messageDigest.update(this.f3653g);
    }

    public String c() {
        String str = this.f3650d;
        if (str != null) {
            return str;
        }
        URL url = this.f3649c;
        c.a.a.b.g.h.s(url, "Argument must not be null");
        return url.toString();
    }

    public Map<String, String> d() {
        return this.b.a();
    }

    public final String e() {
        if (TextUtils.isEmpty(this.f3651e)) {
            String str = this.f3650d;
            if (TextUtils.isEmpty(str)) {
                URL url = this.f3649c;
                c.a.a.b.g.h.s(url, "Argument must not be null");
                str = url.toString();
            }
            this.f3651e = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f3651e;
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
        if (this.f3654h == 0) {
            int hashCode = c().hashCode();
            this.f3654h = hashCode;
            this.f3654h = this.b.hashCode() + (hashCode * 31);
        }
        return this.f3654h;
    }

    public String toString() {
        return c();
    }

    public g(String str) {
        h hVar = h.a;
        this.f3649c = null;
        if (!TextUtils.isEmpty(str)) {
            this.f3650d = str;
            c.a.a.b.g.h.s(hVar, "Argument must not be null");
            this.b = hVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }
}
