package com.tencent.smtt.sdk;

import android.content.Context;
import com.tencent.smtt.utils.TbsLog;
import java.util.Arrays;
/* loaded from: classes.dex */
public class TbsCoreLoadStat {

    /* renamed from: d  reason: collision with root package name */
    public static TbsCoreLoadStat f2507d = null;
    public static volatile int mLoadErrorCode = -1;
    public TbsSequenceQueue a = null;
    public boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public final int f2508c = 3;

    public static TbsCoreLoadStat getInstance() {
        if (f2507d == null) {
            f2507d = new TbsCoreLoadStat();
        }
        return f2507d;
    }

    public void a() {
        TbsSequenceQueue tbsSequenceQueue = this.a;
        if (tbsSequenceQueue != null) {
            tbsSequenceQueue.clear();
        }
        this.b = false;
    }

    public void a(Context context, int i2) {
        a(context, i2, null);
        TbsLog.e(TbsListener.tag_load_error, "" + i2);
    }

    /* loaded from: classes.dex */
    public class TbsSequenceQueue {
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f2509c;

        /* renamed from: d  reason: collision with root package name */
        public int[] f2510d;

        /* renamed from: e  reason: collision with root package name */
        public int f2511e;

        /* renamed from: f  reason: collision with root package name */
        public int f2512f;

        public TbsSequenceQueue() {
            this.b = 10;
            this.f2511e = 0;
            this.f2512f = 0;
            this.f2509c = 10;
            this.f2510d = new int[10];
        }

        public void add(int i2) {
            int i3 = this.f2512f;
            if (i3 <= this.f2509c - 1) {
                int[] iArr = this.f2510d;
                this.f2512f = i3 + 1;
                iArr[i3] = i2;
                return;
            }
            throw new IndexOutOfBoundsException("sequeue is full");
        }

        public void clear() {
            Arrays.fill(this.f2510d, 0);
            this.f2511e = 0;
            this.f2512f = 0;
        }

        public int element() {
            if (!empty()) {
                return this.f2510d[this.f2511e];
            }
            throw new IndexOutOfBoundsException("sequeue is null");
        }

        public boolean empty() {
            return this.f2512f == this.f2511e;
        }

        public int length() {
            return this.f2512f - this.f2511e;
        }

        public int remove() {
            if (!empty()) {
                int[] iArr = this.f2510d;
                int i2 = this.f2511e;
                int i3 = iArr[i2];
                this.f2511e = i2 + 1;
                iArr[i2] = 0;
                return i3;
            }
            throw new IndexOutOfBoundsException("sequeue is null");
        }

        public String toString() {
            if (empty()) {
                return "";
            }
            StringBuilder sb = new StringBuilder("[");
            for (int i2 = this.f2511e; i2 < this.f2512f; i2++) {
                sb.append(String.valueOf(this.f2510d[i2]) + ",");
            }
            int length = sb.length();
            StringBuilder delete = sb.delete(length - 1, length);
            delete.append("]");
            return delete.toString();
        }

        public TbsSequenceQueue(int i2, int i3) {
            this.b = 10;
            this.f2511e = 0;
            this.f2512f = 0;
            this.f2509c = i3;
            int[] iArr = new int[i3];
            this.f2510d = iArr;
            iArr[0] = i2;
            this.f2512f = 0 + 1;
        }
    }

    public synchronized void a(Context context, int i2, Throwable th) {
        if (mLoadErrorCode == -1) {
            mLoadErrorCode = i2;
            TbsLog.addLog(TbsLog.TBSLOG_CODE_SDK_LOAD_ERROR, "code=%d,desc=%s", Integer.valueOf(i2), String.valueOf(th));
            if (th != null) {
                TbsLogReport.getInstance(context).setLoadErrorCode(i2, th);
            } else {
                TbsLog.e("TbsCoreLoadStat", "setLoadErrorCode :: error is null with errorCode: " + i2 + "; Check & correct it!");
            }
            return;
        }
        TbsLog.w("TbsCoreLoadStat", "setLoadErrorCode :: error(" + mLoadErrorCode + ") was already reported; " + i2 + " is duplicated. Try to remove it!");
    }
}
