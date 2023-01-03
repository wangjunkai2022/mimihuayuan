package f.i.a.a.i1.r;

import android.text.Layout;
import c.a.a.b.g.h;

/* compiled from: TtmlStyle.java */
/* loaded from: classes.dex */
public final class d {
    public String a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f5343c;

    /* renamed from: d  reason: collision with root package name */
    public int f5344d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f5345e;

    /* renamed from: f  reason: collision with root package name */
    public int f5346f = -1;

    /* renamed from: g  reason: collision with root package name */
    public int f5347g = -1;

    /* renamed from: h  reason: collision with root package name */
    public int f5348h = -1;

    /* renamed from: i  reason: collision with root package name */
    public int f5349i = -1;

    /* renamed from: j  reason: collision with root package name */
    public int f5350j = -1;

    /* renamed from: k  reason: collision with root package name */
    public float f5351k;

    /* renamed from: l  reason: collision with root package name */
    public String f5352l;

    /* renamed from: m  reason: collision with root package name */
    public Layout.Alignment f5353m;

    public d a(d dVar) {
        if (dVar != null) {
            if (!this.f5343c && dVar.f5343c) {
                int i2 = dVar.b;
                h.v(true);
                this.b = i2;
                this.f5343c = true;
            }
            if (this.f5348h == -1) {
                this.f5348h = dVar.f5348h;
            }
            if (this.f5349i == -1) {
                this.f5349i = dVar.f5349i;
            }
            if (this.a == null) {
                this.a = dVar.a;
            }
            if (this.f5346f == -1) {
                this.f5346f = dVar.f5346f;
            }
            if (this.f5347g == -1) {
                this.f5347g = dVar.f5347g;
            }
            if (this.f5353m == null) {
                this.f5353m = dVar.f5353m;
            }
            if (this.f5350j == -1) {
                this.f5350j = dVar.f5350j;
                this.f5351k = dVar.f5351k;
            }
            if (!this.f5345e && dVar.f5345e) {
                this.f5344d = dVar.f5344d;
                this.f5345e = true;
            }
        }
        return this;
    }

    public int b() {
        if (this.f5348h == -1 && this.f5349i == -1) {
            return -1;
        }
        return (this.f5348h == 1 ? 1 : 0) | (this.f5349i == 1 ? 2 : 0);
    }
}
