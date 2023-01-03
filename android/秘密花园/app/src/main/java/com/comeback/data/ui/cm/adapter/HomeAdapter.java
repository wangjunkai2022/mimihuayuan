package com.comeback.data.ui.cm.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseHeaderAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.cm.PlayActivity;
import com.comeback.data.ui.cm.ScreenActivity;
import com.comeback.data.ui.cm.bean.HomeBean;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.List;

/* loaded from: classes.dex */
public class HomeAdapter extends BaseHeaderAdapter<HomeBean.RescontEntity> {

    /* loaded from: classes.dex */
    public static class HeadHolder extends BaseViewHolder<String> {
        public HomeAdapter a;

        public HeadHolder(View view, HomeAdapter homeAdapter) {
            super(view);
            this.a = homeAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(String str) {
        }

        @OnClick
        public void onClick(View view) {
            int i2;
            switch (view.getId()) {
                case R.id.tv_1 /* 2131296903 */:
                    i2 = 28;
                    break;
                case R.id.tv_2 /* 2131296904 */:
                    i2 = 57;
                    break;
                case R.id.tv_3 /* 2131296905 */:
                    i2 = 30;
                    break;
                case R.id.tv_4 /* 2131296906 */:
                    i2 = 33;
                    break;
                case R.id.tv_5 /* 2131296907 */:
                    i2 = 59;
                    break;
                case R.id.tv_6 /* 2131296908 */:
                    i2 = 65;
                    break;
                case R.id.tv_7 /* 2131296909 */:
                    i2 = 58;
                    break;
                default:
                    i2 = 0;
                    break;
            }
            ScreenActivity.t(this.a.a, i2);
        }
    }

    /* loaded from: classes.dex */
    public class HeadHolder_ViewBinding implements Unbinder {
        public HeadHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f343c;

        /* renamed from: d  reason: collision with root package name */
        public View f344d;

        /* renamed from: e  reason: collision with root package name */
        public View f345e;

        /* renamed from: f  reason: collision with root package name */
        public View f346f;

        /* renamed from: g  reason: collision with root package name */
        public View f347g;

        /* renamed from: h  reason: collision with root package name */
        public View f348h;

        /* renamed from: i  reason: collision with root package name */
        public View f349i;

        /* renamed from: j  reason: collision with root package name */
        public View f350j;

        /* compiled from: HomeAdapter$HeadHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HeadHolder f351c;

            public a(HeadHolder_ViewBinding headHolder_ViewBinding, HeadHolder headHolder) {
                this.f351c = headHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f351c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$HeadHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HeadHolder f352c;

            public b(HeadHolder_ViewBinding headHolder_ViewBinding, HeadHolder headHolder) {
                this.f352c = headHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f352c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$HeadHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class c extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HeadHolder f353c;

            public c(HeadHolder_ViewBinding headHolder_ViewBinding, HeadHolder headHolder) {
                this.f353c = headHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f353c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$HeadHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class d extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HeadHolder f354c;

            public d(HeadHolder_ViewBinding headHolder_ViewBinding, HeadHolder headHolder) {
                this.f354c = headHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f354c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$HeadHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class e extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HeadHolder f355c;

            public e(HeadHolder_ViewBinding headHolder_ViewBinding, HeadHolder headHolder) {
                this.f355c = headHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f355c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$HeadHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class f extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HeadHolder f356c;

            public f(HeadHolder_ViewBinding headHolder_ViewBinding, HeadHolder headHolder) {
                this.f356c = headHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f356c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$HeadHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class g extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HeadHolder f357c;

            public g(HeadHolder_ViewBinding headHolder_ViewBinding, HeadHolder headHolder) {
                this.f357c = headHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f357c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$HeadHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class h extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HeadHolder f358c;

            public h(HeadHolder_ViewBinding headHolder_ViewBinding, HeadHolder headHolder) {
                this.f358c = headHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f358c.onClick(view);
            }
        }

        @UiThread
        public HeadHolder_ViewBinding(HeadHolder headHolder, View view) {
            this.b = headHolder;
            View b2 = d.c.c.b(view, R.id.tv_1, f.e.a.e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f343c = b2;
            b2.setOnClickListener(new a(this, headHolder));
            View b3 = d.c.c.b(view, R.id.tv_2, f.e.a.e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f344d = b3;
            b3.setOnClickListener(new b(this, headHolder));
            View b4 = d.c.c.b(view, R.id.tv_3, f.e.a.e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f345e = b4;
            b4.setOnClickListener(new c(this, headHolder));
            View b5 = d.c.c.b(view, R.id.tv_4, f.e.a.e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f346f = b5;
            b5.setOnClickListener(new d(this, headHolder));
            View b6 = d.c.c.b(view, R.id.tv_5, f.e.a.e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f347g = b6;
            b6.setOnClickListener(new e(this, headHolder));
            View b7 = d.c.c.b(view, R.id.tv_6, f.e.a.e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f348h = b7;
            b7.setOnClickListener(new f(this, headHolder));
            View b8 = d.c.c.b(view, R.id.tv_7, f.e.a.e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f349i = b8;
            b8.setOnClickListener(new g(this, headHolder));
            View b9 = d.c.c.b(view, R.id.tv_8, f.e.a.e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f350j = b9;
            b9.setOnClickListener(new h(this, headHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            if (this.b != null) {
                this.b = null;
                this.f343c.setOnClickListener(null);
                this.f343c = null;
                this.f344d.setOnClickListener(null);
                this.f344d = null;
                this.f345e.setOnClickListener(null);
                this.f345e = null;
                this.f346f.setOnClickListener(null);
                this.f346f = null;
                this.f347g.setOnClickListener(null);
                this.f347g = null;
                this.f348h.setOnClickListener(null);
                this.f348h = null;
                this.f349i.setOnClickListener(null);
                this.f349i = null;
                this.f350j.setOnClickListener(null);
                this.f350j = null;
                return;
            }
            throw new IllegalStateException(f.e.a.e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<HomeBean.RescontEntity> {
        public HomeAdapter a;
        public HomeBean.RescontEntity b;
        @BindView
        public RatioImageView ivName1;
        @BindView
        public RatioImageView ivName2;
        @BindView
        public RatioImageView ivName3;
        @BindView
        public RatioImageView ivName4;
        @BindView
        public LinearLayout llVideo1;
        @BindView
        public LinearLayout llVideo2;
        @BindView
        public LinearLayout llVideo3;
        @BindView
        public LinearLayout llVideo4;
        @BindView
        public TextView tvName1;
        @BindView
        public TextView tvName2;
        @BindView
        public TextView tvName3;
        @BindView
        public TextView tvName4;
        @BindView
        public TextView tvTitle;

        public Holder(View view, HomeAdapter homeAdapter) {
            super(view);
            this.a = homeAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(HomeBean.RescontEntity rescontEntity) {
            HomeBean.RescontEntity rescontEntity2 = rescontEntity;
            this.b = rescontEntity2;
            List<HomeBean.RescontEntity.ListEntity> list = rescontEntity2.getList();
            if (list != null && list.size() != 0) {
                this.tvTitle.setText(rescontEntity2.getName());
                int i2 = 8;
                this.llVideo1.setVisibility(list.size() >= 1 ? 0 : 8);
                if (list.size() >= 1) {
                    HomeBean.RescontEntity.ListEntity listEntity = list.get(0);
                    h.w0(listEntity.getCoverBase64(), this.ivName1);
                    this.tvName1.setText(listEntity.getTitle());
                }
                this.llVideo2.setVisibility(list.size() >= 1 ? 0 : 8);
                if (list.size() >= 2) {
                    HomeBean.RescontEntity.ListEntity listEntity2 = list.get(1);
                    h.w0(listEntity2.getCoverBase64(), this.ivName2);
                    this.tvName2.setText(listEntity2.getTitle());
                }
                this.llVideo3.setVisibility(list.size() >= 1 ? 0 : 8);
                if (list.size() >= 3) {
                    HomeBean.RescontEntity.ListEntity listEntity3 = list.get(2);
                    h.w0(listEntity3.getCoverBase64(), this.ivName3);
                    this.tvName3.setText(listEntity3.getTitle());
                }
                LinearLayout linearLayout = this.llVideo4;
                if (list.size() >= 1) {
                    i2 = 0;
                }
                linearLayout.setVisibility(i2);
                if (list.size() >= 4) {
                    HomeBean.RescontEntity.ListEntity listEntity4 = list.get(3);
                    h.w0(listEntity4.getCoverBase64(), this.ivName4);
                    this.tvName4.setText(listEntity4.getTitle());
                }
            }
        }

        @OnClick
        public void onClick(View view) {
            int id = view.getId();
            if (id != R.id.tv_more) {
                switch (id) {
                    case R.id.ll_video1 /* 2131296579 */:
                        PlayActivity.o(this.a.a, String.valueOf(this.b.getList().get(0).getId()));
                        return;
                    case R.id.ll_video2 /* 2131296580 */:
                        PlayActivity.o(this.a.a, String.valueOf(this.b.getList().get(1).getId()));
                        return;
                    case R.id.ll_video3 /* 2131296581 */:
                        PlayActivity.o(this.a.a, String.valueOf(this.b.getList().get(2).getId()));
                        return;
                    case R.id.ll_video4 /* 2131296582 */:
                        PlayActivity.o(this.a.a, String.valueOf(this.b.getList().get(3).getId()));
                        return;
                    default:
                        return;
                }
            } else {
                ScreenActivity.t(this.a.a, this.b.getType_id());
            }
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f359c;

        /* renamed from: d  reason: collision with root package name */
        public View f360d;

        /* renamed from: e  reason: collision with root package name */
        public View f361e;

        /* renamed from: f  reason: collision with root package name */
        public View f362f;

        /* renamed from: g  reason: collision with root package name */
        public View f363g;

        /* compiled from: HomeAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f364c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f364c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f364c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f365c;

            public b(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f365c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f365c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class c extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f366c;

            public c(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f366c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f366c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class d extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f367c;

            public d(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f367c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f367c.onClick(view);
            }
        }

        /* compiled from: HomeAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class e extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f368c;

            public e(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f368c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f368c.onClick(view);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, f.e.a.e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.ivName1 = (RatioImageView) d.c.c.c(view, R.id.iv_name1, f.e.a.e.a("UQsGCA9THloFKFUKHVtE"), RatioImageView.class);
            holder.tvName1 = (TextView) d.c.c.c(view, R.id.tv_name1, f.e.a.e.a("UQsGCA9THkcFKFUKHVtE"), TextView.class);
            holder.ivName2 = (RatioImageView) d.c.c.c(view, R.id.iv_name2, f.e.a.e.a("UQsGCA9THloFKFUKHVhE"), RatioImageView.class);
            holder.tvName2 = (TextView) d.c.c.c(view, R.id.tv_name2, f.e.a.e.a("UQsGCA9THkcFKFUKHVhE"), TextView.class);
            holder.ivName3 = (RatioImageView) d.c.c.c(view, R.id.iv_name3, f.e.a.e.a("UQsGCA9THloFKFUKHVlE"), RatioImageView.class);
            holder.tvName3 = (TextView) d.c.c.c(view, R.id.tv_name3, f.e.a.e.a("UQsGCA9THkcFKFUKHVlE"), TextView.class);
            holder.ivName4 = (RatioImageView) d.c.c.c(view, R.id.iv_name4, f.e.a.e.a("UQsGCA9THloFKFUKHV5E"), RatioImageView.class);
            holder.tvName4 = (TextView) d.c.c.c(view, R.id.tv_name4, f.e.a.e.a("UQsGCA9THkcFKFUKHV5E"), TextView.class);
            View b2 = d.c.c.b(view, R.id.ll_video1, f.e.a.e.a("UQsGCA9THl8fMF0DHQVSTBcDDQBLHlxHGwlQR18FDShbCwAPTA=="));
            holder.llVideo1 = (LinearLayout) d.c.c.a(b2, R.id.ll_video1, f.e.a.e.a("UQsGCA9THl8fMF0DHQVSTA=="), LinearLayout.class);
            this.f359c = b2;
            b2.setOnClickListener(new a(this, holder));
            View b3 = d.c.c.b(view, R.id.ll_video2, f.e.a.e.a("UQsGCA9THl8fMF0DHQVRTBcDDQBLHlxHGwlQR18FDShbCwAPTA=="));
            holder.llVideo2 = (LinearLayout) d.c.c.a(b3, R.id.ll_video2, f.e.a.e.a("UQsGCA9THl8fMF0DHQVRTA=="), LinearLayout.class);
            this.f360d = b3;
            b3.setOnClickListener(new b(this, holder));
            View b4 = d.c.c.b(view, R.id.ll_video3, f.e.a.e.a("UQsGCA9THl8fMF0DHQVQTBcDDQBLHlxHGwlQR18FDShbCwAPTA=="));
            holder.llVideo3 = (LinearLayout) d.c.c.a(b4, R.id.ll_video3, f.e.a.e.a("UQsGCA9THl8fMF0DHQVQTA=="), LinearLayout.class);
            this.f361e = b4;
            b4.setOnClickListener(new c(this, holder));
            View b5 = d.c.c.b(view, R.id.ll_video4, f.e.a.e.a("UQsGCA9THl8fMF0DHQVXTBcDDQBLHlxHGwlQR18FDShbCwAPTA=="));
            holder.llVideo4 = (LinearLayout) d.c.c.a(b5, R.id.ll_video4, f.e.a.e.a("UQsGCA9THl8fMF0DHQVXTA=="), LinearLayout.class);
            this.f362f = b5;
            b5.setOnClickListener(new d(this, holder));
            View b6 = d.c.c.b(view, R.id.tv_more, f.e.a.e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f363g = b6;
            b6.setOnClickListener(new e(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.ivName1 = null;
                holder.tvName1 = null;
                holder.ivName2 = null;
                holder.tvName2 = null;
                holder.ivName3 = null;
                holder.tvName3 = null;
                holder.ivName4 = null;
                holder.tvName4 = null;
                holder.llVideo1 = null;
                holder.llVideo2 = null;
                holder.llVideo3 = null;
                holder.llVideo4 = null;
                this.f359c.setOnClickListener(null);
                this.f359c = null;
                this.f360d.setOnClickListener(null);
                this.f360d = null;
                this.f361e.setOnClickListener(null);
                this.f361e = null;
                this.f362f.setOnClickListener(null);
                this.f362f = null;
                this.f363g.setOnClickListener(null);
                this.f363g = null;
                return;
            }
            throw new IllegalStateException(f.e.a.e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public HomeAdapter(Context context) {
        super(context);
        this.f112d = 1;
    }

    @Override // com.comeback.data.base.BaseHeaderAdapter
    public Object f(int i2) {
        return e.a("0NDdjev63o39g6/Z");
    }

    @Override // com.comeback.data.base.BaseHeaderAdapter
    @NonNull
    public BaseViewHolder<HomeBean.RescontEntity> g(@NonNull ViewGroup viewGroup, int i2) {
        return new Holder(this.f107c.inflate(R.layout.item_cm_home, viewGroup, false), this);
    }

    @Override // com.comeback.data.base.BaseHeaderAdapter
    public BaseViewHolder h(ViewGroup viewGroup, int i2) {
        return new HeadHolder(this.f107c.inflate(R.layout.item_cm_home_head, viewGroup, false), this);
    }
}
