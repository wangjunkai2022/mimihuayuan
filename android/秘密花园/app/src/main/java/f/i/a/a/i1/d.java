package f.i.a.a.i1;

/* compiled from: SimpleSubtitleOutputBuffer.java */
/* loaded from: classes.dex */
public final class d extends j {

    /* renamed from: e  reason: collision with root package name */
    public final c f5238e;

    public d(c cVar) {
        this.f5238e = cVar;
    }

    @Override // f.i.a.a.y0.f
    public final void i() {
        c cVar = this.f5238e;
        synchronized (cVar.b) {
            this.a = 0;
            this.f5240c = null;
            O[] oArr = cVar.f5961f;
            int i2 = cVar.f5963h;
            cVar.f5963h = i2 + 1;
            oArr[i2] = this;
            cVar.h();
        }
    }
}
