package com.comeback.data.ui.fruitPie.fragment;

import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.fruitPie.bean.FilmInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.k.b.b;
import java.util.HashMap;
import m.j;
/* loaded from: classes.dex */
public class NativePlayFragment extends BaseFragment {

    /* renamed from: h  reason: collision with root package name */
    public static String f762h = "";

    /* renamed from: g  reason: collision with root package name */
    public String f763g;
    @BindView
    public ImageView ivCover;
    @BindView
    public TextView tvActor;
    @BindView
    public TextView tvDate;
    @BindView
    public TextView tvError;
    @BindView
    public TextView tvIntro;
    @BindView
    public TextView tvLong;
    @BindView
    public TextView tvLoveNum;
    @BindView
    public TextView tvScore;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends j<FilmInfo> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(FilmInfo filmInfo) {
            NativePlayFragment.h(NativePlayFragment.this, filmInfo);
        }
    }

    public static void h(NativePlayFragment nativePlayFragment, FilmInfo filmInfo) {
        if (nativePlayFragment != null) {
            FilmInfo.DataEntity dataEntity = filmInfo.getData().get(0);
            nativePlayFragment.tvTitle.setText(dataEntity.getTitle());
            TextView textView = nativePlayFragment.tvLoveNum;
            textView.setText(e.a("09//gfjy3qbZg7vQl9b5") + dataEntity.getLove_number());
            TextView textView2 = nativePlayFragment.tvScore;
            textView2.setText(e.a("3tnnjNr13qDQjpvjneLlhIv4") + dataEntity.getScore());
            TextView textView3 = nativePlayFragment.tvDate;
            textView3.setText(e.a("0u3yjMr/36TWgKj4l9b5") + dataEntity.getPublish_at());
            TextView textView4 = nativePlayFragment.tvLong;
            textView4.setText(e.a("38Xljcni36TFj6HYl9b5") + dataEntity.getMovie_time() + e.a("0urljfns"));
            TextView textView5 = nativePlayFragment.tvActor;
            textView5.setText(e.a("0d73gfrr1o/p") + dataEntity.getActor());
            nativePlayFragment.tvIntro.setText(dataEntity.getIntroduction());
            h.u0(dataEntity.getImg_url(), nativePlayFragment.ivCover);
            nativePlayFragment.f763g = TextUtils.isEmpty(dataEntity.getUrl()) ? dataEntity.getDownload_url() : dataEntity.getUrl();
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_pie_detail_native;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        if (TextUtils.isEmpty(f762h)) {
            return;
        }
        this.tvError.setVisibility(8);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("UQsPCTQaXQ=="), f762h);
        hashMap.put(e.a("QhEGFj8cUlYd"), "");
        hashMap.put(e.a("Xw8="), e.a("B1JbSQoDUA=="));
        hashMap.put(e.a("UwcVDQgWZloX"), "");
        g(b.a().h(hashMap), new a());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
