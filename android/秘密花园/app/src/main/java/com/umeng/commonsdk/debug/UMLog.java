package com.umeng.commonsdk.debug;

import android.os.Bundle;
import android.text.TextUtils;
import com.umeng.commonsdk.UMConfigure;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UMLog {
    public static final String AQ = "├───────────────────解决方案─────────────────────────────────────────────────────────────────────────────";
    public static final String BOTTOM_BORDER = "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────";
    public static final char BOTTOM_LEFT_CORNER = 9492;
    public static final String DOUBLE_DIVIDER = "────────────────────────────────────────────────────────";
    public static final String DOUBLE_DIVIDER_AQ = "───────────────────问题─────────────────────";
    public static final char HORIZONTAL_LINE = 9474;
    public static final String INDENT = "     ";
    public static final int JSON_INDENT = 2;
    public static final int KEYLENGTH = 10;
    public static final String MIDDLE_BORDER = "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";
    public static final char MIDDLE_CORNER = 9500;
    public static final String SINGLE_DIVIDER = "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄";
    public static final String SINGLE_DIVIDER_AQ = "───────────────────解决方案─────────────────────";
    public static final String TAG = "UMLog";
    public static final String TOP_BORDER = "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────";
    public static final String TOP_BORDER_AQ = "┌───────────────────问题─────────────────────────────────────────────────────────────────────────────";
    public static final char TOP_LEFT_CORNER = 9484;

    public static void aq(int i2, String str, String str2) {
        try {
            if (UMConfigure.isDebugLog()) {
                UInterface logger = getLogger(i2);
                logger.log(TAG, TOP_BORDER_AQ);
                logger.log(TAG, "│     " + str);
                logger.log(TAG, AQ);
                logger.log(TAG, "│     " + str2);
                logger.log(TAG, BOTTOM_BORDER);
            }
        } catch (Exception unused) {
        }
    }

    public static void bundle(int i2, Bundle bundle) {
        bundle(null, i2, bundle);
    }

    public static UInterface getLogger(int i2) {
        if (i2 == 0) {
            return new E();
        }
        if (i2 == 1) {
            return new W();
        }
        if (i2 == 2) {
            return new I();
        }
        if (i2 != 3) {
            return new D();
        }
        return new D();
    }

    public static void jsonArry(JSONArray jSONArray) {
        try {
            if (UMConfigure.isDebugLog()) {
                jSONArray.toString(2);
            }
        } catch (Exception unused) {
        }
    }

    public static void jsonObject(JSONObject jSONObject) {
        try {
            if (UMConfigure.isDebugLog()) {
                jSONObject.toString(2);
            }
        } catch (Exception unused) {
        }
    }

    public static void mutlInfo(int i2, String... strArr) {
        try {
            if (UMConfigure.isDebugLog()) {
                int length = strArr.length;
                UInterface logger = getLogger(i2);
                if (length == 1) {
                    logger.log(TAG, strArr[0]);
                } else if (length >= 2) {
                    logger.log(TAG, TOP_BORDER);
                    for (int i3 = 0; i3 < length; i3++) {
                        logger.log(TAG, "│     " + strArr[i3]);
                        if (i3 != length - 1) {
                            logger.log(TAG, MIDDLE_BORDER);
                        }
                    }
                    logger.log(TAG, BOTTOM_BORDER);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void bundle(String str, int i2, Bundle bundle) {
        String str2;
        try {
            if (UMConfigure.isDebugLog()) {
                if (TextUtils.isEmpty(str)) {
                    str2 = TAG;
                } else {
                    str2 = "UMLog_" + str;
                }
                if (bundle != null) {
                    UInterface logger = getLogger(i2);
                    logger.log(str2, TOP_BORDER);
                    logger.log(str2, "│key│value");
                    logger.log(str2, MIDDLE_BORDER);
                    for (String str3 : bundle.keySet()) {
                        if (!TextUtils.isEmpty(str3) && bundle.get(str3) != null) {
                            logger.log(str2, HORIZONTAL_LINE + str3 + HORIZONTAL_LINE + bundle.get(str3).toString());
                            logger.log(str2, MIDDLE_BORDER);
                        }
                    }
                    logger.log(str2, BOTTOM_BORDER);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void jsonArry(String str, JSONArray jSONArray) {
        try {
            if (UMConfigure.isDebugLog()) {
                jSONArray.toString(2);
            }
        } catch (Exception unused) {
        }
    }

    public static void jsonObject(String str, JSONObject jSONObject) {
        try {
            if (UMConfigure.isDebugLog()) {
                jSONObject.toString(2);
            }
        } catch (Exception unused) {
        }
    }

    public static void aq(String str, int i2, String str2, String str3) {
        try {
            if (UMConfigure.isDebugLog()) {
                UInterface logger = getLogger(i2);
                String str4 = "UMLog_" + str;
                logger.log(str4, TOP_BORDER_AQ);
                logger.log(str4, "│     " + str2);
                logger.log(str4, AQ);
                logger.log(str4, "│     " + str3);
                logger.log(str4, BOTTOM_BORDER);
            }
        } catch (Exception unused) {
        }
    }

    public static void mutlInfo(String str, int i2, String... strArr) {
        try {
            if (UMConfigure.isDebugLog()) {
                int length = strArr.length;
                UInterface logger = getLogger(i2);
                String str2 = "UMLog_" + str;
                if (length == 1) {
                    logger.log(str2, strArr[0]);
                } else if (length >= 2) {
                    logger.log(str2, TOP_BORDER);
                    for (int i3 = 0; i3 < length; i3++) {
                        logger.log(str2, "│     " + strArr[i3]);
                        if (i3 != length - 1) {
                            logger.log(str2, MIDDLE_BORDER);
                        }
                    }
                    logger.log(str2, BOTTOM_BORDER);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void aq(String str, int i2, String str2) {
        aq((String) null, str, i2, str2);
    }

    public static void aq(String str, int i2, String str2, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4) {
        aq(null, str, i2, str2, strArr, strArr2, strArr3, strArr4);
    }

    public static void aq(String str, String str2, int i2, String str3) {
        aq(str, str2, i2, str3, null, null, null, null);
    }

    public static void mutlInfo(String str, int i2, String str2) {
        mutlInfo(null, str, i2, str2);
    }

    public static void aq(String str, String str2, int i2, String str3, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4) {
        String str4;
        String[] split;
        try {
            if (UMConfigure.isDebugLog()) {
                if (TextUtils.isEmpty(str)) {
                    str4 = TAG;
                } else {
                    str4 = "UMLog_" + str;
                }
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && (split = str2.split(str3)) != null && split.length >= 2) {
                    if (strArr != null && strArr.length > 0 && strArr2 != null && strArr2.length > 0) {
                        int i3 = 0;
                        while (i3 < strArr.length && i3 < strArr2.length) {
                            split[0] = split[0].replace(strArr[i3], strArr2[i3]);
                            i3++;
                        }
                    }
                    if (strArr3 != null && strArr3.length > 0 && strArr4 != null && strArr4.length > 0) {
                        int i4 = 0;
                        while (i4 < strArr3.length && i4 < strArr4.length) {
                            split[1] = split[1].replace(strArr3[i4], strArr4[i4]);
                            i4++;
                        }
                    }
                    UInterface logger = getLogger(i2);
                    logger.log(str4, TOP_BORDER_AQ);
                    logger.log(str4, "│     " + split[0]);
                    logger.log(str4, AQ);
                    logger.log(str4, "│     " + split[1]);
                    logger.log(str4, BOTTOM_BORDER);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void mutlInfo(String str, int i2, String str2, String[] strArr, String[] strArr2) {
        mutlInfo(null, str, i2, str2, strArr, strArr2);
    }

    public static void mutlInfo(String str, String str2, int i2, String str3) {
        mutlInfo(str, str2, i2, str3, null, null);
    }

    public static void mutlInfo(String str, String str2, int i2, String str3, String[] strArr, String[] strArr2) {
        String str4;
        try {
            if (UMConfigure.isDebugLog()) {
                if (TextUtils.isEmpty(str)) {
                    str4 = TAG;
                } else {
                    str4 = "UMLog_" + str;
                }
                if (!TextUtils.isEmpty(str2)) {
                    if (strArr != null && strArr.length > 0 && strArr2 != null && strArr2.length > 0) {
                        int i3 = 0;
                        while (i3 < strArr.length && i3 < strArr2.length) {
                            str2 = str2.replace(strArr[i3], strArr2[i3]);
                            i3++;
                        }
                    }
                    UInterface logger = getLogger(i2);
                    if (TextUtils.isEmpty(str3)) {
                        logger.log(str4, str2);
                        return;
                    }
                    String[] split = str2.split(str3);
                    if (split != null) {
                        logger.log(str4, TOP_BORDER);
                        for (int i4 = 0; i4 < split.length; i4++) {
                            logger.log(str4, "│     " + split[i4]);
                            if (i4 != split.length - 1) {
                                logger.log(str4, MIDDLE_BORDER);
                            }
                        }
                        logger.log(str4, BOTTOM_BORDER);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
