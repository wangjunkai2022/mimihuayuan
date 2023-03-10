package f.d.a.o.m;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import f.d.a.o.m.d;
import java.io.IOException;
/* compiled from: AssetPathFetcher.java */
/* loaded from: classes.dex */
public abstract class b<T> implements d<T> {
    public final String a;
    public final AssetManager b;

    /* renamed from: c  reason: collision with root package name */
    public T f3555c;

    public b(AssetManager assetManager, String str) {
        this.b = assetManager;
        this.a = str;
    }

    @Override // f.d.a.o.m.d
    public void b() {
        T t = this.f3555c;
        if (t == null) {
            return;
        }
        try {
            c(t);
        } catch (IOException unused) {
        }
    }

    public abstract void c(T t) throws IOException;

    @Override // f.d.a.o.m.d
    public void cancel() {
    }

    public abstract T d(AssetManager assetManager, String str) throws IOException;

    @Override // f.d.a.o.m.d
    @NonNull
    public f.d.a.o.a e() {
        return f.d.a.o.a.LOCAL;
    }

    @Override // f.d.a.o.m.d
    public void f(@NonNull f.d.a.f fVar, @NonNull d.a<? super T> aVar) {
        try {
            T d2 = d(this.b, this.a);
            this.f3555c = d2;
            aVar.d(d2);
        } catch (IOException e2) {
            Log.isLoggable("AssetPathFetcher", 3);
            aVar.c(e2);
        }
    }
}
