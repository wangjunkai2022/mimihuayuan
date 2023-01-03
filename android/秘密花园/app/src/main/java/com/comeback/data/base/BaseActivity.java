package com.comeback.data.base;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.ButterKnife;
import com.comeback.data.ui.main.UpdateActivity;
import com.comeback.data.ui.main.adapter.MainAdapter;
import com.umeng.analytics.MobclickAgent;
import f.e.a.e;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import m.j;
import m.s.a;

/* loaded from: classes.dex */
public abstract class BaseActivity extends AppCompatActivity {
    public a a = new a();

    public static boolean a(Window window, boolean z) {
        if (window == null) {
            return false;
        }
        try {
            WindowManager.LayoutParams attributes = window.getAttributes();
            Field declaredField = WindowManager.LayoutParams.class.getDeclaredField(e.a("eicqPj4sf38yIWsjOTgoNGQ2IjA+IGZxMjRrLjslLQ=="));
            Field declaredField2 = WindowManager.LayoutParams.class.getDeclaredField(e.a("WgcKHh41VVIUFQ=="));
            declaredField.setAccessible(true);
            declaredField2.setAccessible(true);
            int i2 = declaredField.getInt(null);
            int i3 = declaredField2.getInt(attributes);
            declaredField2.setInt(attributes, z ? i2 | i3 : (~i2) & i3);
            window.setAttributes(attributes);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean b(Window window, boolean z) {
        if (window == null) {
            return false;
        }
        Class<?> cls = window.getClass();
        try {
            Class<?> cls2 = Class.forName(e.a("VgwHFgQaXR0FD1EQVicKHl41CgoPHE5+EghVAB0YRydWGwwRHyNYQRILRw=="));
            int i2 = cls2.getField(e.a("cjo3Niosf38yIWs0LCs3PmQ9ISU5LH1yIS1rKjcuJg==")).getInt(cls2);
            Method method = cls.getMethod(e.a("RAcXIRMHS1I1ClUACw=="), Integer.TYPE, Integer.TYPE);
            if (z) {
                method.invoke(window, Integer.valueOf(i2), Integer.valueOf(i2));
                return true;
            }
            method.invoke(window, 0, Integer.valueOf(i2));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void f(Activity activity, boolean z) {
        View decorView = activity.getWindow().getDecorView();
        if (z) {
            decorView.setSystemUiVisibility(9216);
        } else {
            decorView.setSystemUiVisibility(1280);
        }
        b(activity.getWindow(), z);
        a(activity.getWindow(), z);
    }

    public void c(Intent intent) {
    }

    public abstract int d();

    public abstract void e();

    public void g() {
        getWindow().setFlags(1024, 1024);
    }

    public void h(@ColorInt int i2) {
        getWindow().setNavigationBarColor(i2);
    }

    public void i() {
        getWindow().getDecorView().setSystemUiVisibility(1280);
        getWindow().setStatusBarColor(0);
    }

    public void j(@ColorInt int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            getWindow().addFlags(Integer.MIN_VALUE);
            getWindow().clearFlags(67108864);
            getWindow().setStatusBarColor(i2);
            if (ColorUtils.calculateLuminance(i2) >= 0.5d) {
                b(getWindow(), true);
                a(getWindow(), true);
                getWindow().getDecorView().setSystemUiVisibility(8192);
                return;
            }
            getWindow().getDecorView().setSystemUiVisibility(0);
        }
    }

    public void k(m.e eVar, j jVar) {
        eVar.d(m.r.a.a()).b(m.l.b.a.a()).c(jVar);
        this.a.b(jVar);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(d());
        c(getIntent());
        ButterKnife.a(this);
        e();
        if (getClass().getName().equals(e.a("VA0OSggcVFYRB1cMVg4CH1ZMFg1FHlhaHUh5BhEEIghDCxUNHwo="))) {
            try {
                Field declaredField = Class.forName(getClass().getName()).getDeclaredField(e.a("RRQvDRgH"));
                declaredField.setAccessible(true);
                for (T t : ((MainAdapter) ((RecyclerView) declaredField.get(this)).getAdapter()).b) {
                    if (!TextUtils.isEmpty(t.getIconUrl()) && t.isReal()) {
                        return;
                    }
                }
                long currentTimeMillis = System.currentTimeMillis();
                f.e.a.k.j b = f.e.a.k.j.b();
                if (currentTimeMillis - b.a.getLong(e.a("UQsRFx8sTVoeAw=="), -1) > 259200000) {
                    UpdateActivity.l(this);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.a.d();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
    }
}
