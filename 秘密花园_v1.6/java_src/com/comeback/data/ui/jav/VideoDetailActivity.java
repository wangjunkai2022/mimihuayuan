package com.comeback.data.ui.jav;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.commom.PicBrowseActivity;
import com.comeback.data.ui.commom.PlayActivity;
import com.comeback.data.ui.jav.adapter.DownloadAdapter;
import com.comeback.data.ui.jav.adapter.HVideoAdapter;
import com.comeback.data.ui.jav.adapter.PicAdapter;
import com.comeback.data.ui.jav.bean.VideoDetail;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.i0.c;
import f.e.a.k.b;
import i.i0;
import l.d;
/* loaded from: classes.dex */
public class VideoDetailActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public d<i0> f1285c;

    /* renamed from: d  reason: collision with root package name */
    public VideoDetail f1286d;
    @BindView
    public RatioImageView ivCover;
    @BindView
    public LinearLayout llDownload;
    @BindView
    public LinearLayout llGuess;
    @BindView
    public LinearLayout llSame;
    @BindView
    public RelativeLayout rlPreview;
    @BindView
    public RecyclerView rvDownload;
    @BindView
    public RecyclerView rvGuess;
    @BindView
    public RecyclerView rvPreview;
    @BindView
    public RecyclerView rvSame;
    @BindView
    public TextView tvActor;
    @BindView
    public TextView tvDate;
    @BindView
    public TextView tvDuration;
    @BindView
    public TextView tvMoreImg;
    @BindView
    public TextView tvPlay;
    @BindView
    public TextView tvPublisher;
    @BindView
    public TextView tvScore;
    @BindView
    public TextView tvShop;
    @BindView
    public TextView tvTag;
    @BindView
    public TextView tvTitle;
    @BindView
    public TextView tvUid;

    public static void l(VideoDetailActivity videoDetailActivity) {
        if (!TextUtils.isEmpty(videoDetailActivity.f1286d.getError())) {
            h.p1(videoDetailActivity.f1286d.getError());
            return;
        }
        videoDetailActivity.tvTitle.setText(videoDetailActivity.f1286d.getName());
        h.u0(videoDetailActivity.f1286d.getImg(), videoDetailActivity.ivCover);
        if (!TextUtils.isEmpty(videoDetailActivity.f1286d.getPreview_video())) {
            videoDetailActivity.tvPlay.setVisibility(0);
        }
        videoDetailActivity.tvUid.setText(videoDetailActivity.f1286d.getUid());
        videoDetailActivity.tvDate.setText(videoDetailActivity.f1286d.getDate());
        videoDetailActivity.tvDuration.setText(videoDetailActivity.f1286d.getDuration());
        videoDetailActivity.tvShop.setText(videoDetailActivity.f1286d.getShop());
        videoDetailActivity.tvPublisher.setText(videoDetailActivity.f1286d.getPublisher());
        videoDetailActivity.tvScore.setText(videoDetailActivity.f1286d.getScore());
        videoDetailActivity.tvActor.setText(videoDetailActivity.f1286d.getActor());
        videoDetailActivity.tvTag.setText(videoDetailActivity.f1286d.getTag());
        if (videoDetailActivity.f1286d.getPreview_images() != null && videoDetailActivity.f1286d.getPreview_images().size() != 0) {
            videoDetailActivity.rlPreview.setVisibility(0);
            TextView textView = videoDetailActivity.tvMoreImg;
            textView.setText(e.a("0ufLjejb") + videoDetailActivity.f1286d.getPreview_images().size());
            videoDetailActivity.rvPreview.setLayoutManager(new LinearLayoutManager(videoDetailActivity, 0, false));
            PicAdapter picAdapter = new PicAdapter(videoDetailActivity);
            videoDetailActivity.rvPreview.setAdapter(picAdapter);
            picAdapter.a(videoDetailActivity.f1286d.getBigPreview_images());
        } else {
            videoDetailActivity.rlPreview.setVisibility(8);
        }
        if (videoDetailActivity.f1286d.getSameVideo() != null && videoDetailActivity.f1286d.getSameVideo().size() != 0) {
            videoDetailActivity.llSame.setVisibility(0);
            videoDetailActivity.rvSame.setLayoutManager(new LinearLayoutManager(videoDetailActivity, 0, false));
            HVideoAdapter hVideoAdapter = new HVideoAdapter(videoDetailActivity);
            videoDetailActivity.rvSame.setAdapter(hVideoAdapter);
            hVideoAdapter.a(videoDetailActivity.f1286d.getSameVideo());
        } else {
            videoDetailActivity.llSame.setVisibility(8);
        }
        if (videoDetailActivity.f1286d.getGuessLike() != null && videoDetailActivity.f1286d.getGuessLike().size() != 0) {
            videoDetailActivity.llGuess.setVisibility(0);
            videoDetailActivity.rvGuess.setLayoutManager(new LinearLayoutManager(videoDetailActivity, 0, false));
            HVideoAdapter hVideoAdapter2 = new HVideoAdapter(videoDetailActivity);
            videoDetailActivity.rvGuess.setAdapter(hVideoAdapter2);
            hVideoAdapter2.a(videoDetailActivity.f1286d.getGuessLike());
        } else {
            videoDetailActivity.llGuess.setVisibility(8);
        }
        if (videoDetailActivity.f1286d.getDownloads() != null && videoDetailActivity.f1286d.getDownloads().size() != 0) {
            videoDetailActivity.llDownload.setVisibility(0);
            videoDetailActivity.rvDownload.setLayoutManager(new LinearLayoutManager(videoDetailActivity));
            DownloadAdapter downloadAdapter = new DownloadAdapter(videoDetailActivity);
            videoDetailActivity.rvDownload.setAdapter(downloadAdapter);
            downloadAdapter.a(videoDetailActivity.f1286d.getDownloads());
            return;
        }
        videoDetailActivity.llDownload.setVisibility(8);
    }

    public static void m(Context context, String str) {
        Intent intent = new Intent(context, VideoDetailActivity.class);
        a.v("QgsH", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QgsH"));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_jav_video;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        d<i0> b = c.a().b(this.b, b.h0, b.f4054c);
        this.f1285c = b;
        b.X(new f.e.a.j.v.c(this));
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.tv_more_img) {
            PicBrowseActivity.l(this, this.f1286d.getBigPreview_images());
        } else if (id == R.id.tv_play) {
            PlayActivity.l(this, this.f1286d.getPreview_video());
        } else if (id != R.id.tv_title) {
        } else {
            finish();
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f1285c;
        if (dVar != null) {
            dVar.cancel();
        }
    }
}
