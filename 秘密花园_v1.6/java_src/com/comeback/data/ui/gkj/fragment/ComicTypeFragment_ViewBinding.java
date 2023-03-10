package com.comeback.data.ui.gkj.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.data.ui.gkj.RankActivity;
import com.comeback.data.ui.gkj.ScreenActivity;
import com.comeback.data.ui.gkj.SearchActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
/* loaded from: classes.dex */
public class ComicTypeFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ComicTypeFragment f1057c;

    /* renamed from: d  reason: collision with root package name */
    public View f1058d;

    /* renamed from: e  reason: collision with root package name */
    public View f1059e;

    /* renamed from: f  reason: collision with root package name */
    public View f1060f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicTypeFragment f1061c;

        public a(ComicTypeFragment_ViewBinding comicTypeFragment_ViewBinding, ComicTypeFragment comicTypeFragment) {
            this.f1061c = comicTypeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.w(this.f1061c.getContext());
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicTypeFragment f1062c;

        public b(ComicTypeFragment_ViewBinding comicTypeFragment_ViewBinding, ComicTypeFragment comicTypeFragment) {
            this.f1062c = comicTypeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            RankActivity.n(this.f1062c.getContext());
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicTypeFragment f1063c;

        public c(ComicTypeFragment_ViewBinding comicTypeFragment_ViewBinding, ComicTypeFragment comicTypeFragment) {
            this.f1063c = comicTypeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            ScreenActivity.A(this.f1063c.getContext());
        }
    }

    @UiThread
    public ComicTypeFragment_ViewBinding(ComicTypeFragment comicTypeFragment, View view) {
        super(comicTypeFragment, view);
        this.f1057c = comicTypeFragment;
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQAA1UVGwJE"));
        this.f1058d = b2;
        b2.setOnClickListener(new a(this, comicTypeFragment));
        View b3 = d.c.c.b(view, R.id.iv_rank, e.a("WgcXDAQXGRQBB1oMXw=="));
        this.f1059e = b3;
        b3.setOnClickListener(new b(this, comicTypeFragment));
        View b4 = d.c.c.b(view, R.id.iv_type, e.a("WgcXDAQXGRQHH0QCXw=="));
        this.f1060f = b4;
        b4.setOnClickListener(new c(this, comicTypeFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f1057c != null) {
            this.f1057c = null;
            this.f1058d.setOnClickListener(null);
            this.f1058d = null;
            this.f1059e.setOnClickListener(null);
            this.f1059e = null;
            this.f1060f.setOnClickListener(null);
            this.f1060f = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
