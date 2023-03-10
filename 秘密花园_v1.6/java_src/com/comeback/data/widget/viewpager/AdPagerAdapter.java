package com.comeback.data.widget.viewpager;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class AdPagerAdapter extends BaseCardPagerAdapter<f.e.a.g.a> {

    /* renamed from: e  reason: collision with root package name */
    public a f2355e;

    /* loaded from: classes.dex */
    public static class SpikePagerItemViewHolder {
        public AdPagerAdapter a;
        public f.e.a.g.a b;
        @BindView
        public ImageView mIvImg;

        public SpikePagerItemViewHolder(View view, AdPagerAdapter adPagerAdapter) {
            ButterKnife.b(this, view);
            this.a = adPagerAdapter;
        }
    }

    /* loaded from: classes.dex */
    public class SpikePagerItemViewHolder_ViewBinding implements Unbinder {
        public SpikePagerItemViewHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2356c;

        /* compiled from: AdPagerAdapter$SpikePagerItemViewHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ SpikePagerItemViewHolder f2357c;

            public a(SpikePagerItemViewHolder_ViewBinding spikePagerItemViewHolder_ViewBinding, SpikePagerItemViewHolder spikePagerItemViewHolder) {
                this.f2357c = spikePagerItemViewHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                SpikePagerItemViewHolder spikePagerItemViewHolder = this.f2357c;
                a aVar = spikePagerItemViewHolder.a.f2355e;
                if (aVar != null) {
                    aVar.a(spikePagerItemViewHolder.b);
                } else {
                    h.p1(spikePagerItemViewHolder.b.getId());
                }
            }
        }

        @UiThread
        public SpikePagerItemViewHolder_ViewBinding(SpikePagerItemViewHolder spikePagerItemViewHolder, View view) {
            this.b = spikePagerItemViewHolder;
            View b = c.b(view, R.id.iv_img, e.a("UQsGCA9THl46EH0KH01DClkGQwkOB1FcF0YTEBkeAANhCwcBBFQ="));
            spikePagerItemViewHolder.mIvImg = (ImageView) c.a(b, R.id.iv_img, e.a("UQsGCA9THl46EH0KH00="), ImageView.class);
            this.f2356c = b;
            b.setOnClickListener(new a(this, spikePagerItemViewHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            SpikePagerItemViewHolder spikePagerItemViewHolder = this.b;
            if (spikePagerItemViewHolder != null) {
                this.b = null;
                spikePagerItemViewHolder.mIvImg = null;
                this.f2356c.setOnClickListener(null);
                this.f2356c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        void a(f.e.a.g.a aVar);
    }

    public AdPagerAdapter(Context context) {
        super(context);
    }
}
