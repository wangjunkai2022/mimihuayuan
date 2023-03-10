.class public final Lf/i/a/a/g1/b;
.super Ljava/lang/Object;
.source "Requirements.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lf/i/a/a/g1/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/i/a/a/g1/b$a;

    invoke-direct {v0}, Lf/i/a/a/g1/b$a;-><init>()V

    sput-object v0, Lf/i/a/a/g1/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    .line 2
    :cond_0
    iput p1, p0, Lf/i/a/a/g1/b;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 8

    .line 1
    iget v0, p0, Lf/i/a/a/g1/b;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x17

    const/4 v4, 0x2

    if-nez v0, :cond_1

    goto :goto_5

    :cond_1
    const-string v0, "connectivity"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3
    invoke-static {v0}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 4
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5
    sget v5, Lf/i/a/a/m1/h0;->a:I

    if-ge v5, v3, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-eqz v5, :cond_5

    const/16 v6, 0x10

    .line 8
    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    xor-int/2addr v5, v1

    :goto_3
    if-nez v5, :cond_6

    goto :goto_6

    .line 9
    :cond_6
    iget v5, p0, Lf/i/a/a/g1/b;->a:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_8

    .line 10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_7

    :cond_8
    :goto_5
    const/4 v0, 0x0

    goto :goto_7

    .line 11
    :cond_9
    :goto_6
    iget v0, p0, Lf/i/a/a/g1/b;->a:I

    and-int/lit8 v0, v0, 0x3

    .line 12
    :goto_7
    iget v5, p0, Lf/i/a/a/g1/b;->a:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_e

    .line 13
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 14
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_9

    :cond_b
    const/4 v6, -0x1

    const-string v7, "status"

    .line 15
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_d

    const/4 v4, 0x5

    if-ne v5, v4, :cond_c

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v4, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v4, 0x1

    :goto_b
    if-nez v4, :cond_e

    or-int/lit8 v0, v0, 0x8

    .line 16
    :cond_e
    iget v4, p0, Lf/i/a/a/g1/b;->a:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_c

    :cond_f
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_13

    const-string v4, "power"

    .line 17
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 18
    sget v4, Lf/i/a/a/m1/h0;->a:I

    if-lt v4, v3, :cond_10

    .line 19
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    goto :goto_d

    :cond_10
    const/16 v3, 0x14

    if-lt v4, v3, :cond_11

    .line 20
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_d

    :cond_11
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_d

    :cond_12
    const/4 v1, 0x0

    :goto_d
    if-nez v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lf/i/a/a/g1/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget v2, p0, Lf/i/a/a/g1/b;->a:I

    check-cast p1, Lf/i/a/a/g1/b;

    iget p1, p1, Lf/i/a/a/g1/b;->a:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lf/i/a/a/g1/b;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lf/i/a/a/g1/b;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
