package f.d.a.o.m;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import f.d.a.f;
import f.d.a.o.a;
import f.d.a.o.m.d;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: LocalUriFetcher.java */
/* loaded from: classes.dex */
public abstract class l<T> implements d<T> {
    public final Uri a;
    public final ContentResolver b;

    /* renamed from: c  reason: collision with root package name */
    public T f3487c;

    public l(ContentResolver contentResolver, Uri uri) {
        this.b = contentResolver;
        this.a = uri;
    }

    @Override // f.d.a.o.m.d
    public void b() {
        T t = this.f3487c;
        if (t != null) {
            try {
                c(t);
            } catch (IOException unused) {
            }
        }
    }

    public abstract void c(T t) throws IOException;

    @Override // f.d.a.o.m.d
    public void cancel() {
    }

    public abstract T d(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override // f.d.a.o.m.d
    @NonNull
    public a e() {
        return a.LOCAL;
    }

    @Override // f.d.a.o.m.d
    public final void f(@NonNull f fVar, @NonNull d.a<? super T> aVar) {
        try {
            T d2 = d(this.a, this.b);
            this.f3487c = d2;
            aVar.d(d2);
        } catch (FileNotFoundException e2) {
            Log.isLoggable("LocalUriFetcher", 3);
            aVar.c(e2);
        }
    }
}
