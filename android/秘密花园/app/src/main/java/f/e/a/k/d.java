package f.e.a.k;

import android.content.Context;
import android.widget.ImageView;
import c.a.a.b.g.h;
import com.comeback.data.ui.gkj.bean.ViewModel;
import com.youth.banner.loader.ImageLoader;

/* compiled from: GKJImageLoader.java */
/* loaded from: classes.dex */
public class d extends ImageLoader {
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.content.Context, java.lang.Object, android.view.View] */
    @Override // com.youth.banner.loader.ImageLoaderInterface
    public void displayImage(Context context, Object obj, ImageView imageView) {
        h.D0(((ViewModel.DataBean.MBannerDataBean) obj).getCover_oss_filename(), imageView, 20);
    }
}
