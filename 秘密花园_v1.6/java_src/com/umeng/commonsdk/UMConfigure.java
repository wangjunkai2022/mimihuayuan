package com.umeng.commonsdk;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMLogCommon;
import com.umeng.commonsdk.framework.UMFrUtils;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.b;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class UMConfigure {
    public static final int DEVICE_TYPE_BOX = 2;
    public static final int DEVICE_TYPE_PHONE = 1;
    public static final String KEY_FILE_NAME_APPKEY = "APPKEY";
    public static final String KEY_FILE_NAME_LOG = "LOG";
    public static final String KEY_METHOD_NAME_PUSH_SETCHANNEL = "setMessageChannel";
    public static final String KEY_METHOD_NAME_PUSH_SET_SECRET = "setSecret";
    public static final String KEY_METHOD_NAME_SETAPPKEY = "setAppkey";
    public static final String KEY_METHOD_NAME_SETCHANNEL = "setChannel";
    public static final String KEY_METHOD_NAME_SETDEBUGMODE = "setDebugMode";
    public static final String TAG = "UMConfigure";
    public static final String WRAPER_TYPE_COCOS2DX_X = "Cocos2d-x";
    public static final String WRAPER_TYPE_COCOS2DX_XLUA = "Cocos2d-x_lua";
    public static final String WRAPER_TYPE_FLUTTER = "flutter";
    public static final String WRAPER_TYPE_HYBRID = "hybrid";
    public static final String WRAPER_TYPE_NATIVE = "native";
    public static final String WRAPER_TYPE_PHONEGAP = "phonegap";
    public static final String WRAPER_TYPE_REACTNATIVE = "react-native";
    public static final String WRAPER_TYPE_UNITY = "Unity";
    public static final String WRAPER_TYPE_WEEX = "weex";
    public static boolean debugLog = false;
    public static UMLog umDebugLog = new UMLog();
    public static boolean isFinish = false;
    public static Object lockObject = new Object();

    public static Class<?> getClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static Object getDecInstanceObject(Class<?> cls) {
        Constructor<?> constructor;
        if (cls != null) {
            try {
                constructor = cls.getDeclaredConstructor(new Class[0]);
            } catch (NoSuchMethodException unused) {
                constructor = null;
            }
            if (constructor != null) {
                constructor.setAccessible(true);
                try {
                    return constructor.newInstance(new Object[0]);
                } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused2) {
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    public static Method getDecMethod(Class<?> cls, String str, Class<?>[] clsArr) {
        Method method = null;
        if (cls != null) {
            try {
                method = cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
            }
            if (method != null) {
                method.setAccessible(true);
            }
        }
        return method;
    }

    public static boolean getInitStatus() {
        boolean z;
        synchronized (lockObject) {
            z = isFinish;
        }
        return z;
    }

    private Object getInstanceObject(Class<?> cls) {
        if (cls != null) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException | InstantiationException unused) {
            }
        }
        return null;
    }

    public static String[] getTestDeviceInfo(Context context) {
        String[] strArr = new String[2];
        if (context != null) {
            try {
                strArr[0] = DeviceConfig.getDeviceIdForGeneral(context);
                strArr[1] = DeviceConfig.getMac(context);
            } catch (Exception unused) {
            }
        }
        return strArr;
    }

    public static String getUMIDString(Context context) {
        if (context != null) {
            return UMUtils.getUMId(context.getApplicationContext());
        }
        return null;
    }

    public static void init(Context context, int i2, String str) {
        init(context, null, null, i2, str);
    }

    public static void invoke(Method method, Object obj, Object[] objArr) {
        if (method == null || obj == null) {
            return;
        }
        try {
            method.invoke(obj, objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
        }
    }

    public static boolean isDebugLog() {
        return debugLog;
    }

    public static void saveSDKComponent() {
        StringBuffer stringBuffer = new StringBuffer();
        if (getClass("com.umeng.analytics.vismode.V") != null) {
            stringBuffer.append("v");
        } else if (getClass("com.umeng.analytics.MobclickAgent") != null) {
            stringBuffer.append("a");
        }
        if (getClass("com.umeng.visual.UMVisualAgent") != null) {
            stringBuffer.append("x");
        }
        if (getClass("com.umeng.message.PushAgent") != null) {
            stringBuffer.append(e.ao);
        }
        if (getClass("com.umeng.socialize.UMShareAPI") != null) {
            stringBuffer.append(e.ap);
        }
        if (getClass("com.umeng.error.UMError") != null) {
            stringBuffer.append("e");
        }
        stringBuffer.append(e.aq);
        if (SdkVersion.SDK_TYPE != 1 && getClass("com.umeng.commonsdk.internal.UMOplus") != null) {
            stringBuffer.append("o");
        }
        if (TextUtils.isEmpty(stringBuffer)) {
            return;
        }
        b.a = stringBuffer.toString();
        UMSLEnvelopeBuild.module = stringBuffer.toString();
    }

    public static void setCheckDevice(boolean z) {
        AnalyticsConstants.CHECK_DEVICE = z;
    }

    public static void setEncryptEnabled(boolean z) {
        b.a(z);
        UMSLEnvelopeBuild.setEncryptEnabled(z);
    }

    public static void setFile(Class<?> cls, String str, String str2) {
        if (cls != null) {
            try {
                cls.getField(str).set(str, str2);
            } catch (Exception unused) {
            }
        }
    }

    public static void setLatencyWindow(long j2) {
        com.umeng.commonsdk.statistics.a.f3243c = ((int) j2) * 1000;
    }

    public static void setLogEnabled(boolean z) {
        try {
            debugLog = z;
            MLog.DEBUG = z;
            Class<?> cls = getClass("com.umeng.message.PushAgent");
            invoke(getDecMethod(cls, KEY_METHOD_NAME_SETDEBUGMODE, new Class[]{Boolean.TYPE}), getDecInstanceObject(cls), new Object[]{Boolean.valueOf(z)});
            setFile(getClass("com.umeng.socialize.Config"), "DEBUG", z);
        } catch (Exception e2) {
            if (debugLog) {
                f.b.a.a.a.y("set log enabled e is ", e2);
            }
        } catch (Throwable th) {
            if (debugLog) {
                f.b.a.a.a.z("set log enabled e is ", th);
            }
        }
    }

    public static void setProcessEvent(boolean z) {
        AnalyticsConstants.SUB_PROCESS_EVENT = z;
    }

    public static void setWraperType(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (str.equals(WRAPER_TYPE_NATIVE)) {
                com.umeng.commonsdk.stateless.a.a = WRAPER_TYPE_NATIVE;
                com.umeng.commonsdk.statistics.a.a = WRAPER_TYPE_NATIVE;
            } else if (str.equals(WRAPER_TYPE_COCOS2DX_X)) {
                com.umeng.commonsdk.stateless.a.a = WRAPER_TYPE_COCOS2DX_X;
                com.umeng.commonsdk.statistics.a.a = WRAPER_TYPE_COCOS2DX_X;
            } else if (str.equals(WRAPER_TYPE_COCOS2DX_XLUA)) {
                com.umeng.commonsdk.stateless.a.a = WRAPER_TYPE_COCOS2DX_XLUA;
                com.umeng.commonsdk.statistics.a.a = WRAPER_TYPE_COCOS2DX_XLUA;
            } else if (str.equals(WRAPER_TYPE_UNITY)) {
                com.umeng.commonsdk.stateless.a.a = WRAPER_TYPE_UNITY;
                com.umeng.commonsdk.statistics.a.a = WRAPER_TYPE_UNITY;
            } else if (str.equals(WRAPER_TYPE_REACTNATIVE)) {
                com.umeng.commonsdk.stateless.a.a = WRAPER_TYPE_REACTNATIVE;
                com.umeng.commonsdk.statistics.a.a = WRAPER_TYPE_REACTNATIVE;
            } else if (str.equals(WRAPER_TYPE_PHONEGAP)) {
                com.umeng.commonsdk.stateless.a.a = WRAPER_TYPE_PHONEGAP;
                com.umeng.commonsdk.statistics.a.a = WRAPER_TYPE_PHONEGAP;
            } else if (str.equals(WRAPER_TYPE_WEEX)) {
                com.umeng.commonsdk.stateless.a.a = WRAPER_TYPE_WEEX;
                com.umeng.commonsdk.statistics.a.a = WRAPER_TYPE_WEEX;
            } else if (str.equals(WRAPER_TYPE_HYBRID)) {
                com.umeng.commonsdk.stateless.a.a = WRAPER_TYPE_HYBRID;
                com.umeng.commonsdk.statistics.a.a = WRAPER_TYPE_HYBRID;
            } else if (str.equals(WRAPER_TYPE_FLUTTER)) {
                com.umeng.commonsdk.stateless.a.a = WRAPER_TYPE_FLUTTER;
                com.umeng.commonsdk.statistics.a.a = WRAPER_TYPE_FLUTTER;
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        com.umeng.commonsdk.stateless.a.b = str2;
        com.umeng.commonsdk.statistics.a.b = str2;
    }

    public static void init(Context context, String str, String str2, int i2, String str3) {
        Method declaredMethod;
        Object invoke;
        Method declaredMethod2;
        Class<?> cls;
        Method declaredMethod3;
        if (context == null) {
            return;
        }
        try {
            try {
                Context applicationContext = context.getApplicationContext();
                if (debugLog) {
                    String appkeyByXML = UMUtils.getAppkeyByXML(applicationContext);
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(appkeyByXML) && !str.equals(appkeyByXML)) {
                        UMLog.mutlInfo(UMLogCommon.SC_10011, 3, "", new String[]{"@", "#"}, new String[]{str, appkeyByXML});
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    str = UMUtils.getAppkeyByXML(applicationContext);
                }
                if (TextUtils.isEmpty(str2)) {
                    str2 = UMUtils.getChannelByXML(applicationContext);
                }
                if (TextUtils.isEmpty(str2)) {
                    str2 = "Unknown";
                }
                UMUtils.setChannel(applicationContext, str2);
                if (UMUtils.isMainProgress(applicationContext)) {
                    saveSDKComponent();
                }
                try {
                    Class<?> cls2 = Class.forName("com.umeng.analytics.MobclickAgent");
                    Method declaredMethod4 = cls2.getDeclaredMethod("init", Context.class);
                    if (declaredMethod4 != null) {
                        declaredMethod4.setAccessible(true);
                        declaredMethod4.invoke(cls2, applicationContext);
                        if (debugLog) {
                            UMLog.mutlInfo(UMLogCommon.SC_10003, 2, "");
                        }
                    }
                    Class.forName("com.umeng.analytics.game.UMGameAgent");
                    Method declaredMethod5 = cls2.getDeclaredMethod("setGameScenarioType", Context.class);
                    if (declaredMethod5 != null) {
                        declaredMethod5.setAccessible(true);
                        declaredMethod5.invoke(cls2, applicationContext);
                    }
                    if (b.a.indexOf("e") >= 0 && (declaredMethod3 = (cls = Class.forName("com.umeng.analytics.MobclickAgent")).getDeclaredMethod("disableExceptionCatch", new Class[0])) != null) {
                        declaredMethod3.setAccessible(true);
                        declaredMethod3.invoke(cls, new Object[0]);
                    }
                } catch (Throwable unused) {
                }
                try {
                    Class<?> cls3 = Class.forName("com.umeng.message.MessageSharedPrefs");
                    Method declaredMethod6 = cls3.getDeclaredMethod("getInstance", Context.class);
                    if (declaredMethod6 != null && (invoke = declaredMethod6.invoke(cls3, applicationContext)) != null) {
                        Method declaredMethod7 = cls3.getDeclaredMethod("setMessageAppKey", String.class);
                        if (declaredMethod7 != null) {
                            declaredMethod7.setAccessible(true);
                            declaredMethod7.invoke(invoke, str);
                            if (debugLog) {
                                UMLog.mutlInfo(UMLogCommon.SC_10004, 2, "");
                            }
                        }
                        Method declaredMethod8 = cls3.getDeclaredMethod(KEY_METHOD_NAME_PUSH_SETCHANNEL, String.class);
                        if (declaredMethod8 != null) {
                            declaredMethod8.setAccessible(true);
                            declaredMethod8.invoke(invoke, str2);
                            if (debugLog) {
                                UMLog.mutlInfo(UMLogCommon.SC_10005, 2, "");
                            }
                        }
                        if (!TextUtils.isEmpty(str3) && (declaredMethod2 = cls3.getDeclaredMethod("setMessageAppSecret", String.class)) != null) {
                            declaredMethod2.setAccessible(true);
                            declaredMethod2.invoke(invoke, str3);
                            if (debugLog) {
                                UMLog.mutlInfo(UMLogCommon.SC_10009, 2, "");
                            }
                        }
                    }
                } catch (Exception unused2) {
                }
                try {
                    Class<?> cls4 = getClass("com.umeng.socialize.UMShareAPI");
                    setFile(cls4, KEY_FILE_NAME_APPKEY, str);
                    if (cls4 != null && (declaredMethod = cls4.getDeclaredMethod("init", Context.class, String.class)) != null) {
                        declaredMethod.setAccessible(true);
                        declaredMethod.invoke(cls4, applicationContext, str);
                        if (debugLog) {
                            UMLog.mutlInfo(UMLogCommon.SC_10006, 2, "");
                        }
                    }
                } catch (Throwable unused3) {
                }
                if (TextUtils.isEmpty(str)) {
                    if (debugLog) {
                        UMLog.aq(UMLogCommon.SC_10007, 0, "\\|");
                        return;
                    }
                    return;
                }
                UMUtils.setAppkey(applicationContext, str);
                String lastAppkey = UMUtils.getLastAppkey(applicationContext);
                if (!TextUtils.isEmpty(str) && !str.equals(lastAppkey)) {
                    if (!TextUtils.isEmpty(lastAppkey) && debugLog) {
                        UMLog.mutlInfo(UMLogCommon.SC_10008, 2, "");
                    }
                    UMUtils.setLastAppkey(applicationContext, str);
                }
                AnalyticsConstants.setDeviceType(i2);
                try {
                    Class<?> cls5 = Class.forName("com.umeng.error.UMError");
                    Method declaredMethod9 = cls5.getDeclaredMethod("init", Context.class);
                    if (declaredMethod9 != null) {
                        declaredMethod9.setAccessible(true);
                        declaredMethod9.invoke(cls5, applicationContext);
                        if (debugLog) {
                            UMLog.mutlInfo(UMLogCommon.SC_10010, 2, "");
                        }
                    }
                } catch (Throwable unused4) {
                }
                if (UMUtils.isMainProgress(applicationContext)) {
                    if (SdkVersion.SDK_TYPE != 1) {
                        try {
                            Class<?> cls6 = Class.forName("com.umeng.commonsdk.UMConfigureImpl");
                            Method declaredMethod10 = cls6.getDeclaredMethod("init", Context.class);
                            if (declaredMethod10 != null) {
                                declaredMethod10.setAccessible(true);
                                declaredMethod10.invoke(cls6, applicationContext);
                            }
                        } catch (Throwable unused5) {
                        }
                    } else {
                        a.a(applicationContext);
                    }
                }
                try {
                    Method method = Class.forName("com.umeng.visual.UMVisualAgent").getMethod("init", Context.class, String.class);
                    if (!TextUtils.isEmpty(str)) {
                        method.invoke(null, context, str);
                    } else if (AnalyticsConstants.UM_DEBUG) {
                        MLog.e("initDebugSDK appkey  is null");
                    }
                } catch (ClassNotFoundException unused6) {
                    Class.forName("com.umeng.analytics.vismode.event.VisualHelper").getMethod("init", Context.class).invoke(null, context);
                } catch (Exception unused7) {
                }
                UMGlobalContext.a aVar = new UMGlobalContext.a();
                aVar.a = applicationContext;
                aVar.b = i2;
                aVar.f3187c = str3;
                aVar.f3188d = str;
                aVar.f3189e = str2;
                aVar.f3190f = b.a;
                aVar.f3191g = false;
                aVar.f3192h = UMFrUtils.getCurrentProcessName(applicationContext);
                aVar.f3193i = UMUtils.getAppVersionName(applicationContext);
                aVar.f3194j = UMUtils.isMainProgress(applicationContext);
                UMGlobalContext.newUMGlobalContext(aVar);
                synchronized (lockObject) {
                    isFinish = true;
                }
            } catch (Exception e2) {
                if (debugLog) {
                    f.b.a.a.a.y("init e is ", e2);
                }
            }
        } catch (Throwable th) {
            if (debugLog) {
                f.b.a.a.a.z("init e is ", th);
            }
        }
    }

    public static void invoke(Method method, Object[] objArr) {
        if (method != null) {
            try {
                method.invoke(null, objArr);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        }
    }

    public static void setFile(Class<?> cls, String str, boolean z) {
        if (cls != null) {
            try {
                cls.getField(str).set(str, Boolean.valueOf(z));
            } catch (Exception unused) {
            }
        }
    }
}
