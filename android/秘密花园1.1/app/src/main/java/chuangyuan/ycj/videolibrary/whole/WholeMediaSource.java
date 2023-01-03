package chuangyuan.ycj.videolibrary.whole;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import chuangyuan.ycj.videolibrary.listener.DataSourceListener;
import chuangyuan.ycj.videolibrary.utils.VideoPlayUtils;
import chuangyuan.ycj.videolibrary.video.MediaSourceBuilder;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import f.b.a.a.a;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.t0.h;
import f.i.a.a.h1.u0.e;
import f.i.a.a.h1.u0.f;
import f.i.a.a.h1.v0.b;
import f.i.a.a.h1.y;
import f.i.a.a.l1.m;
import f.i.a.a.l1.t;
import f.i.a.a.l1.w;

/* loaded from: classes.dex */
public class WholeMediaSource extends MediaSourceBuilder {
    public WholeMediaSource(@NonNull Context context) {
        super(context);
    }

    @Override // chuangyuan.ycj.videolibrary.video.MediaSourceBuilder
    public e0 initMediaSource(@NonNull Uri uri) {
        int inferContentType = VideoPlayUtils.inferContentType(uri);
        if (inferContentType == 0) {
            DashMediaSource.Factory factory = new DashMediaSource.Factory(new h.a(getDataSource()), new t(this.context, null, getDataSource()));
            w wVar = new w(5);
            c.a.a.b.g.h.v(!factory.f2312i);
            factory.f2309f = wVar;
            c.a.a.b.g.h.v(!factory.f2312i);
            factory.f2310g = 10000L;
            factory.f2311h = true;
            return factory.createMediaSource(uri);
        } else if (inferContentType == 1) {
            SsMediaSource.Factory factory2 = new SsMediaSource.Factory(new b.a(getDataSource()), new t(this.context, null, getDataSource()));
            w wVar2 = new w(5);
            c.a.a.b.g.h.v(!factory2.f2349h);
            factory2.f2347f = wVar2;
            c.a.a.b.g.h.v(true ^ factory2.f2349h);
            factory2.f2348g = 10000L;
            return factory2.createMediaSource(uri);
        } else if (inferContentType == 2) {
            HlsMediaSource.Factory factory3 = new HlsMediaSource.Factory(new e(getDataSource()));
            c.a.a.b.g.h.v(!factory3.f2335i);
            factory3.f2334h = true;
            c.a.a.b.g.h.v(!factory3.f2335i);
            factory3.f2333g = new w(5);
            f fVar = new f();
            c.a.a.b.g.h.v(true ^ factory3.f2335i);
            factory3.b = fVar;
            return factory3.createMediaSource(uri);
        } else if (inferContentType == 3) {
            m.a dataSource = getDataSource();
            f.i.a.a.b1.e eVar = new f.i.a.a.b1.e();
            c.a.a.b.g.h.v(true);
            String str = this.customCacheKey;
            if (str == null) {
                str = uri.toString();
            }
            c.a.a.b.g.h.v(true);
            w wVar3 = new w(5);
            c.a.a.b.g.h.v(true);
            return new y(uri, dataSource, eVar, wVar3, str, 1048576, null, null);
        } else {
            throw new IllegalStateException(a.J(":Unsupported type: ", inferContentType));
        }
    }

    public WholeMediaSource(@NonNull Context context, @Nullable DataSourceListener dataSourceListener) {
        super(context, dataSourceListener);
    }
}
