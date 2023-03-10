package com.comeback.data.ui.ins;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.ins.adapter.Image2Adapter;
import com.comeback.data.ui.ins.adapter.Video2Adapter;
import com.comeback.data.ui.ins.bean.ImageList;
import com.comeback.data.ui.ins.bean.VideoList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.HashMap;
/* loaded from: classes.dex */
public class UserCenterActivity extends BaseRefreshActivity {
    @BindColor
    public int basic_primary_text;
    @BindColor
    public int basic_third_text;

    /* renamed from: d  reason: collision with root package name */
    public String f1154d;

    /* renamed from: e  reason: collision with root package name */
    public String f1155e;

    /* renamed from: f  reason: collision with root package name */
    public String f1156f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1157g = true;
    @BindView
    public RatioImageView ivHead;
    @BindView
    public ImageView ivImg;
    @BindView
    public ImageView ivVideo;
    @BindView
    public TextView tvName;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<ImageList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1158f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1158f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ImageList imageList = (ImageList) obj;
            if (this.f1158f == 1) {
                UserCenterActivity userCenterActivity = UserCenterActivity.this;
                userCenterActivity.f114c = userCenterActivity.l();
                UserCenterActivity userCenterActivity2 = UserCenterActivity.this;
                userCenterActivity2.mRvList.setAdapter(userCenterActivity2.f114c);
                UserCenterActivity userCenterActivity3 = UserCenterActivity.this;
                userCenterActivity3.mRvList.setLayoutManager(userCenterActivity3.m());
            }
            UserCenterActivity.this.f114c.a(imageList.getData().getResultList());
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1160f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f1160f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f1160f == 1) {
                UserCenterActivity userCenterActivity = UserCenterActivity.this;
                userCenterActivity.f114c = userCenterActivity.l();
                UserCenterActivity userCenterActivity2 = UserCenterActivity.this;
                userCenterActivity2.mRvList.setAdapter(userCenterActivity2.f114c);
                UserCenterActivity userCenterActivity3 = UserCenterActivity.this;
                userCenterActivity3.mRvList.setLayoutManager(userCenterActivity3.m());
            }
            UserCenterActivity.this.f114c.a(videoList.getData().getResultList());
        }
    }

    public static void t(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(context, UserCenterActivity.class);
        intent.putExtra(e.a("WQMOAQ=="), str);
        intent.putExtra(e.a("XgY="), str2);
        intent.putExtra(e.a("QhAP"), str3);
        intent.putExtra(e.a("XhEqCQoUXA=="), true);
        context.startActivity(intent);
    }

    public static void u(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(context, UserCenterActivity.class);
        intent.putExtra(e.a("WQMOAQ=="), str);
        intent.putExtra(e.a("XgY="), str2);
        intent.putExtra(e.a("QhAP"), str3);
        intent.putExtra(e.a("XhEqCQoUXA=="), false);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1155e = intent.getStringExtra(e.a("XgY="));
        this.f1154d = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f1156f = intent.getStringExtra(e.a("QhAP"));
        this.f1157g = intent.getBooleanExtra(e.a("XhEqCQoUXA=="), true);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ins_user;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        i();
        super.e();
        this.mRvList.setPadding(2, 0, 2, 0);
        this.tvName.setText(this.f1154d);
        h.z0(this.f1156f, this.ivHead);
        this.ivImg.setColorFilter(this.f1157g ? this.basic_primary_text : this.basic_third_text);
        this.ivVideo.setColorFilter(this.f1157g ? this.basic_third_text : this.basic_primary_text);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        if (this.f1157g) {
            return new Image2Adapter(this);
        }
        return new Video2Adapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.iv_img) {
            if (id == R.id.iv_video) {
                if (!this.f1157g) {
                    return;
                }
                this.f1157g = false;
                this.ivVideo.setColorFilter(this.basic_primary_text);
                this.ivImg.setColorFilter(this.basic_third_text);
            }
        } else if (this.f1157g) {
            return;
        } else {
            this.f1157g = true;
            this.ivImg.setColorFilter(this.basic_primary_text);
            this.ivVideo.setColorFilter(this.basic_third_text);
        }
        this.refreshLayout.h();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "RAsZAQ=="), String.valueOf(21));
        if (this.f1157g) {
            m.e<ImageList> g2 = f.e.a.j.s.e.b.a().g(this.f1155e, hashMap, f.e.a.k.b.v0);
            a aVar = new a(i2);
            g2.d(m.r.a.a()).b(m.l.b.a.a()).c(aVar);
            this.a.b(aVar);
            return;
        }
        m.e<VideoList> b2 = f.e.a.j.s.e.b.a().b(this.f1155e, hashMap, f.e.a.k.b.v0);
        b bVar = new b(i2);
        b2.d(m.r.a.a()).b(m.l.b.a.a()).c(bVar);
        this.a.b(bVar);
    }
}
