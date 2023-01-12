package com.comeback.data.ui.fruitPie.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.fruitPie.bean.AuthorBean;
import com.comeback.data.ui.fruitPie.bean.Columnist;
import com.comeback.data.ui.fruitPie.bean.IdDetail;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebView;
import f.e.a.e;
import f.e.a.j.k.b.b;
import java.util.HashMap;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class H5Fragment extends BaseFragment {
    @BindView
    public FrameLayout flPlay;

    /* renamed from: g  reason: collision with root package name */
    public int f739g;

    /* renamed from: h  reason: collision with root package name */
    public String f740h;

    /* renamed from: i  reason: collision with root package name */
    public String f741i;
    @BindView
    public ImageView ivCover;
    @BindView
    public ImageView ivHead;

    /* renamed from: j  reason: collision with root package name */
    public boolean f742j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f743k;

    /* renamed from: l  reason: collision with root package name */
    public int f744l = -1;

    /* renamed from: m  reason: collision with root package name */
    public String f745m = "";
    @BindView
    public TextView tvAuthor;
    @BindView
    public TextView tvDate;
    @BindView
    public TextView tvTitle;
    @BindView
    public WebView webView1;
    @BindView
    public WebView webView2;

    /* loaded from: classes.dex */
    public class a extends j<IdDetail> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(IdDetail idDetail) {
            H5Fragment.h(H5Fragment.this, idDetail);
        }
    }

    public static void h(H5Fragment h5Fragment, IdDetail idDetail) {
        if (h5Fragment != null) {
            NativePlayFragment.f758h = idDetail.getData().getFilm_id();
            h5Fragment.tvTitle.setText(idDetail.getData().getTitle());
            List<Columnist> columnist = idDetail.getData().getColumnist();
            if (columnist != null && columnist.size() != 0) {
                Columnist columnist2 = columnist.get(0);
                h5Fragment.f743k = false;
                h5Fragment.f744l = columnist2.getColumnist_id();
                h5Fragment.f745m = columnist2.getColumnist_name();
                h.z0(columnist2.getColumnist_img(), h5Fragment.ivHead);
                h5Fragment.tvAuthor.setText(columnist2.getColumnist_name());
                TextView textView = h5Fragment.tvDate;
                textView.setText(idDetail.getData().getShow_time() + e.a("F4XPyA==") + idDetail.getData().getDate_number() + e.a("0f78"));
            }
            List<AuthorBean> anchors = idDetail.getData().getAnchors();
            if (anchors != null && anchors.size() != 0) {
                AuthorBean authorBean = anchors.get(0);
                h5Fragment.f743k = true;
                h5Fragment.f744l = authorBean.getAnchors_id();
                h5Fragment.f745m = authorBean.getAnchors_name();
                h.z0(authorBean.getAnchors_img(), h5Fragment.ivHead);
                h5Fragment.tvAuthor.setText(authorBean.getAnchors_name());
                TextView textView2 = h5Fragment.tvDate;
                textView2.setText(idDetail.getData().getShow_time() + e.a("F4XPyA==") + idDetail.getData().getDate_number() + e.a("0f78"));
            }
            for (IdDetail.DataEntity.DetailEntity detailEntity : idDetail.getData().getDetail()) {
                if (detailEntity.getType() == 1 && !TextUtils.isEmpty(detailEntity.getContent())) {
                    String content = detailEntity.getContent();
                    if (!h5Fragment.f742j) {
                        h5Fragment.f742j = true;
                        h5Fragment.webView1.loadDataWithBaseURL("", content, e.a("QwcbEEQbTV4f"), e.a("QhYFSVM="), "");
                    } else {
                        h5Fragment.webView2.loadDataWithBaseURL("", content, e.a("QwcbEEQbTV4f"), e.a("QhYFSVM="), "");
                    }
                } else if (detailEntity.getType() == 2 && !TextUtils.isEmpty(detailEntity.getUrl())) {
                    h5Fragment.flPlay.setVisibility(0);
                    h.u0(detailEntity.getImg_url(), h5Fragment.ivCover);
                    h5Fragment.f741i = detailEntity.getUrl();
                }
            }
            return;
        }
        throw null;
    }

    public static H5Fragment i(int i2, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("XgY="), i2);
        bundle.putString(e.a("QxsTAQ=="), str);
        H5Fragment h5Fragment = new H5Fragment();
        h5Fragment.setArguments(bundle);
        return h5Fragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f739g = getArguments().getInt(e.a("XgY="));
        this.f740h = getArguments().getString(e.a("QxsTAQ=="), e.a("Bg=="));
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_pie_detail_h5;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(this.f739g, hashMap, e.a("WwsBFgoBQGwaAg=="), "WxYaFA4="), this.f740h);
        hashMap.put(e.a("QhEGFj8cUlYd"), "");
        hashMap.put(e.a("Xw8="), e.a("B1JbSQoDUA=="));
        hashMap.put(e.a("UwcVDQgWZloX"), "");
        g(b.a().c(hashMap), new a());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
