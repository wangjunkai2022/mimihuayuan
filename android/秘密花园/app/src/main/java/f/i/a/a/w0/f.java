package f.i.a.a.w0;

import f.i.a.a.w0.o;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {
    public final /* synthetic */ o.a a;
    public final /* synthetic */ int b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ long f5855c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ long f5856d;

    public /* synthetic */ f(o.a aVar, int i2, long j2, long j3) {
        this.a = aVar;
        this.b = i2;
        this.f5855c = j2;
        this.f5856d = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.c(this.b, this.f5855c, this.f5856d);
    }
}
