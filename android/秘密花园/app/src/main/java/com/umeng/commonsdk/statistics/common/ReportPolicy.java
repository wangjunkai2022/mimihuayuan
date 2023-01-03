package com.umeng.commonsdk.statistics.common;

import android.content.Context;
import androidx.appcompat.widget.TooltipCompatHandler;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMModuleRegister;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.Defcon;

/* loaded from: classes.dex */
public class ReportPolicy {
    public static final int BATCH_AT_LAUNCH = 1;
    public static final int BATCH_AT_TERMINATE = 2;
    public static final int BATCH_BY_INTERVAL = 6;
    public static final int DAILY = 4;
    public static final int IMMEDIATE = 3;
    public static final int QUASI_REALTIME_POLICY = 11;
    public static final int REALTIME = 0;
    public static final int SMART_POLICY = 8;
    public static final int WIFIONLY = 5;

    /* loaded from: classes.dex */
    public static class DebugPolicy extends ReportStrategy {
        public final long ReportInterval = TooltipCompatHandler.HOVER_HIDE_TIMEOUT_MS;
        public StatTracer mTracer;

        public DebugPolicy(StatTracer statTracer) {
            this.mTracer = statTracer;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - UMEnvelopeBuild.lastSuccessfulBuildTime(UMModuleRegister.getAppContext()) >= TooltipCompatHandler.HOVER_HIDE_TIMEOUT_MS;
        }
    }

    /* loaded from: classes.dex */
    public static class DefconPolicy extends ReportStrategy {
        public Defcon defcon;
        public StatTracer tracer;

        public DefconPolicy(StatTracer statTracer, Defcon defcon) {
            this.tracer = statTracer;
            this.defcon = defcon;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean isValid() {
            return this.defcon.isOpen();
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - UMEnvelopeBuild.lastSuccessfulBuildTime(UMModuleRegister.getAppContext()) >= this.defcon.getReqInterval();
        }

        public boolean shouldSendMessageByInstant() {
            return System.currentTimeMillis() - UMEnvelopeBuild.lastInstantBuildTime(UMModuleRegister.getAppContext()) >= this.defcon.getReqInterval();
        }
    }

    /* loaded from: classes.dex */
    public static class LatentPolicy extends ReportStrategy {
        public long latency;
        public long start;

        public LatentPolicy(int i2) {
            this.start = 0;
            this.latency = (long) i2;
            this.start = System.currentTimeMillis();
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean isValid() {
            return System.currentTimeMillis() - this.start < this.latency;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - this.start >= this.latency;
        }
    }

    /* loaded from: classes.dex */
    public static class ReportAtLaunch extends ReportStrategy {
        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return z;
        }
    }

    /* loaded from: classes.dex */
    public static class ReportByInterval extends ReportStrategy {
        public static long MAX_REPORT_INTERVAL = 86400000;
        public static long MIN_REPORT_INTERVAL = 90000;
        public long mReportInterval;
        public StatTracer mTracer;

        public ReportByInterval(StatTracer statTracer, long j2) {
            this.mTracer = statTracer;
            setReportInterval(j2);
        }

        public static boolean isValidValue(int i2) {
            return ((long) i2) >= MIN_REPORT_INTERVAL;
        }

        public long getReportInterval() {
            return this.mReportInterval;
        }

        public void setReportInterval(long j2) {
            if (j2 < MIN_REPORT_INTERVAL || j2 > MAX_REPORT_INTERVAL) {
                this.mReportInterval = MIN_REPORT_INTERVAL;
            } else {
                this.mReportInterval = j2;
            }
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return z || System.currentTimeMillis() - UMEnvelopeBuild.lastSuccessfulBuildTime(UMModuleRegister.getAppContext()) >= this.mReportInterval;
        }
    }

    /* loaded from: classes.dex */
    public static class ReportDaily extends ReportStrategy {
        public long HOURS_DAY = 86400000;
        public StatTracer mTracer;

        public ReportDaily(StatTracer statTracer) {
            this.mTracer = statTracer;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - UMEnvelopeBuild.lastSuccessfulBuildTime(UMModuleRegister.getAppContext()) >= this.HOURS_DAY;
        }
    }

    /* loaded from: classes.dex */
    public static class ReportQuasiRealtime extends ReportStrategy {
        public static long MAX_REPORT_INTERVAL = 90000;
        public static long MIN_REPORT_INTERVAL = 15000;
        public long mReportInterval;

        public long getReportInterval() {
            return this.mReportInterval;
        }

        public void setReportInterval(long j2) {
            if (j2 < MIN_REPORT_INTERVAL || j2 > MAX_REPORT_INTERVAL) {
                this.mReportInterval = MIN_REPORT_INTERVAL;
            } else {
                this.mReportInterval = j2;
            }
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class ReportRealtime extends ReportStrategy {
        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class ReportStrategy {
        public boolean isValid() {
            return true;
        }

        public boolean shouldSendMessage(boolean z) {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class ReportWifiOnly extends ReportStrategy {
        public Context mContext;

        public ReportWifiOnly(Context context) {
            this.mContext = null;
            this.mContext = context;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return DeviceConfig.isWiFiAvailable(this.mContext);
        }
    }

    /* loaded from: classes.dex */
    public static class SmartPolicy extends ReportStrategy {
        public final long ReportInterval = 10800000;
        public StatTracer mTracer;

        public SmartPolicy(StatTracer statTracer) {
            this.mTracer = statTracer;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - UMEnvelopeBuild.lastSuccessfulBuildTime(UMModuleRegister.getAppContext()) >= 10800000;
        }
    }

    public static boolean isValid(int i2) {
        if (!(i2 == 8 || i2 == 11)) {
            switch (i2) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }
}
