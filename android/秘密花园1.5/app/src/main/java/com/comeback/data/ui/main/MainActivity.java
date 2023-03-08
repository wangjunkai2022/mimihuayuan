package com.comeback.data.ui.main;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.PointerIconCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.H5.H5Activity;
import com.comeback.data.ui.aimeiju.AMJLauncherActivity;
import com.comeback.data.ui.avbobo.AvboboLaunchActivity;
import com.comeback.data.ui.ba.BaLauncherActivity;
import com.comeback.data.ui.bale.BaleActivity;
import com.comeback.data.ui.cm.CmActivity;
import com.comeback.data.ui.cucumber.CucumberLauncherActivity;
import com.comeback.data.ui.dn.DNActivity;
import com.comeback.data.ui.ds.DsActivity;
import com.comeback.data.ui.fengliu.FengliuActivity;
import com.comeback.data.ui.fengliu.MyFengliuActivity;
import com.comeback.data.ui.fruitPie.FruitActivity;
import com.comeback.data.ui.fulao2.FuLao2Launch2Activity;
import com.comeback.data.ui.gdian.GDianActivity;
import com.comeback.data.ui.gkj.GkjLauncherActivity;
import com.comeback.data.ui.hg.HGBrowseActivity;
import com.comeback.data.ui.hgdd.HGDDBrowseActivity;
import com.comeback.data.ui.hgl.MyLiveActivity;
import com.comeback.data.ui.hm.HmLauncherActivity;
import com.comeback.data.ui.ins.InsLaunchActivity;
import com.comeback.data.ui.iqiyi.IQYLaunchActivity;
import com.comeback.data.ui.isiyu.IsiyuLaunchActivity;
import com.comeback.data.ui.jav.JavActivity;
import com.comeback.data.ui.jhlf.JHLFActivity;
import com.comeback.data.ui.km.KmLaunchActivity;
import com.comeback.data.ui.km.PicActivity;
import com.comeback.data.ui.km2.Km2LaunchActivity;
import com.comeback.data.ui.live.LiveChanelActivity;
import com.comeback.data.ui.lutube.LutubeLaunchActivity;
import com.comeback.data.ui.main.MainActivity;
import com.comeback.data.ui.main.adapter.MainAdapter;
import com.comeback.data.ui.main.bean.ConfigBean;
import com.comeback.data.ui.main.bean.HomeBean;
import com.comeback.data.ui.main.bean.InstallTask;
import com.comeback.data.ui.maomi.MmLaunchActivity;
import com.comeback.data.ui.md.MdActivity;
import com.comeback.data.ui.mimei.MimeiLauncherActivity;
import com.comeback.data.ui.movieCloud.VideoSearchActivity;
import com.comeback.data.ui.nana.NanaLaunchActivity;
import com.comeback.data.ui.senlin.ZYBrowseActivity;
import com.comeback.data.ui.sex8.ui.LouFengActivity;
import com.comeback.data.ui.sex8.ui.YXActivity;
import com.comeback.data.ui.slf.SlfLauncherActivity;
import com.comeback.data.ui.tomato.TomatoLaunchActivity;
import com.comeback.data.ui.tv91.Tv91LauncherActivity;
import com.comeback.data.ui.xhl.XHLBrowseActivity;
import com.comeback.data.ui.xiami.XMLauncherActivity;
import com.comeback.data.ui.xiuxiu.XXBrowseActivity;
import com.comeback.data.ui.xj.XJLaunchActivity;
import com.comeback.data.widget.MarqueeTextView;
import com.comeback.data.widget.viewpager.PageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MainActivity extends BaseActivity implements Toolbar.OnMenuItemClickListener {
    @BindView
    public PageView banner;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1559c;
    @BindView
    public ImageView iv_bg;
    @BindView
    public LinearLayout llNotice;
    @BindView
    public RecyclerView rvList;
    @BindView
    public Toolbar toolbar;
    @BindView
    public MarqueeTextView tvNotice;
    @BindView
    public TextView tv_version;
    public int[][] b = {new int[]{16, 20, 21, 7}, new int[]{4, 1, 10, 15}, new int[]{5, 2, 14, 23}, new int[]{8, 7, 25, 3}, new int[]{12, 17, 26, 16}, new int[]{9, 23, 24, 4}, new int[]{15, 3, 5, 17}};

    /* renamed from: d  reason: collision with root package name */
    public MainAdapter.a f1560d = new MainAdapter.a() { // from class: f.e.a.j.c0.d
        @Override // com.comeback.data.ui.main.adapter.MainAdapter.a
        public final void a(HomeBean homeBean) {
            MainActivity.this.p(homeBean);
        }
    };

    /* loaded from: classes.dex */
    public class a implements DialogInterface.OnClickListener {
        public final /* synthetic */ InstallTask a;

        public a(InstallTask installTask) {
            this.a = installTask;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            MainActivity.this.o(this.a.getUrl());
            MainActivity.this.f1559c = true;
        }
    }

    /* loaded from: classes.dex */
    public class b implements DialogInterface.OnClickListener {
        public b(MainActivity mainActivity) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
        }
    }

    /* loaded from: classes.dex */
    public class c implements DialogInterface.OnClickListener {
        public final /* synthetic */ InstallTask a;

        public c(InstallTask installTask) {
            this.a = installTask;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
            MainActivity.this.o(this.a.getUrl());
            MainActivity.this.f1559c = true;
        }
    }

    /* loaded from: classes.dex */
    public class d implements DialogInterface.OnClickListener {
        public d(MainActivity mainActivity) {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            dialogInterface.dismiss();
        }
    }

    public static void l(MainActivity mainActivity, String str) {
        if (mainActivity != null) {
            f.a();
            AppActivity.p(mainActivity, str, true);
            return;
        }
        throw null;
    }

    public static void u(Context context) {
        f.b.a.a.a.u(context, MainActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_main;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01cb  */
    @Override // com.comeback.data.base.BaseActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void e() {
        /*
            Method dump skipped, instructions count: 855
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.comeback.data.ui.main.MainActivity.e():void");
    }

    public final void n() {
        ConfigBean configBean = App.f104e;
        if (configBean != null && !TextUtils.isEmpty(configBean.getShareText2())) {
            ((ClipboardManager) getSystemService(e.a("VA4KFAkcWEEX"))).setPrimaryClip(ClipData.newPlainText(e.a("ewMBAQc="), App.f104e.getShareText()));
            h.n1(e.a("09rojNbO3K/Dg6nnnc7ujr/Uhez7lrOsnNq4gsfBhuWMh+vij8mS1Mj/0cLFjP/g0u3ogfvU"));
            return;
        }
        ClipboardManager clipboardManager = (ClipboardManager) getSystemService(e.a("VA4KFAkcWEEX"));
        String k2 = h.k(App.f104e.getLanzou());
        ConfigBean configBean2 = App.f104e;
        if (configBean2 != null && !TextUtils.isEmpty(configBean2.getIosShare())) {
            StringBuilder o = f.b.a.a.a.o(k2);
            o.append(App.f104e.getIosShareText());
            k2 = o.toString();
        }
        clipboardManager.setPrimaryClip(ClipData.newPlainText(e.a("ewMBAQc="), k2));
        h.n1(e.a("09rojNbO3K/Dg6nnnc7ujr/Uhez7lrOsnNq4gsfBhuWMh+vij8mS1Mj/0cLFjP/g0u3ogfvU"));
    }

    public final void o(String str) {
        try {
            startActivity(new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(str)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.navigation_collect) {
            CollectActivity.l(this);
            return true;
        } else if (itemId == R.id.navigation_down) {
            DownloadActivity.q(this);
            return true;
        } else if (itemId != R.id.navigation_question) {
            return false;
        } else {
            QuestionActivity.l(this);
            return true;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f1559c) {
            r();
        }
    }

    public /* synthetic */ void p(HomeBean homeBean) {
        if (homeBean.getTask() != null && !h.r(homeBean.getTask().getPackageName())) {
            if (homeBean.getTask().getLockType() == -1) {
                s(homeBean.getTask());
                return;
            } else {
                t(homeBean.getTask());
                return;
            }
        }
        int type = homeBean.getType();
        if (type == 90) {
            H5Activity.m(this, f.e.a.k.b.o0, -2);
        } else if (type == 100) {
            o(homeBean.getUrl());
        } else if (type != 101) {
            switch (type) {
                case 1:
                    MyLiveActivity.m(this);
                    return;
                case 2:
                    VideoSearchActivity.A(this);
                    return;
                case 3:
                    KmLaunchActivity.n(this);
                    return;
                case 4:
                    MmLaunchActivity.o(this);
                    return;
                case 5:
                    XJLaunchActivity.n(this);
                    return;
                case 6:
                    DNActivity.l(this);
                    return;
                case 7:
                    LouFengActivity.n(this);
                    return;
                case 8:
                    Tv91LauncherActivity.l(this);
                    return;
                case 9:
                    LutubeLaunchActivity.q(this);
                    return;
                case 10:
                    IQYLaunchActivity.m(this);
                    return;
                case 11:
                    GkjLauncherActivity.l(this);
                    return;
                case 12:
                    FuLao2Launch2Activity.m(this);
                    return;
                case 13:
                    HGBrowseActivity.l(this);
                    return;
                case 14:
                    SlfLauncherActivity.l(this);
                    return;
                case 15:
                    XMLauncherActivity.l(this);
                    return;
                case 16:
                    CucumberLauncherActivity.o(this);
                    return;
                case 17:
                    MyFengliuActivity.u(this);
                    return;
                case 18:
                    n();
                    return;
                case 19:
                    IsiyuLaunchActivity.l(this);
                    return;
                case 20:
                    H5Activity.l(this, e.a("XxYXFBhJFhweHwNeSFpNCFgPTBIEFxYCXQ5AChQ="));
                    return;
                case 21:
                    Km2LaunchActivity.n(this);
                    return;
                case 22:
                    BaLauncherActivity.m(this);
                    return;
                case 23:
                    XHLBrowseActivity.l(this);
                    return;
                case 24:
                    PicActivity.n(this);
                    return;
                case 25:
                    H5Activity.m(this, e.a("XxYXFFFcFlcAC1xVVhIaERg="), -2);
                    return;
                case 26:
                    DsActivity.m(this);
                    return;
                case 27:
                    BaleActivity.m(this);
                    return;
                case 28:
                    AvboboLaunchActivity.l(this);
                    return;
                case 29:
                    YXActivity.n(this);
                    return;
                case 30:
                    MimeiLauncherActivity.q(this);
                    return;
                case 31:
                    XXBrowseActivity.m(this);
                    return;
                case 32:
                    LiveChanelActivity.u(this);
                    return;
                case 33:
                    CmActivity.m(this);
                    return;
                case 34:
                    HGDDBrowseActivity.m(this);
                    return;
                case 35:
                    NanaLaunchActivity.q(this);
                    return;
                case 36:
                    CucumberLauncherActivity.p(this);
                    return;
                case 37:
                    H5Activity.l(this, f.e.a.k.b.f0);
                    return;
                case 38:
                    JavActivity.m(this);
                    return;
                case 39:
                    AMJLauncherActivity.n(this);
                    return;
                case 40:
                    JHLFActivity.n(this);
                    return;
                case 41:
                    TomatoLaunchActivity.l(this);
                    return;
                case 42:
                    AppActivity.o(this, homeBean.getUrl());
                    return;
                case 43:
                    ZYBrowseActivity.l(this);
                    return;
                case 44:
                    HmLauncherActivity.m(this);
                    return;
                case 45:
                    MdActivity.m(this);
                    return;
                case 46:
                    Km2LaunchActivity.o(this);
                    return;
                case 47:
                    InsLaunchActivity.o(this);
                    return;
                case 48:
                    MdActivity.n(this);
                    return;
                case 49:
                    GDianActivity.m(this);
                    return;
                case 50:
                    FengliuActivity.w(this);
                    return;
                case 51:
                    FruitActivity.l(this);
                    return;
                default:
                    switch (type) {
                        case PointerIconCompat.TYPE_CONTEXT_MENU /* 1001 */:
                            CollectActivity.l(this);
                            return;
                        case PointerIconCompat.TYPE_HAND /* 1002 */:
                            DownloadActivity.q(this);
                            return;
                        case PointerIconCompat.TYPE_HELP /* 1003 */:
                            QuestionActivity.l(this);
                            return;
                        default:
                            return;
                    }
            }
        } else {
            H5Activity.l(this, homeBean.getUrl());
        }
    }

    public /* synthetic */ void q(f.e.a.g.a aVar) {
        o(aVar.getId());
    }

    public final void r() {
        InstallTask task;
        MainAdapter mainAdapter = new MainAdapter(this);
        this.rvList.setLayoutManager(new GridLayoutManager(this, 5));
        this.rvList.setAdapter(mainAdapter);
        mainAdapter.f1579d = this.f1560d;
        ArrayList arrayList = new ArrayList();
        List<HomeBean> arrayList2 = new ArrayList<>();
        ConfigBean configBean = App.f104e;
        if (configBean != null && configBean.getExtra() != null) {
            arrayList2 = App.f104e.getExtra();
        }
        arrayList.add(new HomeBean(e.a("3+P5gfv73qjHgKbK"), R.mipmap.icon_launcher, 1, e.a("0PnXgvne0bLpg6Tvl9bvj4rChePplKO3")));
        arrayList.add(new HomeBean(e.a("3sT6jP760ZT1j5b2"), R.mipmap.launcher_xj, 5, e.a("x/3u6IzvptrV/w==")));
        arrayList.add(new HomeBean(e.a("0ej1jfPH3LzDgb3v"), R.mipmap.launcher_dytb, 8, e.a("09rwgtjb3IHog6/anc7EjL7l")));
        arrayList.add(new HomeBean(e.a("3tjYjNr1bWU="), R.mipmap.launcher_mdtv, 45, ""));
        arrayList.add(new HomeBean(e.a("DlM3Mg=="), R.mipmap.launcher_91tv, 48, ""));
        arrayList.add(new HomeBean(e.a("excXEQkW"), R.mipmap.launcher_lutube, 9, e.a("3+Lig+L/3q/4gb3gl9bvjIzthuHTlouolv2JgtzNhOKw")));
        arrayList.add(new HomeBean(e.a("cRcPBQRB"), R.mipmap.launcher_fl2, 12, e.a("0vLPjMTH3q/4g5D9nNDljov9htj0mqWzm8C1gOzCheK8hOrS")));
        arrayList.add(new HomeBean(e.a("fiwwg8/N3L/J"), R.mipmap.launcher_ins, 47, ""));
        arrayList.add(new HomeBean(e.a("cIvY+oPVr9rT3Q=="), R.mipmap.launcher_gdian, 49, ""));
        arrayList.add(new HomeBean(e.a("0dLXgvXv34fN"), R.mipmap.launcher_pie, 51, ""));
        arrayList.add(new HomeBean(e.a("3+jOgNLj0ZT1j5b2"), R.mipmap.launcher_bale, 27, e.a("0NzHgeT437nmgZzYkMzijYbghdPQlrOTlPywBgga")));
        arrayList.add(new HomeBean(e.a("3+/qjOXg0ZT1j5b2"), R.mipmap.launcher_cm, 33, e.a("0NzHgeT437nmgZzYkMzijYbghdPQlrOTlPywBgga")));
        arrayList.add(new HomeBean(e.a("0O7IgfnZ"), R.mipmap.launcher_mm, 4, e.a("0szmg//E3pX8g7zOn87djrvYjNjnm7mylO+4geTqhMOEh83+CgNJ")));
        arrayList.add(new HomeBean(e.a("fQMVICk="), R.mipmap.launcher_jav, 38, e.a("0MXugcbj3qbZg7vQnvr/jIPA")));
        arrayList.add(new HomeBean(e.a("3+P5gfv735bPg7PD"), R.mipmap.icon_launcher, 40, e.a("0ufLjejb35bPg7PDkOv5jqfq")));
        arrayList.add(new HomeBean(e.a("0tzNgvb835bPg7PD"), R.mipmap.launcher_wx, 7, e.a("0s3hgcTt3IPCgKnCkNX6grDuhe3Vlp+Klsuk")));
        arrayList.add(new HomeBean(e.a("39fngtHj3pjq"), R.mipmap.launcher_lnkl, 43, e.a("39Tmg9HU3YvDg5vrn/DnjorTi8Ptm4y3ldykiMX0")));
        arrayList.add(new HomeBean(e.a("393Ugc3K34/YgaDc"), R.mipmap.launcher_mimei, 30, e.a("0NzHgeT437nmgZzYkMzijYbghdPQlrOTlPywgcTBhP+MAxMU")));
        arrayList.add(new HomeBean(e.a("3v3KgtfY3IP8jpvT"), R.mipmap.launcher_slf, 44, e.a("0NzHgeT437nmgZzYkMzijYbghdPQlrOTlPywgcTBhP+MAxMU")));
        arrayList.add(new HomeBean(e.a("0t3Ig+fY"), R.mipmap.ic_km, 3, e.a("0t3Ig+fYWEMDiYjrkMTTjor3h9nLlKO3lNi6gt3XhvCph9zi")));
        arrayList.add(new HomeBean(e.a("0fTTg+L73IzYgbjM"), R.mipmap.ic_km, 21, e.a("0t3Ig+fYWEMDiYjrkMTTjor3h9nLlKO3lNi6gt3XhvCph9zi")));
        arrayList.add(new HomeBean(e.a("0f7qge7n3IP8jpvT"), R.mipmap.launcher_youtu, 37, e.a("39Tmg9HU3YvDg5vrn/Dnjofti8vfm4y3ldykiMX0")));
        arrayList.add(new HomeBean(e.a("3vHVgvb8GXU+"), R.mipmap.launcher_yx, 29, e.a("0tzrgsjh3qn3gKjuncnTjofti8vfm4y3ldyk")));
        arrayList.add(new HomeBean(e.a("0urlgNHY"), R.drawable.ic_set_share, 18, e.a("0sfegNPv0ZbMgLTpnNPrjrjNh9/Ol4Gzl96eg8LQhMy2ivTr")));
        arrayList.add(new HomeBean(e.a("0eryg/H336fFjqPo"), R.drawable.ic_set_collet, PointerIconCompat.TYPE_CONTEXT_MENU, e.a("0sfegNPv0ZbMgLTpnNPrjrjNh9/Ol4Gzl96eg8LQhMy2ivTr")));
        arrayList.add(new HomeBean(e.a("0N7wgcbr3Yveg4vk"), R.drawable.ic_set_download, PointerIconCompat.TYPE_HAND, e.a("0sfegNPv0ZbMgLTpnNPrjrjNh9/Ol4Gzl96eg8LQhMy2ivTr")));
        arrayList.add(new HomeBean(e.a("0trbjMzy0KTdj5b/"), R.drawable.ic_set_question, PointerIconCompat.TYPE_HELP, e.a("0sfegNPv0ZbMgLTpnNPrjrjNh9/Ol4Gzl96eg8LQhMy2ivTr")));
        if (!TextUtils.isEmpty(f.e.a.k.b.d0)) {
            arrayList2.add(new HomeBean(e.a("VhIIgfv70Kj1"), R.mipmap.icon_launcher, 42, e.a("0fbVjPz83o7ig6nnntrbg4j+h9zml4Wpm9mDj8/F"), f.e.a.k.b.d0));
        }
        for (int i2 = 0; arrayList.size() > i2 && arrayList2.size() > i2; i2++) {
            arrayList.add(i2 * 5, arrayList2.get(i2));
        }
        ConfigBean configBean2 = App.f104e;
        if (configBean2 != null && (task = configBean2.getTask()) != null && !h.r(task.getPackageName())) {
            if (task.getLockType() != -1) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    HomeBean homeBean = (HomeBean) it.next();
                    if (homeBean.getType() == task.getLockType()) {
                        homeBean.setTask(task);
                    }
                }
            } else {
                try {
                    int[] iArr = this.b[(int) (((((System.currentTimeMillis() / 1000) / 60) / 60) / 24) % 7)];
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        HomeBean homeBean2 = (HomeBean) it2.next();
                        if (homeBean2.getType() == iArr[0] || homeBean2.getType() == iArr[1] || homeBean2.getType() == iArr[2] || homeBean2.getType() == iArr[3]) {
                            homeBean2.setTask(task);
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        mainAdapter.b(arrayList, mainAdapter.b.size());
    }

    public final void s(InstallTask installTask) {
        AlertDialog.Builder title = new AlertDialog.Builder(this).setTitle(e.a("0e3zg8/J"));
        title.setMessage(e.a("0t/wgeL+0JHij7X0kfbjg5Hjhsrim5q2Uw==") + installTask.getName() + e.a("F4Tq6YPwhNfO2dPz0GCGzbWE/fiPy7LbztvQ3/WO2e3fzdSM1Ojep9uAvNCf1MeDtvaE19CUl5KU9rKC6fJpjY/LisLDlbajlMKOXZzS7o200Yfc4JuEjpbpm4PDz4TGvoTPxY3knNvUxd3z+Q==")).setNeutralButton(e.a("0frtgc/a3LX+gaDP"), new d(this)).setNegativeButton(e.a("0MnogebA3J36jpfi"), new c(installTask)).create().show();
    }

    public final void t(InstallTask installTask) {
        AlertDialog.Builder title = new AlertDialog.Builder(this).setTitle(e.a("0e3zg8/J"));
        title.setMessage(e.a("0f7Pjcni0LLgj6jnkMziiLfyhsrim5q2kOalRw==") + installTask.getName() + e.a("F4Tq6YPwhNfO2dPz0GCGzbWE/fiPy7LbztvQ3/WO2e3fzdSM1Ojep9uAvNCf1MeDtvaE19CUl5KU9rKC6fI=")).setNeutralButton(e.a("09nGgfv93LX+gaDP"), new b(this)).setNegativeButton(e.a("0MnogebA3J36jpfi"), new a(installTask)).create().show();
    }
}
