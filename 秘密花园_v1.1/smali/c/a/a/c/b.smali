.class public Lc/a/a/c/b;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/c/b$b;,
        Lc/a/a/c/b$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/a/a/c/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Landroid/os/Handler;

.field public c:Lc/a/a/c/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/a/a/c/b$a;

    invoke-direct {v0}, Lc/a/a/c/b$a;-><init>()V

    sput-object v0, Lc/a/a/c/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/a/a/c/b;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/a/a/c/b;->b:Landroid/os/Handler;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/c/a$a;->i(Landroid/os/IBinder;)Lc/a/a/c/a;

    move-result-object p1

    iput-object p1, p0, Lc/a/a/c/b;->c:Lc/a/a/c/a;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/a/a/c/b;->a:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/a/a/c/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lc/a/a/c/b$c;

    invoke-direct {v1, p0, p1, p2}, Lc/a/a/c/b$c;-><init>(Lc/a/a/c/b;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/a/a/c/b;->a(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lc/a/a/c/b;->c:Lc/a/a/c/a;

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    invoke-interface {v0, p1, p2}, Lc/a/a/c/a;->g(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p2, p0, Lc/a/a/c/b;->c:Lc/a/a/c/a;

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lc/a/a/c/b$b;

    invoke-direct {p2, p0}, Lc/a/a/c/b$b;-><init>(Lc/a/a/c/b;)V

    iput-object p2, p0, Lc/a/a/c/b;->c:Lc/a/a/c/a;

    .line 4
    :cond_0
    iget-object p2, p0, Lc/a/a/c/b;->c:Lc/a/a/c/a;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
