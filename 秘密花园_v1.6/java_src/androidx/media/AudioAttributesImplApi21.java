package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import f.b.a.a.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@TargetApi(21)
/* loaded from: classes.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {
    public static final String TAG = "AudioAttributesCompat21";
    public static Method sAudioAttributesToLegacyStreamType;
    public AudioAttributes mAudioAttributes;
    public int mLegacyStreamType;

    public AudioAttributesImplApi21() {
        this.mLegacyStreamType = -1;
    }

    public static AudioAttributesImpl fromBundle(Bundle bundle) {
        AudioAttributes audioAttributes;
        if (bundle == null || (audioAttributes = (AudioAttributes) bundle.getParcelable(AudioAttributesCompat.AUDIO_ATTRIBUTES_FRAMEWORKS)) == null) {
            return null;
        }
        return new AudioAttributesImplApi21(audioAttributes, bundle.getInt(AudioAttributesCompat.AUDIO_ATTRIBUTES_LEGACY_STREAM_TYPE, -1));
    }

    public static Method getAudioAttributesToLegacyStreamTypeMethod() {
        try {
            if (sAudioAttributesToLegacyStreamType == null) {
                sAudioAttributesToLegacyStreamType = AudioAttributes.class.getMethod("toLegacyStreamType", AudioAttributes.class);
            }
            return sAudioAttributesToLegacyStreamType;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.mAudioAttributes.equals(((AudioAttributesImplApi21) obj).mAudioAttributes);
        }
        return false;
    }

    @Override // androidx.media.AudioAttributesImpl
    public Object getAudioAttributes() {
        return this.mAudioAttributes;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getContentType() {
        return this.mAudioAttributes.getContentType();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getFlags() {
        return this.mAudioAttributes.getFlags();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getLegacyStreamType() {
        int i2 = this.mLegacyStreamType;
        if (i2 != -1) {
            return i2;
        }
        Method audioAttributesToLegacyStreamTypeMethod = getAudioAttributesToLegacyStreamTypeMethod();
        if (audioAttributesToLegacyStreamTypeMethod == null) {
            return -1;
        }
        try {
            return ((Integer) audioAttributesToLegacyStreamTypeMethod.invoke(null, this.mAudioAttributes)).intValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return -1;
        }
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getRawLegacyStreamType() {
        return this.mLegacyStreamType;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getUsage() {
        return this.mAudioAttributes.getUsage();
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.mAudioAttributes.getVolumeControlStream();
        }
        return AudioAttributesCompat.toVolumeStreamType(true, getFlags(), getUsage());
    }

    public int hashCode() {
        return this.mAudioAttributes.hashCode();
    }

    @Override // androidx.media.AudioAttributesImpl
    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(AudioAttributesCompat.AUDIO_ATTRIBUTES_FRAMEWORKS, this.mAudioAttributes);
        int i2 = this.mLegacyStreamType;
        if (i2 != -1) {
            bundle.putInt(AudioAttributesCompat.AUDIO_ATTRIBUTES_LEGACY_STREAM_TYPE, i2);
        }
        return bundle;
    }

    public String toString() {
        StringBuilder o = a.o("AudioAttributesCompat: audioattributes=");
        o.append(this.mAudioAttributes);
        return o.toString();
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    public AudioAttributesImplApi21(AudioAttributes audioAttributes, int i2) {
        this.mLegacyStreamType = -1;
        this.mAudioAttributes = audioAttributes;
        this.mLegacyStreamType = i2;
    }
}
