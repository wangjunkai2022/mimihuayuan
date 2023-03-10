package c.a.a.c;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;
import c.a.a.c.a;
/* compiled from: ResultReceiver.java */
@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();
    public final boolean a = false;
    public final Handler b = null;

    /* renamed from: c  reason: collision with root package name */
    public c.a.a.c.a f38c;

    /* compiled from: ResultReceiver.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public b[] newArray(int i2) {
            return new b[i2];
        }
    }

    /* compiled from: ResultReceiver.java */
    /* renamed from: c.a.a.c.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class BinderC0011b extends a.AbstractBinderC0009a {
        public BinderC0011b() {
        }

        @Override // c.a.a.c.a
        public void g(int i2, Bundle bundle) {
            b bVar = b.this;
            Handler handler = bVar.b;
            if (handler != null) {
                handler.post(new c(i2, bundle));
            } else {
                bVar.a(i2, bundle);
            }
        }
    }

    /* compiled from: ResultReceiver.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        public final int a;
        public final Bundle b;

        public c(int i2, Bundle bundle) {
            this.a = i2;
            this.b = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.a, this.b);
        }
    }

    public b(Parcel parcel) {
        this.f38c = a.AbstractBinderC0009a.i(parcel.readStrongBinder());
    }

    public void a(int i2, Bundle bundle) {
    }

    public void b(int i2, Bundle bundle) {
        if (this.a) {
            Handler handler = this.b;
            if (handler != null) {
                handler.post(new c(i2, bundle));
                return;
            } else {
                a(i2, bundle);
                return;
            }
        }
        c.a.a.c.a aVar = this.f38c;
        if (aVar != null) {
            try {
                aVar.g(i2, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        synchronized (this) {
            if (this.f38c == null) {
                this.f38c = new BinderC0011b();
            }
            parcel.writeStrongBinder(this.f38c.asBinder());
        }
    }
}
