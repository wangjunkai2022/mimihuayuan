.class public abstract Landroid/support/v4/media/MediaBrowserCompat$j;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$j$b;,
        Landroid/support/v4/media/MediaBrowserCompat$j$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/IBinder;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/MediaBrowserCompat$i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$j;->a:Landroid/os/IBinder;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$j$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$j$b;-><init>(Landroid/support/v4/media/MediaBrowserCompat$j;)V

    .line 5
    new-instance v1, Lc/a/a/b/f;

    invoke-direct {v1, v0}, Lc/a/a/b/f;-><init>(Lc/a/a/b/e;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$j$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$j$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$j;)V

    .line 7
    new-instance v1, Lc/a/a/b/d;

    invoke-direct {v1, v0}, Lc/a/a/b/d;-><init>(Lc/a/a/b/c;)V

    :goto_0
    return-void
.end method
