package com.tencent.smtt.sdk;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class TbsVideo {
    public static boolean canUseTbsPlayer(Context context) {
        return o.a(context).a();
    }

    public static boolean canUseYunbo(Context context) {
        return o.a(context).a() && QbSdk.canUseVideoFeatrue(context, 1);
    }

    public static void openVideo(Context context, String str) {
        openVideo(context, str, null);
    }

    public static boolean openYunboVideo(Context context, String str, Bundle bundle, f.k.a.a.a.a aVar) {
        if (canUseYunbo(context)) {
            return o.a(context).a(str, bundle, aVar);
        }
        return false;
    }

    public static void openVideo(Context context, String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("videoUrl", str);
        Intent intent = new Intent("com.tencent.smtt.tbs.video.PLAY");
        intent.setFlags(268435456);
        intent.setPackage(context.getPackageName());
        intent.putExtra("extraData", bundle);
        context.startActivity(intent);
    }
}
