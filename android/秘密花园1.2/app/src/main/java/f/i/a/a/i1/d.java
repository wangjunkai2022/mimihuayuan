package f.i.a.a.i1;

/* compiled from: SimpleSubtitleOutputBuffer.java */
/* loaded from: classes.dex */
public final class d extends j {

    /* renamed from: e  reason: collision with root package name */
    public final c f5313e;

    public d(c cVar) {
        this.f5313e = cVar;
    }

    @Override // f.i.a.a.y0.f
    public final void i() {
        c cVar = this.f5313e;
        synchronized (cVar.b) {
            this.a = 0;
            this.f5315c = null;
            O[] oArr = cVar.f6036f;
            int i2 = cVar.f6038h;
            cVar.f6038h = i2 + 1;
            oArr[i2] = this;
            cVar.h();
        }
    }
}
