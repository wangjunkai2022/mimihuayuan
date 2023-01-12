.class public final Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;
.super Ljava/lang/Object;
.source "DownloadTracker.java"

# interfaces
.implements Lf/i/a/a/e1/q$b;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StartDownloadDialogHelper"
.end annotation


# instance fields
.field public final downloadHelper:Lf/i/a/a/e1/q;

.field public final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field public mappedTrackInfo:Lf/i/a/a/j1/f$a;

.field public final name:Ljava/lang/String;

.field public final synthetic this$0:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

.field public trackSelectionDialog:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;


# direct methods
.method public constructor <init>(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;Landroidx/fragment/app/FragmentManager;Lf/i/a/a/e1/q;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->this$0:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    iput-object p3, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lf/i/a/a/e1/q;

    .line 4
    iput-object p4, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->name:Ljava/lang/String;

    .line 5
    iget-object p1, p3, Lf/i/a/a/e1/q;->j:Lf/i/a/a/e1/q$b;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lc/a/a/b/g/h;->v(Z)V

    .line 6
    iput-object p0, p3, Lf/i/a/a/e1/q;->j:Lf/i/a/a/e1/q$b;

    .line 7
    iget-object p1, p3, Lf/i/a/a/e1/q;->d:Lf/i/a/a/h1/e0;

    if-eqz p1, :cond_1

    .line 8
    new-instance p2, Lf/i/a/a/e1/q$e;

    invoke-direct {p2, p1, p3}, Lf/i/a/a/e1/q$e;-><init>(Lf/i/a/a/h1/e0;Lf/i/a/a/e1/q;)V

    iput-object p2, p3, Lf/i/a/a/e1/q;->k:Lf/i/a/a/e1/q$e;

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p3, Lf/i/a/a/e1/q;->h:Landroid/os/Handler;

    new-instance p2, Lf/i/a/a/e1/c;

    invoke-direct {p2, p3, p0}, Lf/i/a/a/e1/c;-><init>(Lf/i/a/a/e1/q;Lf/i/a/a/e1/q$b;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method private buildDownloadRequest()Lf/i/a/a/e1/u;
    .locals 11

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lf/i/a/a/e1/q;

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->name:Ljava/lang/String;

    invoke-static {v1}, Lf/i/a/a/m1/h0;->O(Ljava/lang/String;)[B

    move-result-object v8

    .line 2
    iget-object v1, v0, Lf/i/a/a/e1/q;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v1, v0, Lf/i/a/a/e1/q;->d:Lf/i/a/a/h1/e0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lf/i/a/a/e1/u;

    iget-object v4, v0, Lf/i/a/a/e1/q;->a:Ljava/lang/String;

    iget-object v5, v0, Lf/i/a/a/e1/q;->b:Landroid/net/Uri;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lf/i/a/a/e1/q;->c:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lf/i/a/a/e1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[B)V

    goto :goto_2

    .line 6
    :cond_0
    iget-boolean v1, v0, Lf/i/a/a/e1/q;->i:Z

    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v2, v0, Lf/i/a/a/e1/q;->n:[[Ljava/util/List;

    array-length v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v7, v0, Lf/i/a/a/e1/q;->n:[[Ljava/util/List;

    aget-object v7, v7, v5

    array-length v7, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_1

    .line 12
    iget-object v10, v0, Lf/i/a/a/e1/q;->n:[[Ljava/util/List;

    aget-object v10, v10, v5

    aget-object v10, v10, v9

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 13
    :cond_1
    iget-object v7, v0, Lf/i/a/a/e1/q;->k:Lf/i/a/a/e1/q$e;

    iget-object v7, v7, Lf/i/a/a/e1/q$e;->j:[Lf/i/a/a/h1/d0;

    aget-object v7, v7, v5

    invoke-interface {v7, v1}, Lf/i/a/a/h1/d0;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_2
    new-instance v1, Lf/i/a/a/e1/u;

    iget-object v4, v0, Lf/i/a/a/e1/q;->a:Ljava/lang/String;

    iget-object v5, v0, Lf/i/a/a/e1/q;->b:Landroid/net/Uri;

    iget-object v7, v0, Lf/i/a/a/e1/q;->c:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lf/i/a/a/e1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[B)V

    :goto_2
    return-object v1
.end method

.method private startDownload()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->buildDownloadRequest()Lf/i/a/a/e1/u;

    move-result-object v0

    invoke-direct {p0, v0}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->startDownload(Lf/i/a/a/e1/u;)V

    return-void
.end method

.method private startDownload(Lf/i/a/a/e1/u;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1
    :goto_0
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lf/i/a/a/e1/q;

    .line 2
    iget-object v1, v0, Lf/i/a/a/e1/q;->d:Lf/i/a/a/h1/e0;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v1, v0, Lf/i/a/a/e1/q;->i:Z

    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    .line 4
    iget-object v0, v0, Lf/i/a/a/e1/q;->l:[Lf/i/a/a/h1/p0;

    array-length v0, v0

    :goto_1
    if-ge p2, v0, :cond_8

    .line 5
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lf/i/a/a/e1/q;

    .line 6
    iget-boolean v1, v0, Lf/i/a/a/e1/q;->i:Z

    invoke-static {v1}, Lc/a/a/b/g/h;->v(Z)V

    const/4 v1, 0x0

    .line 7
    :goto_2
    iget-object v2, v0, Lf/i/a/a/e1/q;->f:[Lf/i/a/a/p;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 8
    iget-object v2, v0, Lf/i/a/a/e1/q;->n:[[Ljava/util/List;

    aget-object v2, v2, p2

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/List;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_3
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->mappedTrackInfo:Lf/i/a/a/j1/f$a;

    .line 10
    iget v1, v1, Lf/i/a/a/j1/f$a;->a:I

    if-ge v0, v1, :cond_7

    .line 11
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->trackSelectionDialog:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    invoke-virtual {v1, v0}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->getIsDisabled(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 12
    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lf/i/a/a/e1/q;

    sget-object v2, Lf/i/a/a/e1/q;->p:Lf/i/a/a/j1/d$c;

    iget-object v3, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->trackSelectionDialog:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    .line 13
    invoke-virtual {v3, v0}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->getOverrides(I)Ljava/util/List;

    move-result-object v3

    .line 14
    iget-boolean v4, v1, Lf/i/a/a/e1/q;->i:Z

    invoke-static {v4}, Lc/a/a/b/g/h;->v(Z)V

    if-eqz v2, :cond_5

    .line 15
    new-instance v4, Lf/i/a/a/j1/d$d;

    .line 16
    invoke-direct {v4, v2}, Lf/i/a/a/j1/d$d;-><init>(Lf/i/a/a/j1/d$c;)V

    const/4 v2, 0x0

    .line 17
    :goto_4
    iget-object v5, v1, Lf/i/a/a/e1/q;->m:[Lf/i/a/a/j1/f$a;

    aget-object v5, v5, p2

    .line 18
    iget v5, v5, Lf/i/a/a/j1/f$a;->a:I

    if-ge v2, v5, :cond_3

    if-eq v2, v0, :cond_2

    const/4 v5, 0x1

    goto :goto_5

    :cond_2
    const/4 v5, 0x0

    .line 19
    :goto_5
    invoke-virtual {v4, v2, v5}, Lf/i/a/a/j1/d$d;->b(IZ)Lf/i/a/a/j1/d$d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 20
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v4}, Lf/i/a/a/j1/d$d;->a()Lf/i/a/a/j1/d$c;

    move-result-object v2

    .line 22
    iget-boolean v3, v1, Lf/i/a/a/e1/q;->i:Z

    invoke-static {v3}, Lc/a/a/b/g/h;->v(Z)V

    .line 23
    iget-object v3, v1, Lf/i/a/a/e1/q;->e:Lf/i/a/a/j1/d;

    invoke-virtual {v3, v2}, Lf/i/a/a/j1/d;->i(Lf/i/a/a/j1/d$c;)V

    .line 24
    invoke-virtual {v1, p2}, Lf/i/a/a/e1/q;->g(I)Lf/i/a/a/j1/n;

    goto :goto_7

    .line 25
    :cond_4
    iget-object v2, v1, Lf/i/a/a/e1/q;->m:[Lf/i/a/a/j1/f$a;

    aget-object v2, v2, p2

    .line 26
    iget-object v2, v2, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    aget-object v2, v2, v0

    const/4 v5, 0x0

    .line 27
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 28
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/j1/d$e;

    invoke-virtual {v4, v0, v2, v6}, Lf/i/a/a/j1/d$d;->c(ILf/i/a/a/h1/p0;Lf/i/a/a/j1/d$e;)Lf/i/a/a/j1/d$d;

    .line 29
    invoke-virtual {v4}, Lf/i/a/a/j1/d$d;->a()Lf/i/a/a/j1/d$c;

    move-result-object v6

    .line 30
    iget-boolean v7, v1, Lf/i/a/a/e1/q;->i:Z

    invoke-static {v7}, Lc/a/a/b/g/h;->v(Z)V

    .line 31
    iget-object v7, v1, Lf/i/a/a/e1/q;->e:Lf/i/a/a/j1/d;

    invoke-virtual {v7, v6}, Lf/i/a/a/j1/d;->i(Lf/i/a/a/j1/d$c;)V

    .line 32
    invoke-virtual {v1, p2}, Lf/i/a/a/e1/q;->g(I)Lf/i/a/a/j1/n;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 33
    throw p1

    :cond_6
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 34
    :cond_8
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->buildDownloadRequest()Lf/i/a/a/e1/u;

    move-result-object p1

    .line 35
    iget-object p2, p1, Lf/i/a/a/e1/u;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    .line 36
    :cond_9
    invoke-direct {p0, p1}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->startDownload(Lf/i/a/a/e1/u;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->trackSelectionDialog:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    .line 2
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lf/i/a/a/e1/q;

    invoke-virtual {p1}, Lf/i/a/a/e1/q;->f()V

    return-void
.end method

.method public onPrepareError(Lf/i/a/a/e1/q;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->this$0:Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;

    .line 2
    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;->access$300(Lchuangyuan/ycj/videolibrary/offline/DownloadTracker;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lchuangyuan/ycj/videolibrary/R$string;->download_start_error:I

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onPrepared(Lf/i/a/a/e1/q;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lf/i/a/a/e1/q;->d:Lf/i/a/a/h1/e0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p1, Lf/i/a/a/e1/q;->i:Z

    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 3
    iget-object p1, p1, Lf/i/a/a/e1/q;->l:[Lf/i/a/a/h1/p0;

    array-length p1, p1

    :goto_0
    if-nez p1, :cond_1

    .line 4
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->startDownload()V

    .line 5
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lf/i/a/a/e1/q;

    invoke-virtual {p1}, Lf/i/a/a/e1/q;->f()V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lf/i/a/a/e1/q;

    .line 7
    iget-boolean v0, p1, Lf/i/a/a/e1/q;->i:Z

    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 8
    iget-object p1, p1, Lf/i/a/a/e1/q;->m:[Lf/i/a/a/j1/f$a;

    aget-object p1, p1, v1

    .line 9
    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->mappedTrackInfo:Lf/i/a/a/j1/f$a;

    .line 10
    invoke-static {p1}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->willHaveContent(Lf/i/a/a/j1/f$a;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-direct {p0}, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->startDownload()V

    .line 12
    iget-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lf/i/a/a/e1/q;

    invoke-virtual {p1}, Lf/i/a/a/e1/q;->f()V

    return-void

    .line 13
    :cond_2
    sget v0, Lchuangyuan/ycj/videolibrary/R$string;->exo_download_description:I

    iget-object v1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->mappedTrackInfo:Lf/i/a/a/j1/f$a;

    sget-object v2, Lf/i/a/a/e1/q;->p:Lf/i/a/a/j1/d$c;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v5, p0

    move-object v6, p0

    .line 14
    invoke-static/range {v0 .. v6}, Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;->createForMappedTrackInfoAndParameters(ILf/i/a/a/j1/f$a;Lf/i/a/a/j1/d$c;ZZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    move-result-object p1

    iput-object p1, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->trackSelectionDialog:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    .line 15
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->downloadHelper:Lf/i/a/a/e1/q;

    invoke-virtual {v0}, Lf/i/a/a/e1/q;->f()V

    .line 2
    iget-object v0, p0, Lchuangyuan/ycj/videolibrary/offline/DownloadTracker$StartDownloadDialogHelper;->trackSelectionDialog:Lchuangyuan/ycj/videolibrary/offline/TrackSelectionDialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method
