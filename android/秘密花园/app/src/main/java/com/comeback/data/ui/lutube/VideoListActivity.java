package com.comeback.data.ui.lutube;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.lutube.fragment.VideoList2Fragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VideoListActivity extends BaseViewPagerActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public int f1405c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1406d;
    @BindView
    public TextView tvTitle;

    public static void n(Context context, int i2, boolean z, String str) {
        Intent intent = new Intent(context, VideoListActivity.class);
        intent.putExtra(e.a("XgY="), i2);
        intent.putExtra(e.a("XhEiEg=="), z);
        intent.putExtra(e.a("WQMOAQ=="), str);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f1405c = intent.getIntExtra(e.a("XgY="), 0);
        this.f1406d = intent.getBooleanExtra(e.a("XhEiEg=="), true);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_lutube_video;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.tvTitle.setText(this.b);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(VideoList2Fragment.o(this.f1405c, this.f1406d ? e.a("Ww0NAw==") : e.a("RAoMFh8="), e.a("QwsOAQ==")));
        arrayList.add(VideoList2Fragment.o(this.f1405c, this.f1406d ? e.a("Ww0NAw==") : e.a("RAoMFh8="), e.a("QQsGExg=")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0f7jgv3D"), e.a("0OHOjfzb")};
    }
}
