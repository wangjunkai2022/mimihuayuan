.class public Landroidx/media/MediaBrowserServiceCompat$4;
.super Landroidx/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat;->performCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lc/a/a/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$Result<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/media/MediaBrowserServiceCompat;

.field public final synthetic val$receiver:Lc/a/a/c/b;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Lc/a/a/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$4;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$4;->val$receiver:Lc/a/a/c/b;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onErrorSent(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$4;->val$receiver:Lc/a/a/c/b;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lc/a/a/c/b;->b(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onProgressUpdateSent(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$4;->val$receiver:Lc/a/a/c/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lc/a/a/c/b;->b(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onResultSent(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$4;->val$receiver:Lc/a/a/c/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lc/a/a/c/b;->b(ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$4;->onResultSent(Landroid/os/Bundle;)V

    return-void
.end method
