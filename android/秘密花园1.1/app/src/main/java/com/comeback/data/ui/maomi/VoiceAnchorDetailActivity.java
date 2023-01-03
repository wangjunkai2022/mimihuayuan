package com.comeback.data.ui.maomi;

import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.maomi.bean.AnchorList;
import com.comeback.data.ui.maomi.fragment.VoiceDetailListFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VoiceAnchorDetailActivity extends BaseViewPagerActivity {
    public AnchorList.DataBean b;
    @BindView
    public ImageView mIvHeader;
    @BindView
    public TextView mTvTitle;

    public static void n(Context context, AnchorList.DataBean dataBean) {
        Intent intent = new Intent(context, VoiceAnchorDetailActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), dataBean);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (AnchorList.DataBean) intent.getParcelableExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_voice_anchor;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.mTvTitle.setText(this.b.getName());
        h.z0(this.b.getAvatar(), this.mIvHeader);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(VoiceDetailListFragment.o(this.b.getId(), false));
        arrayList.add(VoiceDetailListFragment.o(this.b.getId(), true));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0P3Og8T0"), e.a("3vfcg8T0")};
    }
}
