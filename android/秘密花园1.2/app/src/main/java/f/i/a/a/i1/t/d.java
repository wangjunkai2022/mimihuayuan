package f.i.a.a.i1.t;

import android.text.Layout;
import java.util.Collections;
import java.util.List;

/* compiled from: WebvttCssStyle.java */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: f  reason: collision with root package name */
    public int f5436f;

    /* renamed from: h  reason: collision with root package name */
    public int f5438h;
    public String a = "";
    public String b = "";

    /* renamed from: c  reason: collision with root package name */
    public List<String> f5433c = Collections.emptyList();

    /* renamed from: d  reason: collision with root package name */
    public String f5434d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f5435e = null;

    /* renamed from: g  reason: collision with root package name */
    public boolean f5437g = false;

    /* renamed from: i  reason: collision with root package name */
    public boolean f5439i = false;

    /* renamed from: j  reason: collision with root package name */
    public int f5440j = -1;

    /* renamed from: k  reason: collision with root package name */
    public int f5441k = -1;

    /* renamed from: l  reason: collision with root package name */
    public int f5442l = -1;

    /* renamed from: m  reason: collision with root package name */
    public int f5443m = -1;
    public int n = -1;
    public Layout.Alignment o = null;

    public static int b(int i2, String str, String str2, int i3) {
        if (str.isEmpty() || i2 == -1) {
            return i2;
        }
        if (str.equals(str2)) {
            return i2 + i3;
        }
        return -1;
    }

    public int a() {
        if (this.f5442l == -1 && this.f5443m == -1) {
            return -1;
        }
        return (this.f5442l == 1 ? 1 : 0) | (this.f5443m == 1 ? 2 : 0);
    }
}
