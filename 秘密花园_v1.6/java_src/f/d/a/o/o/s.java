package f.d.a.o.o;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import f.d.a.o.o.n;
import java.io.InputStream;
/* compiled from: ResourceLoader.java */
/* loaded from: classes.dex */
public class s<Data> implements n<Integer, Data> {
    public final n<Uri, Data> a;
    public final Resources b;

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static final class a implements o<Integer, AssetFileDescriptor> {
        public final Resources a;

        public a(Resources resources) {
            this.a = resources;
        }

        @Override // f.d.a.o.o.o
        public n<Integer, AssetFileDescriptor> b(r rVar) {
            return new s(this.a, rVar.c(Uri.class, AssetFileDescriptor.class));
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static class b implements o<Integer, ParcelFileDescriptor> {
        public final Resources a;

        public b(Resources resources) {
            this.a = resources;
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Integer, ParcelFileDescriptor> b(r rVar) {
            return new s(this.a, rVar.c(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static class c implements o<Integer, InputStream> {
        public final Resources a;

        public c(Resources resources) {
            this.a = resources;
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Integer, InputStream> b(r rVar) {
            return new s(this.a, rVar.c(Uri.class, InputStream.class));
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    /* compiled from: ResourceLoader.java */
    /* loaded from: classes.dex */
    public static class d implements o<Integer, Uri> {
        public final Resources a;

        public d(Resources resources) {
            this.a = resources;
        }

        @Override // f.d.a.o.o.o
        @NonNull
        public n<Integer, Uri> b(r rVar) {
            return new s(this.a, v.a);
        }

        @Override // f.d.a.o.o.o
        public void c() {
        }
    }

    public s(Resources resources, n<Uri, Data> nVar) {
        this.b = resources;
        this.a = nVar;
    }

    @Override // f.d.a.o.o.n
    public n.a a(@NonNull Integer num, int i2, int i3, @NonNull f.d.a.o.h hVar) {
        Uri uri;
        Integer num2 = num;
        try {
            uri = Uri.parse("android.resource://" + this.b.getResourcePackageName(num2.intValue()) + '/' + this.b.getResourceTypeName(num2.intValue()) + '/' + this.b.getResourceEntryName(num2.intValue()));
        } catch (Resources.NotFoundException unused) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                String str = "Received invalid resource id: " + num2;
            }
            uri = null;
        }
        if (uri == null) {
            return null;
        }
        return this.a.a(uri, i2, i3, hVar);
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull Integer num) {
        return true;
    }
}
