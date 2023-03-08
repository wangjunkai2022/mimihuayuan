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
    public ComicTypeFragment f1053c;

    /* renamed from: d  reason: collision with root package name */
    public View f1054d;

    /* renamed from: e  reason: collision with root package name */
    public View f1055e;

    /* renamed from: f  reason: collision with root package name */
    public View f1056f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicTypeFragment f1057c;

        public a(ComicTypeFragment_ViewBinding comicTypeFragment_ViewBinding, ComicTypeFragment comicTypeFragment) {
            this.f1057c = comicTypeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.w(this.f1057c.getContext());
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicTypeFragment f1058c;

        public b(ComicTypeFragment_ViewBinding comicTypeFragment_ViewBinding, ComicTypeFragment comicTypeFragment) {
            this.f1058c = comicTypeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            RankActivity.n(this.f1058c.getContext());
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ComicTypeFragment f1059c;

        public c(ComicTypeFragment_ViewBinding comicTypeFragment_ViewBinding, ComicTypeFragment comicTypeFragment) {
            this.f1059c = comicTypeFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            ScreenActivity.A(this.f1059c.getContext());
        }
    }

    @UiThread
    public ComicTypeFragment_ViewBinding(ComicTypeFragment comicTypeFragment, View view) {
        super(comicTypeFragment, view);
        this.f1053c = comicTypeFragment;
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQAA1UVGwJE"));
        this.f1054d = b2;
        b2.setOnClickListener(new a(this, comicTypeFragment));
        View b3 = d.c.c.b(view, R.id.iv_rank, e.a("WgcXDAQXGRQBB1oMXw=="));
        this.f1055e = b3;
        b3.setOnClickListener(new b(this, comicTypeFragment));
        View b4 = d.c.c.b(view, R.id.iv_type, e.a("WgcXDAQXGRQHH0QCXw=="));
        this.f1056f = b4;
        b4.setOnClickListener(new c(this, comicTypeFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f1053c != null) {
            this.f1053c = null;
            this.f1054d.setOnClickListener(null);
            this.f1054d = null;
            this.f1055e.setOnClickListener(null);
            this.f1055e = null;
            this.f1056f.setOnClickListener(null);
            this.f1056f = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
