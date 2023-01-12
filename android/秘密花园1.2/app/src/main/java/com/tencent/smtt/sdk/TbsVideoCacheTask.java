package com.tencent.smtt.sdk;

import android.content.Context;
import android.os.Bundle;
import com.tencent.smtt.export.external.DexLoader;

/* loaded from: classes.dex */
public class TbsVideoCacheTask {
    public static final String KEY_VIDEO_CACHE_PARAM_FILENAME = "filename";
    public static final String KEY_VIDEO_CACHE_PARAM_FOLDERPATH = "folderPath";
    public static final String KEY_VIDEO_CACHE_PARAM_HEADER = "header";
    public static final String KEY_VIDEO_CACHE_PARAM_URL = "url";
    public Context a;
    public TbsVideoCacheListener b;

    /* renamed from: e  reason: collision with root package name */
    public String f2565e;

    /* renamed from: f  reason: collision with root package name */
    public String f2566f;

    /* renamed from: c  reason: collision with root package name */
    public boolean f2563c = false;

    /* renamed from: d  reason: collision with root package name */
    public n f2564d = null;

    /* renamed from: g  reason: collision with root package name */
    public Object f2567g = null;

    public TbsVideoCacheTask(Context context, Bundle bundle, TbsVideoCacheListener tbsVideoCacheListener) {
        this.a = null;
        this.b = null;
        this.a = context;
        this.b = tbsVideoCacheListener;
        if (bundle != null) {
            this.f2565e = bundle.getString("taskId");
            this.f2566f = bundle.getString(KEY_VIDEO_CACHE_PARAM_URL);
        }
        a(bundle);
    }

    private void a(Bundle bundle) {
        DexLoader dexLoader;
        if (this.f2564d == null) {
            d.a(true).a(this.a, false, false);
            r a = d.a(true).a();
            if (a != null) {
                dexLoader = a.b();
            } else {
                this.b.onVideoDownloadError(this, -1, "init engine error!", null);
                dexLoader = null;
            }
            if (dexLoader != null) {
                this.f2564d = new n(dexLoader);
            } else {
                this.b.onVideoDownloadError(this, -1, "Java dexloader invalid!", null);
            }
        }
        n nVar = this.f2564d;
        if (nVar != null) {
            Object a2 = nVar.a(this.a, this, bundle);
            this.f2567g = a2;
            if (a2 == null) {
                this.b.onVideoDownloadError(this, -1, "init task error!", null);
                return;
            }
            return;
        }
        TbsVideoCacheListener tbsVideoCacheListener = this.b;
        if (tbsVideoCacheListener != null) {
            tbsVideoCacheListener.onVideoDownloadError(this, -1, "init error!", null);
        }
    }

    public long getContentLength() {
        n nVar = this.f2564d;
        if (nVar != null && this.f2567g != null) {
            return nVar.d();
        }
        TbsVideoCacheListener tbsVideoCacheListener = this.b;
        if (tbsVideoCacheListener != null) {
            tbsVideoCacheListener.onVideoDownloadError(this, -1, "getContentLength failed, init uncompleted!", null);
            return 0L;
        }
        return 0L;
    }

    public int getDownloadedSize() {
        n nVar = this.f2564d;
        if (nVar != null && this.f2567g != null) {
            return nVar.e();
        }
        TbsVideoCacheListener tbsVideoCacheListener = this.b;
        if (tbsVideoCacheListener != null) {
            tbsVideoCacheListener.onVideoDownloadError(this, -1, "getDownloadedSize failed, init uncompleted!", null);
            return 0;
        }
        return 0;
    }

    public int getProgress() {
        n nVar = this.f2564d;
        if (nVar != null && this.f2567g != null) {
            return nVar.f();
        }
        TbsVideoCacheListener tbsVideoCacheListener = this.b;
        if (tbsVideoCacheListener != null) {
            tbsVideoCacheListener.onVideoDownloadError(this, -1, "getProgress failed, init uncompleted!", null);
            return 0;
        }
        return 0;
    }

    public String getTaskID() {
        return this.f2565e;
    }

    public String getTaskUrl() {
        return this.f2566f;
    }

    public void pauseTask() {
        n nVar = this.f2564d;
        if (nVar != null && this.f2567g != null) {
            nVar.a();
            return;
        }
        TbsVideoCacheListener tbsVideoCacheListener = this.b;
        if (tbsVideoCacheListener != null) {
            tbsVideoCacheListener.onVideoDownloadError(this, -1, "pauseTask failed, init uncompleted!", null);
        }
    }

    public void removeTask(boolean z) {
        n nVar = this.f2564d;
        if (nVar != null && this.f2567g != null) {
            nVar.a(z);
            return;
        }
        TbsVideoCacheListener tbsVideoCacheListener = this.b;
        if (tbsVideoCacheListener != null) {
            tbsVideoCacheListener.onVideoDownloadError(this, -1, "removeTask failed, init uncompleted!", null);
        }
    }

    public void resumeTask() {
        n nVar = this.f2564d;
        if (nVar != null && this.f2567g != null) {
            nVar.b();
            return;
        }
        TbsVideoCacheListener tbsVideoCacheListener = this.b;
        if (tbsVideoCacheListener != null) {
            tbsVideoCacheListener.onVideoDownloadError(this, -1, "resumeTask failed, init uncompleted!", null);
        }
    }

    public void stopTask() {
        n nVar = this.f2564d;
        if (nVar != null && this.f2567g != null) {
            nVar.c();
            return;
        }
        TbsVideoCacheListener tbsVideoCacheListener = this.b;
        if (tbsVideoCacheListener != null) {
            tbsVideoCacheListener.onVideoDownloadError(this, -1, "stopTask failed, init uncompleted!", null);
        }
    }
}
