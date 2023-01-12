package chuangyuan.ycj.videolibrary.video;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.R;
import chuangyuan.ycj.videolibrary.factory.JDefaultDataSourceFactory;
import chuangyuan.ycj.videolibrary.listener.DataSourceListener;
import chuangyuan.ycj.videolibrary.listener.ItemVideo;
import chuangyuan.ycj.videolibrary.utils.VideoPlayUtils;
import f.i.a.a.h1.b0;
import f.i.a.a.h1.e0;
import f.i.a.a.h1.r;
import f.i.a.a.h1.u;
import f.i.a.a.h1.y;
import f.i.a.a.l1.k0.e;
import f.i.a.a.l1.m;
import f.i.a.a.l1.w;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MediaSourceBuilder {
    public static final String TAG = "chuangyuan.ycj.videolibrary.video.MediaSourceBuilder";
    public Context context;
    public String customCacheKey;
    public int indexType;
    public DataSourceListener listener;
    public e0 mediaSource;
    public List<String> videoUri;

    public MediaSourceBuilder(@NonNull Context context) {
        this(context, null);
    }

    public void addMediaUri(@NonNull Uri uri) {
        if (this.mediaSource == null) {
            this.mediaSource = new u(new e0[0]);
        }
        e0 e0Var = this.mediaSource;
        if (e0Var instanceof u) {
            ((u) e0Var).w(initMediaSource(uri));
        }
    }

    public void destroy() {
        DataSourceListener dataSourceListener = this.listener;
        if (dataSourceListener != null) {
            m createDataSource = dataSourceListener.getDataSourceFactory().createDataSource();
            if (createDataSource instanceof e) {
                try {
                    ((e) createDataSource).close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            this.listener = null;
        }
        this.indexType = -1;
        this.videoUri = null;
    }

    public m.a getDataSource() {
        DataSourceListener dataSourceListener = this.listener;
        if (dataSourceListener != null) {
            return dataSourceListener.getDataSourceFactory();
        }
        return new JDefaultDataSourceFactory(this.context);
    }

    public int getIndexType() {
        return this.indexType;
    }

    public e0 getMediaSource() {
        return this.mediaSource;
    }

    public List<String> getVideoUri() {
        return this.videoUri;
    }

    public e0 initMediaSource(Uri uri) {
        f.i.a.a.b1.e eVar = new f.i.a.a.b1.e();
        synchronized (eVar) {
            eVar.a = 1;
        }
        if (VideoPlayUtils.inferContentType(uri) == 3) {
            m.a dataSource = getDataSource();
            h.v(true);
            w wVar = new w(5);
            h.v(true);
            String str = this.customCacheKey;
            if (str == null) {
                str = uri.toString();
            }
            h.v(true);
            return new y(uri, dataSource, eVar, wVar, str, 1048576, null, null);
        }
        throw new IllegalStateException(this.context.getString(R.string.media_error));
    }

    public void removeMedia(int i2) {
        e0 e0Var = this.mediaSource;
        if (e0Var instanceof u) {
            u uVar = (u) e0Var;
            uVar.B(i2).i(null);
            synchronized (uVar) {
                int i3 = i2 + 1;
                h.m(true);
                Handler handler = uVar.f5079k;
                h0.f0(uVar.f5077i, i2, i3);
                if (handler != null) {
                    handler.obtainMessage(1, new u.h(i2, Integer.valueOf(i3), null)).sendToTarget();
                }
            }
        }
    }

    public void setClippingMediaUri(@NonNull e0 e0Var, long j2, long j3) {
        this.mediaSource = new r(e0Var, j2 * 1000, j3 * 1000);
    }

    public void setCustomCacheKey(@NonNull String str) {
        this.customCacheKey = str;
    }

    public void setIndexType(@Size(min = 0) int i2) {
        this.indexType = i2;
    }

    public void setLoopingMediaSource(@Size(min = 1) int i2, e0 e0Var) {
        this.mediaSource = new b0(e0Var, i2);
    }

    public void setMediaSource(e0 e0Var) {
        this.mediaSource = e0Var;
    }

    public <T extends ItemVideo> void setMediaSwitchUri(@Size(min = 0) int i2, int i3, @NonNull Uri uri, @NonNull List<T> list) {
        this.indexType = i2;
        this.videoUri = null;
        this.videoUri = new ArrayList();
        for (T t : list) {
            this.videoUri.add(t.getVideoUri());
        }
        setMediaUri(i2, uri, Uri.parse(list.get(i3).getVideoUri()));
    }

    public void setMediaUri(@NonNull Uri uri) {
        this.mediaSource = initMediaSource(uri);
    }

    public MediaSourceBuilder(@NonNull Context context, @Nullable DataSourceListener dataSourceListener) {
        this.indexType = -1;
        this.listener = dataSourceListener;
        this.context = context.getApplicationContext();
    }

    public void setMediaUri(@Size(min = 0) int i2, int i3, @NonNull Uri uri, @NonNull List<String> list) {
        this.videoUri = list;
        this.indexType = i2;
        setMediaUri(i2, uri, Uri.parse(list.get(i3)));
    }

    public void setMediaUri(@Size(min = 0) int i2, @NonNull Uri uri, @NonNull Uri uri2) {
        this.indexType = i2;
        u uVar = new u(new e0[0]);
        uVar.w(initMediaSource(uri));
        uVar.w(initMediaSource(uri2));
        this.mediaSource = uVar;
    }

    public void setMediaSwitchUri(@NonNull List<String> list, int i2) {
        this.videoUri = list;
        setMediaUri(Uri.parse(list.get(i2)));
    }

    public <T extends ItemVideo> void setMediaUri(@NonNull List<T> list) {
        e0[] e0VarArr = new e0[list.size()];
        int i2 = 0;
        for (T t : list) {
            if (t.getVideoUri() != null) {
                e0VarArr[i2] = initMediaSource(Uri.parse(t.getVideoUri()));
            }
            i2++;
        }
        this.mediaSource = new u(e0VarArr);
    }
}
