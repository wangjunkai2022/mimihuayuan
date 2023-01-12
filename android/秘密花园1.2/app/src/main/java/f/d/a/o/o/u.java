package f.d.a.o.o;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import androidx.annotation.NonNull;
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

    @Override // f.d.a.o.o.n
    public n.a a(@NonNull String str, int i2, int i3, @NonNull f.d.a.o.h hVar) {
        Uri fromFile;
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            fromFile = null;
        } else if (str2.charAt(0) == '/') {
            fromFile = Uri.fromFile(new File(str2));
        } else {
            Uri parse = Uri.parse(str2);
            fromFile = parse.getScheme() == null ? Uri.fromFile(new File(str2)) : parse;
        }
        if (fromFile == null || !this.a.b(fromFile)) {
            return null;
        }
        return this.a.a(fromFile, i2, i3, hVar);
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull String str) {
        return true;
    }
}
