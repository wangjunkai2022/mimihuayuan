package f.i.a.a.i1.r;

import android.text.Layout;
import c.a.a.b.g.h;

/* compiled from: TtmlStyle.java */
/* loaded from: classes.dex */
public final class d {
    public String a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f5418c;

    /* renamed from: d  reason: collision with root package name */
    public int f5419d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f5420e;

    /* renamed from: f  reason: collision with root package name */
    public int f5421f = -1;

    /* renamed from: g  reason: collision with root package name */
    public int f5422g = -1;

    /* renamed from: h  reason: collision with root package name */
    public int f5423h = -1;

    /* renamed from: i  reason: collision with root package name */
    public int f5424i = -1;

    /* renamed from: j  reason: collision with root package name */
    public int f5425j = -1;

    /* renamed from: k  reason: collision with root package name */
    public float f5426k;

    /* renamed from: l  reason: collision with root package name */
    public String f5427l;

    /* renamed from: m  reason: collision with root package name */
    public Layout.Alignment f5428m;

    public d a(d dVar) {
        if (dVar != null) {
            if (!this.f5418c && dVar.f5418c) {
                int i2 = dVar.b;
                h.v(true);
                this.b = i2;
                this.f5418c = true;
            }
            if (this.f5423h == -1) {
                this.f5423h = dVar.f5423h;
            }
            if (this.f5424i == -1) {
                this.f5424i = dVar.f5424i;
            }
            if (this.a == null) {
                this.a = dVar.a;
            }
            if (this.f5421f == -1) {
                this.f5421f = dVar.f5421f;
            }
            if (this.f5422g == -1) {
                this.f5422g = dVar.f5422g;
            }
            if (this.f5428m == null) {
                this.f5428m = dVar.f5428m;
            }
            if (this.f5425j == -1) {
                this.f5425j = dVar.f5425j;
                this.f5426k = dVar.f5426k;
            }
            if (!this.f5420e && dVar.f5420e) {
                this.f5419d = dVar.f5419d;
                this.f5420e = true;
            }
        }
        return this;
    }

    public int b() {
        if (this.f5423h == -1 && this.f5424i == -1) {
            return -1;
        }
        return (this.f5423h == 1 ? 1 : 0) | (this.f5424i == 1 ? 2 : 0);
    }
}
