package f.i.a.a.i1;
/* compiled from: SimpleSubtitleOutputBuffer.java */
/* loaded from: classes.dex */
public final class d extends j {

    /* renamed from: e  reason: collision with root package name */
    public final c f5322e;

    public d(c cVar) {
        this.f5322e = cVar;
    }

    @Override // f.i.a.a.y0.f
    public final void i() {
        c cVar = this.f5322e;
        synchronized (cVar.b) {
            this.a = 0;
            this.f5324c = null;
            O[] oArr = cVar.f6045f;
            int i2 = cVar.f6047h;
            cVar.f6047h = i2 + 1;
            oArr[i2] = this;
            cVar.h();
        }
    }
}
