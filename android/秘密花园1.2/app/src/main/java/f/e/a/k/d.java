package f.e.a.k;

import android.content.Context;
import android.widget.ImageView;
import com.comeback.data.ui.gkj.bean.ViewModel;
import com.youth.banner.loader.ImageLoader;

/* compiled from: GKJImageLoader.java */
/* loaded from: classes.dex */
public class d extends ImageLoader {
    @Override // com.youth.banner.loader.ImageLoaderInterface
    public void displayImage(Context context, Object obj, ImageView imageView) {
        c.a.a.b.g.h.D0(((ViewModel.DataBean.MBannerDataBean) obj).getCover_oss_filename(), imageView, 20);
    }
}
