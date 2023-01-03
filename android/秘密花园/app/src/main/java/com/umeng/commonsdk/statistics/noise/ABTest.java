package com.umeng.commonsdk.statistics.noise;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.d;
import f.b.a.a.a;

/* loaded from: classes.dex */
public class ABTest implements d {
    public static ABTest instance;
    public Context context;
    public boolean isInTest = false;
    public int mPolicy = -1;
    public int mInterval = -1;
    public int mGroup = -1;
    public float mProb13 = 0.0f;
    public float mProb07 = 0.0f;
    public String mPoli = null;

    public ABTest(Context context, String str, int i2) {
        this.context = null;
        this.context = context;
        onExperimentChanged(str, i2);
    }

    public static synchronized ABTest getService(Context context) {
        ABTest aBTest;
        synchronized (ABTest.class) {
            if (instance == null) {
                instance = new ABTest(context, UMEnvelopeBuild.imprintProperty(context, "client_test", null), Integer.valueOf(UMEnvelopeBuild.imprintProperty(context, "test_report_interval", "0")).intValue());
            }
            aBTest = instance;
        }
        return aBTest;
    }

    private void parseFIXED(String str) {
        if (str != null) {
            String[] split = str.split("\\|");
            float f2 = 0.0f;
            if (split[2].equals("SIG13")) {
                f2 = Float.valueOf(split[3]).floatValue();
            }
            if (this.mProb13 > f2) {
                this.isInTest = false;
                return;
            }
            int intValue = split[0].equals("FIXED") ? Integer.valueOf(split[1]).intValue() : -1;
            int[] iArr = null;
            if (split[4].equals("RPT")) {
                this.mPoli = "RPT";
                String[] split2 = split[5].split(",");
                iArr = new int[split2.length];
                for (int i2 = 0; i2 < split2.length; i2++) {
                    iArr[i2] = Integer.valueOf(split2[i2]).intValue();
                }
            } else if (split[4].equals("DOM")) {
                this.mPoli = "DOM";
                this.isInTest = true;
                try {
                    String[] split3 = split[5].split(",");
                    iArr = new int[split3.length];
                    for (int i3 = 0; i3 < split3.length; i3++) {
                        iArr[i3] = Integer.valueOf(split3[i3]).intValue();
                    }
                } catch (Exception unused) {
                }
            }
            if (intValue != -1) {
                this.isInTest = true;
                this.mGroup = intValue;
                if (iArr != null) {
                    this.mPolicy = iArr[intValue - 1];
                    return;
                }
                return;
            }
            this.isInTest = false;
        }
    }

    private void parseSig7(String str) {
        float[] fArr;
        if (str != null) {
            String[] split = str.split("\\|");
            float f2 = 0.0f;
            if (this.mProb13 > (split[2].equals("SIG13") ? Float.valueOf(split[3]).floatValue() : 0.0f)) {
                this.isInTest = false;
                return;
            }
            int[] iArr = null;
            if (split[0].equals("SIG7")) {
                String[] split2 = split[1].split(",");
                fArr = new float[split2.length];
                for (int i2 = 0; i2 < split2.length; i2++) {
                    fArr[i2] = Float.valueOf(split2[i2]).floatValue();
                }
            } else {
                fArr = null;
            }
            if (split[4].equals("RPT")) {
                this.mPoli = "RPT";
                String[] split3 = split[5].split(",");
                iArr = new int[split3.length];
                for (int i3 = 0; i3 < split3.length; i3++) {
                    iArr[i3] = Integer.valueOf(split3[i3]).intValue();
                }
            } else if (split[4].equals("DOM")) {
                this.isInTest = true;
                this.mPoli = "DOM";
                try {
                    String[] split4 = split[5].split(",");
                    iArr = new int[split4.length];
                    for (int i4 = 0; i4 < split4.length; i4++) {
                        iArr[i4] = Integer.valueOf(split4[i4]).intValue();
                    }
                } catch (Exception unused) {
                }
            }
            int i5 = 0;
            while (true) {
                if (i5 >= fArr.length) {
                    i5 = -1;
                    break;
                }
                f2 += fArr[i5];
                if (this.mProb07 < f2) {
                    break;
                }
                i5++;
            }
            if (i5 != -1) {
                this.isInTest = true;
                this.mGroup = i5 + 1;
                if (iArr != null) {
                    this.mPolicy = iArr[i5];
                    return;
                }
                return;
            }
            this.isInTest = false;
        }
    }

    private float prob(String str, int i2) {
        int i3 = i2 * 2;
        if (str == null) {
            return 0.0f;
        }
        return ((float) Integer.valueOf(str.substring(i3, i3 + 5), 16).intValue()) / 1048576.0f;
    }

    public static boolean validate(String str) {
        int parseInt;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String[] split = str.split("\\|");
        if (split.length != 6) {
            return false;
        }
        if (split[0].startsWith("SIG7") && split[1].split(",").length == split[5].split(",").length) {
            return true;
        }
        if (!split[0].startsWith("FIXED") || split[5].split(",").length < (parseInt = Integer.parseInt(split[1])) || parseInt < 1) {
            return false;
        }
        return true;
    }

    public int getGroup() {
        return this.mGroup;
    }

    public String getGroupInfo() {
        if (!this.isInTest) {
            return b.N;
        }
        return String.valueOf(this.mGroup);
    }

    public int getTestInterval() {
        return this.mInterval;
    }

    public String getTestName() {
        return this.mPoli;
    }

    public int getTestPolicy() {
        return this.mPolicy;
    }

    public boolean isInTest() {
        return this.isInTest;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:18:0x0018 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v1, resolved type: boolean */
    /* JADX DEBUG: Multi-variable search result rejected for r0v3, resolved type: java.lang.StringBuilder */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.String] */
    public void onExperimentChanged(String str, int i2) {
        this.mInterval = i2;
        String signature = Envelope.getSignature(this.context);
        boolean z = 0;
        if (TextUtils.isEmpty(signature) || TextUtils.isEmpty(str)) {
            this.isInTest = false;
            return;
        }
        try {
            this.mProb13 = prob(signature, 12);
            this.mProb07 = prob(signature, 6);
            if (str.startsWith("SIG7")) {
                parseSig7(str);
            } else if (str.startsWith("FIXED")) {
                parseFIXED(str);
            }
        } catch (Exception e2) {
            while (true) {
                this.isInTest = z;
                StringBuilder sb = new StringBuilder();
                z = "v:";
                sb.append((String) z);
                sb.append(str);
                str = sb.toString();
                MLog.e(str, e2);
                return;
            }
        }
    }

    @Override // com.umeng.commonsdk.statistics.internal.d
    public void onImprintChanged(ImprintHandler.a aVar) {
        onExperimentChanged(aVar.a("client_test", null), Integer.valueOf(aVar.a("test_report_interval", "0")).intValue());
    }

    public String toString() {
        StringBuilder o = a.o(" p13:");
        o.append(this.mProb13);
        o.append(" p07:");
        o.append(this.mProb07);
        o.append(" policy:");
        o.append(this.mPolicy);
        o.append(" interval:");
        o.append(this.mInterval);
        return o.toString();
    }
}
