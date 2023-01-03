package f.i.a.a.z0;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.Nullable;
import f.i.a.a.m1.m;
import f.i.a.a.z0.f;
import f.i.a.a.z0.i;
import f.i.a.a.z0.j;

/* compiled from: DefaultDrmSession.java */
@TargetApi(18)
/* loaded from: classes.dex */
public class b<T extends j> implements f<T> {
    public final i<T> a;
    public final m<c> b;

    /* renamed from: c  reason: collision with root package name */
    public final b<T>.HandlerC0091b f5986c;

    /* renamed from: d  reason: collision with root package name */
    public int f5987d;

    /* renamed from: e  reason: collision with root package name */
    public int f5988e;

    /* renamed from: f  reason: collision with root package name */
    public HandlerThread f5989f;

    /* renamed from: g  reason: collision with root package name */
    public b<T>.a f5990g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public T f5991h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public f.a f5992i;

    /* renamed from: j  reason: collision with root package name */
    public byte[] f5993j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public i.a f5994k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public i.b f5995l;

    /* compiled from: DefaultDrmSession.java */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes.dex */
    public class a extends Handler {
    }

    /* compiled from: DefaultDrmSession.java */
    @SuppressLint({"HandlerLeak"})
    /* renamed from: f.i.a.a.z0.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class HandlerC0091b extends Handler {
    }

    @Override // f.i.a.a.z0.f
    @Nullable
    public final T a() {
        return this.f5991h;
    }

    @Override // f.i.a.a.z0.f
    @Nullable
    public final f.a b() {
        if (this.f5987d == 1) {
            return this.f5992i;
        }
        return null;
    }

    @Override // f.i.a.a.z0.f
    public final int c() {
        return this.f5987d;
    }
}
