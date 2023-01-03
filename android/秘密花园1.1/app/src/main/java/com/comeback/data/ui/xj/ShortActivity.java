package com.comeback.data.ui.xj;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.xj.adapter.ShortVideoAdapter;
import com.comeback.data.ui.xj.bean.VideoBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ShortActivity extends BaseActivity {
    public ArrayList<VideoBean> b;

    /* renamed from: c  reason: collision with root package name */
    public int f2208c;

    /* renamed from: d  reason: collision with root package name */
    public ShortVideoAdapter f2209d;
    @BindView
    public RecyclerView mRvList;

    /* loaded from: classes.dex */
    public class a extends PagerSnapHelper {
        public a() {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        @Nullable
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            return super.findSnapView(layoutManager);
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i2, int i3) {
            int findTargetSnapPosition = super.findTargetSnapPosition(layoutManager, i2, i3);
            ShortActivity.this.f2209d.f2224d = findTargetSnapPosition;
            return findTargetSnapPosition;
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.OnScrollListener {
        public b(ShortActivity shortActivity) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            ExoUserPlayer videoPlayer = VideoPlayerManager.getInstance().getVideoPlayer();
            if (videoPlayer != null && i2 == 0) {
                videoPlayer.onResume();
            } else {
                VideoPlayerManager.getInstance().onPause(true);
            }
        }
    }

    public static void l(Context context, ArrayList<VideoBean> arrayList, int i2) {
        Intent intent = new Intent(context, ShortActivity.class);
        intent.putParcelableArrayListExtra(e.a("UwMXBQ=="), arrayList);
        intent.putExtra(e.a("XgwHARM="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getParcelableArrayListExtra(e.a("UwMXBQ=="));
        this.f2208c = intent.getIntExtra(e.a("XgwHARM="), 0);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.include_only_recycleview;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        h(Color.parseColor(e.a("FAQFVl1BAAE1")));
        this.mRvList.setNestedScrollingEnabled(false);
        a aVar = new a();
        this.mRvList.addOnScrollListener(new b(this));
        aVar.attachToRecyclerView(this.mRvList);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.mRvList.setLayoutManager(linearLayoutManager);
        ShortVideoAdapter shortVideoAdapter = new ShortVideoAdapter(this);
        this.f2209d = shortVideoAdapter;
        shortVideoAdapter.f2224d = this.f2208c;
        this.mRvList.setAdapter(shortVideoAdapter);
        this.f2209d.a(this.b);
        linearLayoutManager.scrollToPosition(this.f2208c);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        VideoPlayerManager.getInstance().onDestroy();
    }
}
