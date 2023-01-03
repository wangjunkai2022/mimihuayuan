package f.i.a.a.w0;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import androidx.annotation.Nullable;
import f.b.a.a.a;
import f.i.a.a.m1.h0;
import java.util.Arrays;

/* compiled from: AudioCapabilities.java */
@TargetApi(21)
/* loaded from: classes.dex */
public final class j {

    /* renamed from: c  reason: collision with root package name */
    public static final j f5868c = new j(new int[]{2}, 8);

    /* renamed from: d  reason: collision with root package name */
    public static final j f5869d = new j(new int[]{2, 5, 6}, 8);
    public final int[] a;
    public final int b;

    public j(@Nullable int[] iArr, int i2) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.a = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.a = new int[0];
        }
        this.b = i2;
    }

    public static j a(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        if ((h0.a >= 17 && "Amazon".equals(h0.f5662c)) && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
            return f5869d;
        }
        if (registerReceiver == null || registerReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) {
            return f5868c;
        }
        return new j(registerReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), registerReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (!Arrays.equals(this.a, jVar.a) || this.b != jVar.b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.a) * 31) + this.b;
    }

    public String toString() {
        StringBuilder o = a.o("AudioCapabilities[maxChannelCount=");
        o.append(this.b);
        o.append(", supportedEncodings=");
        o.append(Arrays.toString(this.a));
        o.append("]");
        return o.toString();
    }
}
