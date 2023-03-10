package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();
    public final int a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f21c;

    /* renamed from: d  reason: collision with root package name */
    public final float f22d;

    /* renamed from: e  reason: collision with root package name */
    public final long f23e;

    /* renamed from: f  reason: collision with root package name */
    public final int f24f;

    /* renamed from: g  reason: collision with root package name */
    public final CharSequence f25g;

    /* renamed from: h  reason: collision with root package name */
    public final long f26h;

    /* renamed from: i  reason: collision with root package name */
    public List<CustomAction> f27i;

    /* renamed from: j  reason: collision with root package name */
    public final long f28j;

    /* renamed from: k  reason: collision with root package name */
    public final Bundle f29k;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<PlaybackStateCompat> {
        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PlaybackStateCompat[] newArray(int i2) {
            return new PlaybackStateCompat[i2];
        }
    }

    public PlaybackStateCompat(int i2, long j2, long j3, float f2, long j4, int i3, CharSequence charSequence, long j5, List<CustomAction> list, long j6, Bundle bundle) {
        this.a = i2;
        this.b = j2;
        this.f21c = j3;
        this.f22d = f2;
        this.f23e = j4;
        this.f24f = i3;
        this.f25g = charSequence;
        this.f26h = j5;
        this.f27i = new ArrayList(list);
        this.f28j = j6;
        this.f29k = bundle;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder q = f.b.a.a.a.q("PlaybackState {", "state=");
        q.append(this.a);
        q.append(", position=");
        q.append(this.b);
        q.append(", buffered position=");
        q.append(this.f21c);
        q.append(", speed=");
        q.append(this.f22d);
        q.append(", updated=");
        q.append(this.f26h);
        q.append(", actions=");
        q.append(this.f23e);
        q.append(", error code=");
        q.append(this.f24f);
        q.append(", error message=");
        q.append(this.f25g);
        q.append(", custom actions=");
        q.append(this.f27i);
        q.append(", active item id=");
        q.append(this.f28j);
        q.append("}");
        return q.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        parcel.writeLong(this.b);
        parcel.writeFloat(this.f22d);
        parcel.writeLong(this.f26h);
        parcel.writeLong(this.f21c);
        parcel.writeLong(this.f23e);
        TextUtils.writeToParcel(this.f25g, parcel, i2);
        parcel.writeTypedList(this.f27i);
        parcel.writeLong(this.f28j);
        parcel.writeBundle(this.f29k);
        parcel.writeInt(this.f24f);
    }

    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();
        public final String a;
        public final CharSequence b;

        /* renamed from: c  reason: collision with root package name */
        public final int f30c;

        /* renamed from: d  reason: collision with root package name */
        public final Bundle f31d;

        /* renamed from: e  reason: collision with root package name */
        public Object f32e;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<CustomAction> {
            @Override // android.os.Parcelable.Creator
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public CustomAction[] newArray(int i2) {
                return new CustomAction[i2];
            }
        }

        public CustomAction(String str, CharSequence charSequence, int i2, Bundle bundle) {
            this.a = str;
            this.b = charSequence;
            this.f30c = i2;
            this.f31d = bundle;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            StringBuilder o = f.b.a.a.a.o("Action:mName='");
            o.append((Object) this.b);
            o.append(", mIcon=");
            o.append(this.f30c);
            o.append(", mExtras=");
            o.append(this.f31d);
            return o.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.a);
            TextUtils.writeToParcel(this.b, parcel, i2);
            parcel.writeInt(this.f30c);
            parcel.writeBundle(this.f31d);
        }

        public CustomAction(Parcel parcel) {
            this.a = parcel.readString();
            this.b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f30c = parcel.readInt();
            this.f31d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readLong();
        this.f22d = parcel.readFloat();
        this.f26h = parcel.readLong();
        this.f21c = parcel.readLong();
        this.f23e = parcel.readLong();
        this.f25g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f27i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f28j = parcel.readLong();
        this.f29k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f24f = parcel.readInt();
    }
}
