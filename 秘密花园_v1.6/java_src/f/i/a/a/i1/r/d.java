package f.i.a.a.i1.r;

import android.text.Layout;
import c.a.a.b.g.h;
/* compiled from: TtmlStyle.java */
/* loaded from: classes.dex */
public final class d {
    public String a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f5427c;

    /* renamed from: d  reason: collision with root package name */
    public int f5428d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f5429e;

    /* renamed from: f  reason: collision with root package name */
    public int f5430f = -1;

    /* renamed from: g  reason: collision with root package name */
    public int f5431g = -1;

    /* renamed from: h  reason: collision with root package name */
    public int f5432h = -1;

    /* renamed from: i  reason: collision with root package name */
    public int f5433i = -1;

    /* renamed from: j  reason: collision with root package name */
    public int f5434j = -1;

    /* renamed from: k  reason: collision with root package name */
    public float f5435k;

    /* renamed from: l  reason: collision with root package name */
    public String f5436l;

    /* renamed from: m  reason: collision with root package name */
    public Layout.Alignment f5437m;

    public d a(d dVar) {
        if (dVar != null) {
            if (!this.f5427c && dVar.f5427c) {
                int i2 = dVar.b;
                h.v(true);
                this.b = i2;
                this.f5427c = true;
            }
            if (this.f5432h == -1) {
                this.f5432h = dVar.f5432h;
            }
            if (this.f5433i == -1) {
                this.f5433i = dVar.f5433i;
            }
            if (this.a == null) {
                this.a = dVar.a;
            }
            if (this.f5430f == -1) {
                this.f5430f = dVar.f5430f;
            }
            if (this.f5431g == -1) {
                this.f5431g = dVar.f5431g;
            }
            if (this.f5437m == null) {
                this.f5437m = dVar.f5437m;
            }
            if (this.f5434j == -1) {
                this.f5434j = dVar.f5434j;
                this.f5435k = dVar.f5435k;
            }
            if (!this.f5429e && dVar.f5429e) {
                this.f5428d = dVar.f5428d;
                this.f5429e = true;
            }
        }
        return this;
    }

    public int b() {
        if (this.f5432h == -1 && this.f5433i == -1) {
            return -1;
        }
        return (this.f5432h == 1 ? 1 : 0) | (this.f5433i == 1 ? 2 : 0);
    }
}
