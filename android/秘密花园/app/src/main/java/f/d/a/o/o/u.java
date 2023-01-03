package f.d.a.o.o;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import f.d.a.o.h;
import f.d.a.o.o.n;
import java.io.File;
import java.io.InputStream;

/* compiled from: StringLoader.java */
/* loaded from: classes.dex */
public class u<Data> implements n<String, Data> {
    public final n<Uri, Data> a;

    /* compiled from: StringLoader.java */
    /* loaded from: classes.dex */
    public static final class a implements o<String, AssetFileDescriptor> {
        @Override // f.d.a.o.o.o
        public n<String, AssetFileDescriptor> b(@NonNull r rVar) {
            return new u(rVar.c(Uri.class, AssetFileDescriptor.class));
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: StringLoader.java */
    /* loaded from: classes.dex */
    public static class b implements o<String, ParcelFileDescriptor> {
        @Override // f.d.a.o.o.o
        @NonNull
        public n<String, ParcelFileDescriptor> b(@NonNull r rVar) {
            return new u(rVar.c(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: StringLoader.java */
    /* loaded from: classes.dex */
    public static class c implements o<String, InputStream> {
        @Override // f.d.a.o.o.o
        @NonNull
        public n<String, InputStream> b(@NonNull r rVar) {
            return new u(rVar.c(Uri.class, InputStream.class));
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    public u(n<Uri, Data> nVar) {
        this.a = nVar;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.o.n
    public n.a a(@NonNull String str, int i2, int i3, @NonNull h hVar) {
        Uri uri;
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            uri = null;
        } else if (str2.charAt(0) == '/') {
            uri = Uri.fromFile(new File(str2));
        } else {
            Uri parse = Uri.parse(str2);
            uri = parse.getScheme() == null ? Uri.fromFile(new File(str2)) : parse;
        }
        if (uri == null || !this.a.b(uri)) {
            return null;
        }
        return this.a.a(uri, i2, i3, hVar);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // f.d.a.o.o.n
    public boolean b(@NonNull String str) {
        return true;
    }
}
