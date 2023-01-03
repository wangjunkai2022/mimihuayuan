package com.comeback.data.ui.dn;

import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.dn.bean.UserInfo;
import com.comeback.data.ui.dn.fragment.UserCenterFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class UserActivity extends BaseViewPagerActivity {
    public UserInfo b;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<BaseFragment> f547c;
    @BindView
    public TextView mButtonCollect;
    @BindView
    public ImageView mImageThumb;
    @BindView
    public TextView mTextCollectNum;
    @BindView
    public TextView mTextFensiNum;
    @BindView
    public TextView mTextZanNum;
    @BindView
    public TextView mTvTitle;

    public static void n(Context context, UserInfo userInfo) {
        Intent intent = new Intent(context, UserActivity.class);
        intent.putExtra(e.a("XgwFCw=="), userInfo);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (UserInfo) intent.getParcelableExtra(e.a("XgwFCw=="));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_dn_user;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        i();
        super.e();
        h.A0(this.b.getAvatar(), this.mImageThumb);
        this.mTextFensiNum.setText(this.b.getFans());
        this.mTextCollectNum.setText(this.b.getFollows());
        this.mTextZanNum.setText(this.b.getPraise());
        this.mTvTitle.setText(this.b.getUser_nicename());
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.f547c = arrayList;
        arrayList.add(UserCenterFragment.n(this.b.getId(), true));
        this.f547c.add(UserCenterFragment.n(this.b.getId(), false));
        return this.f547c;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{this.b.getWorkVideos(), this.b.getLikeVideos()};
    }
}
