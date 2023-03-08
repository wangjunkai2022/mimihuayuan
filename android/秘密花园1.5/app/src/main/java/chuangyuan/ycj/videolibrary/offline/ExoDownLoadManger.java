package chuangyuan.ycj.videolibrary.offline;

import android.content.Context;
import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.i.a.a.e1.k;
import f.i.a.a.e1.l;
import f.i.a.a.e1.s;
import f.i.a.a.e1.w;
import f.i.a.a.l1.a0;
import f.i.a.a.l1.k0.f;
import f.i.a.a.l1.m;
import f.i.a.a.l1.t;
import f.i.a.a.l1.v;
import f.i.a.a.l1.z;
import f.i.a.a.r0;
import f.i.a.a.x0.b;
import f.i.a.a.x0.c;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class ExoDownLoadManger {
    public static final String DOWNLOAD_ACTION_FILE = "actions";
    public static final String DOWNLOAD_CONTENT_DIRECTORY = "downloads";
    public static final String DOWNLOAD_TRACKER_ACTION_FILE = "tracked_actions";
    public static final int MAX_SIMULTANEOUS_DOWNLOADS = 2;
    public static final String TAG = "chuangyuan.ycj.videolibrary.offline.ExoDownLoadManger";
    public Context context;
    public b databaseProvider;
    public f.i.a.a.l1.k0.b downloadCache;
    public File downloadDirectory;
    public s downloadManager;
    public DownloadTracker downloadTracker;
    public String userAgent;

    /* loaded from: classes.dex */
    public static class Holder {

        /* renamed from: h  reason: collision with root package name */
        public static ExoDownLoadManger f40h = new ExoDownLoadManger();
    }

    public static f buildReadOnlyCacheDataSource(t tVar, f.i.a.a.l1.k0.b bVar) {
        return new f(bVar, tVar, new z(), null, 2, null, null);
    }

    private b getDatabaseProvider() {
        if (this.databaseProvider == null) {
            this.databaseProvider = new c(this.context);
        }
        return this.databaseProvider;
    }

    public static ExoDownLoadManger getSingle() {
        return Holder.f40h;
    }

    private void upgradeActionFile(String str, k kVar, boolean z) {
        try {
            h.t1(new File(getDownloadDirectory(), str), null, kVar, true, z);
        } catch (IOException unused) {
        }
    }

    public m.a buildDataSourceFactory(Context context) {
        return buildReadOnlyCacheDataSource(new t(context, buildHttpDataSourceFactory()), getDownloadCache());
    }

    public a0.b buildHttpDataSourceFactory() {
        return new v(this.userAgent, null, 8000, 8000, false);
    }

    public r0 buildRenderersFactory(boolean z) {
        int i2 = useExtensionRenderers() ? z ? 2 : 1 : 0;
        f.i.a.a.v vVar = new f.i.a.a.v(this.context);
        vVar.f5882c = i2;
        return vVar;
    }

    public synchronized f.i.a.a.l1.k0.b getDownloadCache() {
        if (this.downloadCache == null) {
            this.downloadCache = new f.i.a.a.l1.k0.v(new File(getDownloadDirectory(), DOWNLOAD_CONTENT_DIRECTORY), new f.i.a.a.l1.k0.t(), getDatabaseProvider(), null, false, false);
        }
        return this.downloadCache;
    }

    public File getDownloadDirectory() {
        if (this.downloadDirectory == null) {
            File externalFilesDir = this.context.getExternalFilesDir(null);
            this.downloadDirectory = externalFilesDir;
            if (externalFilesDir == null) {
                this.downloadDirectory = this.context.getFilesDir();
            }
        }
        return this.downloadDirectory;
    }

    public s getDownloadManager() {
        return this.downloadManager;
    }

    public DownloadTracker getExoDownloadTracker() {
        return this.downloadTracker;
    }

    public synchronized void initDownloadManager(@NonNull Context context, @NonNull Class<? extends Object> cls, @NonNull String str) {
        this.context = context;
        this.userAgent = str;
        if (this.downloadManager == null) {
            k kVar = new k(getDatabaseProvider());
            upgradeActionFile("actions", kVar, false);
            upgradeActionFile(DOWNLOAD_TRACKER_ACTION_FILE, kVar, true);
            this.downloadManager = new s(context, kVar, new l(new w(getDownloadCache(), buildHttpDataSourceFactory())));
            this.downloadTracker = new DownloadTracker(context, buildDataSourceFactory(context), this.downloadManager);
        }
    }

    public boolean useExtensionRenderers() {
        return false;
    }

    public static f buildReadOnlyCacheDataSource(m.a aVar, f.i.a.a.l1.k0.b bVar) {
        return new f(bVar, aVar, new z(), null, 2, null, null);
    }
}
