package chuangyuan.ycj.videolibrary.factory;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.umeng.commonsdk.framework.UMModuleRegister;
import f.i.a.a.l1.k0.c;
import f.i.a.a.l1.k0.e;
import f.i.a.a.l1.k0.s;
import f.i.a.a.l1.k0.v;
import f.i.a.a.l1.m;
import f.i.a.a.l1.y;
import java.io.File;
/* loaded from: classes.dex */
public class DefaultCacheDataSourceFactory implements m.a {
    public final JDefaultDataSourceFactory defaultDatasourceFactory;
    public final e.a listener;
    public long maxCacheSize;
    public v simpleCache;

    public DefaultCacheDataSourceFactory(@NonNull Context context) {
        this(context, null, 1099511627776L, null, null);
    }

    @Override // f.i.a.a.l1.m.a
    public m createDataSource() {
        return new e(this.simpleCache, this.defaultDatasourceFactory.createDataSource(), new y(), new c(this.simpleCache, this.maxCacheSize, UMModuleRegister.PUSH_EVENT_VALUE_HIGH), 1, this.listener, null);
    }

    public DefaultCacheDataSourceFactory(@NonNull Context context, long j2) {
        this(context, null, j2, null, null);
    }

    public DefaultCacheDataSourceFactory(@NonNull Context context, long j2, byte[] bArr) {
        this(context, null, j2, bArr, null);
    }

    public DefaultCacheDataSourceFactory(@NonNull Context context, long j2, byte[] bArr, @Nullable e.a aVar) {
        this(context, null, j2, bArr, aVar);
    }

    public DefaultCacheDataSourceFactory(@NonNull Context context, String str, long j2, byte[] bArr, @Nullable e.a aVar) {
        this.maxCacheSize = 0L;
        this.listener = aVar;
        this.maxCacheSize = j2;
        if (str == null) {
            File externalFilesDir = context.getApplicationContext().getExternalFilesDir("media");
            externalFilesDir = externalFilesDir == null ? context.getApplicationContext().getFilesDir() : externalFilesDir;
            if (!externalFilesDir.exists()) {
                externalFilesDir.mkdirs();
            }
            this.simpleCache = new v(externalFilesDir, new s(j2), bArr);
        } else {
            this.simpleCache = new v(new File(str), new s(j2), bArr);
        }
        this.defaultDatasourceFactory = new JDefaultDataSourceFactory(context);
    }
}
