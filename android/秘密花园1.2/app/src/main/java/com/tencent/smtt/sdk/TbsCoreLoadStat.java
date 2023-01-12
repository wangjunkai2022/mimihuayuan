package com.tencent.smtt.sdk;

import android.content.Context;
import com.tencent.smtt.utils.TbsLog;
import java.util.Arrays;

/* loaded from: classes.dex */
public class TbsCoreLoadStat {

    /* renamed from: d  reason: collision with root package name */
    public static TbsCoreLoadStat f2503d = null;
    public static volatile int mLoadErrorCode = -1;
    public TbsSequenceQueue a = null;
    public boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public final int f2504c = 3;

    public static TbsCoreLoadStat getInstance() {
        if (f2503d == null) {
            f2503d = new TbsCoreLoadStat();
        }
        return f2503d;
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
        public int f2505c;

        /* renamed from: d  reason: collision with root package name */
        public int[] f2506d;

        /* renamed from: e  reason: collision with root package name */
        public int f2507e;

        /* renamed from: f  reason: collision with root package name */
        public int f2508f;

        public TbsSequenceQueue() {
            this.b = 10;
            this.f2507e = 0;
            this.f2508f = 0;
            this.f2505c = 10;
            this.f2506d = new int[10];
        }

        public void add(int i2) {
            int i3 = this.f2508f;
            if (i3 <= this.f2505c - 1) {
                int[] iArr = this.f2506d;
                this.f2508f = i3 + 1;
                iArr[i3] = i2;
                return;
            }
            throw new IndexOutOfBoundsException("sequeue is full");
        }

        public void clear() {
            Arrays.fill(this.f2506d, 0);
            this.f2507e = 0;
            this.f2508f = 0;
        }

        public int element() {
            if (!empty()) {
                return this.f2506d[this.f2507e];
            }
            throw new IndexOutOfBoundsException("sequeue is null");
        }

        public boolean empty() {
            return this.f2508f == this.f2507e;
        }

        public int length() {
            return this.f2508f - this.f2507e;
        }

        public int remove() {
            if (!empty()) {
                int[] iArr = this.f2506d;
                int i2 = this.f2507e;
                int i3 = iArr[i2];
                this.f2507e = i2 + 1;
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
            for (int i2 = this.f2507e; i2 < this.f2508f; i2++) {
                sb.append(String.valueOf(this.f2506d[i2]) + ",");
            }
            int length = sb.length();
            StringBuilder delete = sb.delete(length - 1, length);
            delete.append("]");
            return delete.toString();
        }

        public TbsSequenceQueue(int i2, int i3) {
            this.b = 10;
            this.f2507e = 0;
            this.f2508f = 0;
            this.f2505c = i3;
            int[] iArr = new int[i3];
            this.f2506d = iArr;
            iArr[0] = i2;
            this.f2508f = 0 + 1;
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
