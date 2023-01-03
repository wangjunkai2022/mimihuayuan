package f.e.a.k;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.comeback.data.App;
import f.e.a.e;

/* compiled from: SPHelper.java */
/* loaded from: classes.dex */
public class j {
    public static final String b = e.a("WhsiFBs=");

    /* renamed from: c  reason: collision with root package name */
    public static j f3981c = null;
    public SharedPreferences a;

    public j() {
        App app = App.b;
        TextUtils.isEmpty(b);
        this.a = app.getSharedPreferences(b, 0);
    }

    public static j b() {
        if (f3981c == null) {
            f3981c = new j();
        }
        return f3981c;
    }

    public boolean a(String str) {
        return this.a.getBoolean(str, false);
    }

    public int c(String str) {
        return this.a.getInt(str, -1);
    }

    public String d(String str) {
        return str == null ? "" : this.a.getString(str, "");
    }

    public String e(String str, String str2) {
        return str == null ? "" : this.a.getString(str, str2);
    }

    public void f(String str, boolean z) {
        if (str != null) {
            this.a.edit().putBoolean(str, z).apply();
        }
    }

    public void g(String str, int i2) {
        if (str != null) {
            this.a.edit().putInt(str, i2).apply();
        }
    }

    public void h(String str, String str2) {
        if (str != null && str2 != null) {
            this.a.edit().putString(str, str2).commit();
        }
    }
}
