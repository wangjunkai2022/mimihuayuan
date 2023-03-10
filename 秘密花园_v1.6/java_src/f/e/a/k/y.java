package f.e.a.k;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.Window;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.google.android.material.bottomappbar.BottomAppBarTopEdgeTreatment;
/* compiled from: VideoUtils.java */
/* loaded from: classes.dex */
public final class y implements View.OnClickListener {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ VideoPlayerView b;

    /* compiled from: VideoUtils.java */
    /* loaded from: classes.dex */
    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            if (i2 == 0) {
                y.this.b.getPlayerView().getVideoSurfaceView().setVideoRotation(0);
                y.this.b.getPlayerView().setResizeMode(4);
            } else if (i2 == 1) {
                y.this.b.getPlayerView().getVideoSurfaceView().setVideoRotation(BottomAppBarTopEdgeTreatment.ANGLE_UP);
                y.this.b.getPlayerView().setResizeMode(4);
            } else if (i2 == 2) {
                y.this.b.getPlayerView().setResizeMode(4);
            } else if (i2 == 3) {
                y.this.b.getPlayerView().setResizeMode(0);
            } else if (i2 == 4) {
                y.this.b.getPlayerView().setResizeMode(3);
            }
            dialogInterface.dismiss();
        }
    }

    /* compiled from: VideoUtils.java */
    /* loaded from: classes.dex */
    public class b implements DialogInterface.OnDismissListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            y yVar = y.this;
            yVar.a(yVar.a.getWindow(), y.this.a);
        }
    }

    public y(Activity activity, VideoPlayerView videoPlayerView) {
        this.a = activity;
        this.b = videoPlayerView;
    }

    public final void a(Window window, Activity activity) {
        if (activity.getResources().getConfiguration().orientation == 2) {
            window.setFlags(8, 8);
            window.getDecorView().setSystemUiVisibility(5894);
            window.clearFlags(8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AlertDialog create = new AlertDialog.Builder(this.a).setSingleChoiceItems(new String[]{f.e.a.e.a("0fXojNbfCdbJwA=="), f.e.a.e.a("0fXojNbfCwRDg47B"), f.e.a.e.a("0tvQjfjJ"), f.e.a.e.a("BlSM2PFK"), f.e.a.e.a("0enqgNfL")}, -1, new a()).create();
        a(create.getWindow(), this.a);
        create.show();
        create.setOnDismissListener(new b());
    }
}
