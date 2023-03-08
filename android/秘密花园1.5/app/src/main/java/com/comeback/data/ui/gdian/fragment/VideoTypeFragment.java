package com.comeback.data.ui.gdian.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gdian.adapter.VideoAdapter;
import com.comeback.data.ui.gdian.bean.VideoList;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f914i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f915f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f915f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f915f == 1) {
                VideoTypeFragment.this.f117h.c();
            }
            VideoTypeFragment.this.f117h.a(videoList.getData().getData());
        }
    }

    public static VideoTypeFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("RA0REA=="), str);
        VideoTypeFragment videoTypeFragment = new VideoTypeFragment();
        videoTypeFragment.setArguments(bundle);
        return videoTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f914i = getArguments().getString(e.a("RA0REA=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.m.e.e.a().c(0, this.f914i, 20, i2, ""), new a(i2));
    }
}
