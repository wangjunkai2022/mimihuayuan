package com.comeback.data.ui.cucumber;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.cucumber.adapter.ShortVideoAdapter;
import com.comeback.data.ui.cucumber.bean.Video;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CucumberShortListActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<Video> f422d;

    /* renamed from: e  reason: collision with root package name */
    public int f423e;

    /* loaded from: classes.dex */
    public class a extends PagerSnapHelper {
        public a(CucumberShortListActivity cucumberShortListActivity) {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        @Nullable
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            return super.findSnapView(layoutManager);
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i2, int i3) {
            return super.findTargetSnapPosition(layoutManager, i2, i3);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.OnScrollListener {
        public b(CucumberShortListActivity cucumberShortListActivity) {
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

    public static void r(Context context, ArrayList<Video> arrayList, int i2) {
        Intent intent = new Intent(context, CucumberShortListActivity.class);
        intent.putParcelableArrayListExtra(e.a("UwMXBQ=="), arrayList);
        if (i2 >= arrayList.size()) {
            i2 = 0;
        }
        intent.putExtra(e.a("Rw0QDR8aVl0="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f422d = intent.getParcelableArrayListExtra(e.a("UwMXBQ=="));
        this.f423e = intent.getIntExtra(e.a("Rw0QDR8aVl0="), 0);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        i();
        this.refreshLayout.setBackgroundColor(-16777216);
        this.refreshLayout.t(false);
        this.refreshLayout.A = false;
        this.mRvList.setLayoutManager(new LinearLayoutManager(this));
        ShortVideoAdapter shortVideoAdapter = new ShortVideoAdapter(this);
        this.f114c = shortVideoAdapter;
        this.mRvList.setAdapter(shortVideoAdapter);
        this.mRvList.setNestedScrollingEnabled(false);
        a aVar = new a(this);
        this.mRvList.addOnScrollListener(new b(this));
        aVar.attachToRecyclerView(this.mRvList);
        this.f114c.a(this.f422d);
        this.mRvList.scrollToPosition(this.f423e);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ShortVideoAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
    }
}
