package com.comeback.data.ui.movieCloud;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.base.BaseVRefreshActivity;
import com.comeback.data.ui.movieCloud.VideoSearchActivity;
import com.comeback.data.ui.movieCloud.adapter.AMJItemAdapter;
import com.comeback.data.ui.movieCloud.adapter.XXItemAdapter;
import com.comeback.data.ui.movieCloud.bean.AMJList;
import com.comeback.data.ui.movieCloud.bean.XXList;
import com.comeback.secret.garden.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.a.a.a.l.i;
import f.e.a.j.f0.f;
import f.j.a.a.l.d;

/* loaded from: classes.dex */
public class VideoSearchActivity extends BaseVRefreshActivity {

    /* renamed from: e  reason: collision with root package name */
    public XXList f1734e;
    @BindView
    public EditText etSearch;

    /* renamed from: f  reason: collision with root package name */
    public String f1735f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1736g;
    @BindView
    public RecyclerView rvHot;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<XXList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1737f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1737f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            XXList xXList = (XXList) obj;
            if (this.f1737f == 1) {
                VideoSearchActivity videoSearchActivity = VideoSearchActivity.this;
                if (!videoSearchActivity.f1736g) {
                    videoSearchActivity.r();
                    VideoSearchActivity.this.f1736g = true;
                    VideoSearchActivity.u(VideoSearchActivity.this, xXList);
                }
            }
            VideoSearchActivity.this.f1736g = false;
            VideoSearchActivity.u(VideoSearchActivity.this, xXList);
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshActivity.a<AMJList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1739f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f1739f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            AMJList aMJList = (AMJList) obj;
            if (this.f1739f == 1) {
                VideoSearchActivity videoSearchActivity = VideoSearchActivity.this;
                if (!videoSearchActivity.f1736g) {
                    videoSearchActivity.r();
                    VideoSearchActivity.this.f1736g = true;
                    VideoSearchActivity.v(VideoSearchActivity.this, aMJList);
                }
            }
            VideoSearchActivity.this.f1736g = false;
            VideoSearchActivity.v(VideoSearchActivity.this, aMJList);
        }
    }

    /* loaded from: classes.dex */
    public class c implements TextWatcher {
        public c() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            if (TextUtils.isEmpty(charSequence.toString().trim())) {
                VideoSearchActivity videoSearchActivity = VideoSearchActivity.this;
                if (videoSearchActivity.f1734e != null) {
                    videoSearchActivity.z(true);
                }
            }
        }
    }

    public static void A(Context context) {
        f.b.a.a.a.u(context, VideoSearchActivity.class);
    }

    public static void u(VideoSearchActivity videoSearchActivity, XXList xXList) {
        if (videoSearchActivity != null) {
            videoSearchActivity.f119d.b(new XXItemAdapter(videoSearchActivity, xXList.getData().getVodrows(), new i()));
            return;
        }
        throw null;
    }

    public static void v(VideoSearchActivity videoSearchActivity, AMJList aMJList) {
        if (videoSearchActivity != null) {
            videoSearchActivity.f119d.b(new AMJItemAdapter(videoSearchActivity, aMJList.getData(), new i()));
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_movie_cloud;
    }

    @Override // com.comeback.data.base.BaseVRefreshActivity, com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.refreshLayout.a0 = new d() { // from class: f.e.a.j.f0.d
            @Override // f.j.a.a.l.d
            public final void b(f.j.a.a.f.i iVar) {
                VideoSearchActivity.this.w(iVar);
            }
        };
        z(true);
        this.refreshLayout.v(new f.j.a.a.l.b() { // from class: f.e.a.j.f0.e
            @Override // f.j.a.a.l.b
            public final void d(f.j.a.a.f.i iVar) {
                VideoSearchActivity.this.x(iVar);
            }
        });
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        this.mRvList.setRecycledViewPool(recycledViewPool);
        recycledViewPool.setMaxRecycledViews(0, 10);
        VirtualLayoutManager virtualLayoutManager = new VirtualLayoutManager(this);
        this.mRvList.setLayoutManager(virtualLayoutManager);
        DelegateAdapter delegateAdapter = new DelegateAdapter(virtualLayoutManager, false);
        this.f119d = delegateAdapter;
        this.mRvList.setAdapter(delegateAdapter);
        k(f.e.a.j.f0.h.b.a().a(), new f(this));
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.f0.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return VideoSearchActivity.this.y(textView, i2, keyEvent);
            }
        });
        this.etSearch.addTextChangedListener(new c());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        h.c0(this);
        z(false);
        k(f.e.a.j.f0.h.b.a().b(i2, this.f1735f), new a(i2));
        k(f.e.a.j.f0.h.b.a().d(20, i2, this.f1735f), new b(i2));
    }

    public /* synthetic */ void w(f.j.a.a.f.i iVar) {
        this.b = 0;
        int i2 = 0 + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ void x(f.j.a.a.f.i iVar) {
        int i2 = this.b + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ boolean y(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 3) {
            return false;
        }
        String trim = this.etSearch.getText().toString().trim();
        this.f1735f = trim;
        if (TextUtils.isEmpty(trim)) {
            return true;
        }
        this.refreshLayout.h();
        return true;
    }

    public final void z(boolean z) {
        int i2 = 0;
        this.rvHot.setVisibility(z ? 0 : 8);
        SmartRefreshLayout smartRefreshLayout = this.refreshLayout;
        if (z) {
            i2 = 8;
        }
        smartRefreshLayout.setVisibility(i2);
    }
}
