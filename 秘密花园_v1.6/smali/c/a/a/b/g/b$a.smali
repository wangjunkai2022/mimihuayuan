.class public abstract Lc/a/a/b/g/b$a;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Lc/a/a/b/g/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/b/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/b/g/b$a$a;
    }
.end annotation


# direct methods
.method public static i(Landroid/os/IBinder;)Lc/a/a/b/g/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.v4.media.session.IMediaSession"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lc/a/a/b/g/b;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lc/a/a/b/g/b;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lc/a/a/b/g/b$a$a;

    invoke-direct {v0, p0}, Lc/a/a/b/g/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
