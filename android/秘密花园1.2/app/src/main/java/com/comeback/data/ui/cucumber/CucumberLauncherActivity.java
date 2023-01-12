package com.comeback.data.ui.cucumber;

import android.content.Context;
import android.text.TextUtils;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.cucumber.bean.DoMainInfo;
import com.comeback.data.ui.cucumber.fragment.MineFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.g.h.c;
import f.e.a.k.b;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class CucumberLauncherActivity extends BaseActivity {
    public static boolean b;

    /* loaded from: classes.dex */
    public class a extends j<DoMainInfo> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            h.n1(e.a("3ufug9bd36jHgKLXnc7Sg4PHjNjnm5aElcW0gefPhNamhdj4jfuv2/Pj0dflgsz+0urkgubR0Yb3gI73kODhjLXb"));
            CucumberLauncherActivity.l(CucumberLauncherActivity.this, null);
        }

        @Override // m.j
        public void f(DoMainInfo doMainInfo) {
            CucumberLauncherActivity.l(CucumberLauncherActivity.this, doMainInfo);
        }
    }

    public static void l(CucumberLauncherActivity cucumberLauncherActivity, DoMainInfo doMainInfo) {
        if (cucumberLauncherActivity != null) {
            try {
                int i2 = f.e.a.k.j.b().a.getInt(MineFragment.class.getName(), -1);
                if (i2 == -1) {
                    i2 = 0;
                }
                String[] strArr = {e.a("XxYXFBhJFhwSFl1RTkQACkcBDAlFBFZBGA=="), e.a("XxYXFBhJFhwSFl1fQEQCHFxQTRMEAVI=")};
                String[] strArr2 = {e.a("XxYXFBhJFhwSA0JJEgMCA1IBAg0YG0xaXQVbCg=="), e.a("XxYXFBhJFhwSA0JJThJQDVpQTQcEHg=="), e.a("XxYXFBhJFhwSA0JJEhkaAl0LAh0CXVpcHg==")};
                String[] strArr3 = {e.a("XxYXFBhJFhwADk0RSkQQDlwLEQtFGldVHA==")};
                String[] strArr4 = {e.a("XxYXFBhJFhwUEAJJGgsKD0IWCgFFBFZBGEldCh8="), e.a("XxYXFBhJFhwUEAJJFlNTEltMFAsZGBZaHgE=")};
                if (doMainInfo != null && doMainInfo.getData() != null && doMainInfo.getData().size() != 0) {
                    DoMainInfo.DataBean dataBean = doMainInfo.getData().get(0);
                    if (dataBean.getBackUpDomain() != null && dataBean.getBackUpDomain().size() != 0) {
                        cucumberLauncherActivity.m(dataBean.getBackUpDomain(), strArr);
                    }
                    if (dataBean.getViewVideo2() != null && dataBean.getViewVideo2().size() != 0) {
                        cucumberLauncherActivity.m(dataBean.getViewVideoM3u8(), strArr2);
                    }
                    if (dataBean.getVideoCover() != null && dataBean.getVideoCover().size() != 0) {
                        cucumberLauncherActivity.m(dataBean.getVideoCoverAddr2(), strArr3);
                    }
                    if (dataBean.getViewPicture() != null && dataBean.getViewPicture().size() != 0) {
                        cucumberLauncherActivity.m(dataBean.getViewPicture(), strArr4);
                    }
                    if (dataBean.getVideoCover() != null && dataBean.getVideoCover().size() != 0) {
                        b.P = dataBean.getVideoCover().get(0);
                    }
                }
                b.M = cucumberLauncherActivity.n(strArr, i2 % 10);
                b.N = cucumberLauncherActivity.n(strArr2, (i2 / 10) % 10);
                b.O = cucumberLauncherActivity.n(strArr3, (i2 / 100) % 10);
                b.Q = cucumberLauncherActivity.n(strArr4, (i2 / 1000) % 10);
                synchronized (c.class) {
                    c.b = null;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (b) {
                CucumberShortActivity.n(cucumberLauncherActivity);
            } else {
                CucumberActivity.l(cucumberLauncherActivity);
            }
            cucumberLauncherActivity.finish();
            return;
        }
        throw null;
    }

    public static void o(Context context) {
        b = false;
        f.b.a.a.a.u(context, CucumberLauncherActivity.class);
    }

    public static void p(Context context) {
        b = true;
        f.b.a.a.a.u(context, CucumberLauncherActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cucumber_launcher;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        int i2 = f.e.a.k.j.b().a.getInt(MineFragment.class.getName(), -1);
        if (i2 == -1) {
            i2 = 0;
        }
        b.M = n(new String[]{e.a("XxYXFBhJFhwSFl1RTkQACkcBDAlFBFZBGA=="), e.a("XxYXFBhJFhwSFl1fQEQCHFxQTRMEAVI=")}, i2 % 10);
        k(c.a().c(), new a());
    }

    public final void m(List<String> list, String[] strArr) {
        if (list == null || list.size() == 0 || strArr.length == 0) {
            return;
        }
        int length = list.size() > strArr.length ? strArr.length : list.size();
        for (int i2 = 0; i2 < length; i2++) {
            strArr[i2] = list.get(i2);
        }
    }

    public final String n(String[] strArr, int i2) {
        if (strArr.length == 0 || i2 < 0) {
            return "";
        }
        if (i2 >= strArr.length) {
            i2 = strArr.length - 1;
        }
        String str = strArr[i2];
        return TextUtils.isEmpty(str) ? n(strArr, i2 - 1) : str;
    }
}
