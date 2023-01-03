package com.comeback.data.ui.dn.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.dn.UserActivity;
import com.comeback.data.ui.dn.bean.UserInfo;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class UserAdapter extends BaseAbstractAdapter<UserInfo> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<UserInfo> {
        public UserAdapter a;
        public UserInfo b;
        @BindView
        public ImageView mIvImg;
        @BindView
        public TextView mTvDetail;
        @BindView
        public TextView mTvName;
        @BindView
        public TextView mTvNum;

        public HomeListHolder(View view, UserAdapter userAdapter) {
            super(view);
            this.a = userAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(UserInfo userInfo) {
            UserInfo userInfo2 = userInfo;
            this.b = userInfo2;
            this.mTvName.setText(userInfo2.getUser_nicename());
            this.mTvDetail.setText(userInfo2.getSignature());
            TextView textView = this.mTvNum;
            textView.setText(userInfo2.getIdString() + "   " + userInfo2.getFans());
            h.A0(userInfo2.getAvatar(), this.mIvImg);
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f561c;

        /* renamed from: d  reason: collision with root package name */
        public View f562d;

        /* compiled from: UserAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f563c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f563c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                if (this.f563c == null) {
                    throw null;
                }
            }
        }

        /* compiled from: UserAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f564c;

            public b(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f564c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f564c;
                UserActivity.n(homeListHolder.a.a, homeListHolder.b);
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.mIvImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THl46EH0KH00="), ImageView.class);
            homeListHolder.mTvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THl4nEHACDAsKBxA="), TextView.class);
            View b2 = c.b(view, R.id.tv_follow, e.a("UQsGCA9THl4nEHIIFAYMHBBCAgoPU1RWBw5bA1hNBQRbDgwTTA=="));
            TextView textView = (TextView) c.a(b2, R.id.tv_follow, e.a("UQsGCA9THl4nEHIIFAYMHBA="), TextView.class);
            this.f561c = b2;
            b2.setOnClickListener(new a(this, homeListHolder));
            homeListHolder.mTvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THl4nEHoGFQ9E"), TextView.class);
            homeListHolder.mTvNum = (TextView) c.c(view, R.id.tv_num, e.a("UQsGCA9THl4nEHoSFU0="), TextView.class);
            View b3 = c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f562d = b3;
            b3.setOnClickListener(new b(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.mIvImg = null;
                homeListHolder.mTvDetail = null;
                homeListHolder.mTvName = null;
                homeListHolder.mTvNum = null;
                this.f561c.setOnClickListener(null);
                this.f561c = null;
                this.f562d.setOnClickListener(null);
                this.f562d = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public UserAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_dn_user, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
