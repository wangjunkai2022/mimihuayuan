package com.comeback.data.ui.dn;

import android.content.Context;
import android.content.Intent;
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
import com.comeback.data.ui.dn.adapter.ShortVideoAdapter;
import com.comeback.data.ui.dn.bean.VideoInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VideoListActivity extends BaseActivity {
    public ArrayList<VideoInfo> b;

    /* renamed from: c  reason: collision with root package name */
    public int f551c;
    @BindView
    public RecyclerView mRvList;

    /* loaded from: classes.dex */
    public class a extends PagerSnapHelper {
        public a(VideoListActivity videoListActivity) {
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
        public b(VideoListActivity videoListActivity) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            ExoUserPlayer videoPlayer = VideoPlayerManager.getInstance().getVideoPlayer();
            if (videoPlayer == null || i2 != 0) {
                VideoPlayerManager.getInstance().onPause(true);
            } else {
                videoPlayer.onResume();
            }
        }
    }

    public static void l(Context context, ArrayList<VideoInfo> arrayList, int i2) {
        Intent intent = new Intent(context, VideoListActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), arrayList);
        intent.putExtra(e.a("XgwHARM="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = (ArrayList) intent.getSerializableExtra(e.a("UwMXBQ=="));
        this.f551c = intent.getIntExtra(e.a("XgwHARM="), 0);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.include_only_recycleview;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        this.mRvList.setBackgroundColor(-16777216);
        this.mRvList.setNestedScrollingEnabled(false);
        a aVar = new a(this);
        this.mRvList.addOnScrollListener(new b(this));
        aVar.attachToRecyclerView(this.mRvList);
        this.mRvList.setLayoutManager(new LinearLayoutManager(this));
        ShortVideoAdapter shortVideoAdapter = new ShortVideoAdapter(this);
        this.mRvList.setAdapter(shortVideoAdapter);
        shortVideoAdapter.a(this.b);
        this.mRvList.scrollToPosition(this.f551c);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        VideoPlayerManager.getInstance().onDestroy();
    }
}
