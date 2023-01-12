.class public Landroid/support/v4/media/MediaBrowserCompat$j$a;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Lc/a/a/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$j;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$j$a;->a:Landroid/support/v4/media/MediaBrowserCompat$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$j$a;->a:Landroid/support/v4/media/MediaBrowserCompat$j;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$j;->b:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$i;

    :goto_0
    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$j$a;->a:Landroid/support/v4/media/MediaBrowserCompat$j;

    .line 3
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->a(Ljava/util/List;)Ljava/util/List;

    if-eqz p1, :cond_1

    goto :goto_5

    .line 4
    :cond_1
    throw v0

    .line 5
    :cond_2
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 6
    iget-object v1, p1, Landroid/support/v4/media/MediaBrowserCompat$i;->a:Ljava/util/List;

    .line 7
    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Ljava/util/List;

    const/4 v2, 0x0

    .line 8
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_4

    .line 10
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$j$a;->a:Landroid/support/v4/media/MediaBrowserCompat$j;

    if-eqz v3, :cond_3

    goto :goto_4

    .line 11
    :cond_3
    throw v0

    .line 12
    :cond_4
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$j$a;->a:Landroid/support/v4/media/MediaBrowserCompat$j;

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    const-string v6, "android.media.browse.extra.PAGE"

    .line 13
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "android.media.browse.extra.PAGE_SIZE"

    .line 14
    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v6, v5, :cond_6

    if-ne v3, v5, :cond_6

    goto :goto_3

    :cond_6
    mul-int v5, v3, v6

    add-int v7, v5, v3

    if-ltz v6, :cond_9

    const/4 v6, 0x1

    if-lt v3, v6, :cond_9

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v5, v3, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v7, v3, :cond_8

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 18
    :cond_8
    invoke-interface {p2, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    goto :goto_3

    .line 19
    :cond_9
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    :goto_3
    if-eqz v4, :cond_a

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_a
    throw v0

    :cond_b
    :goto_5
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$j$a;->a:Landroid/support/v4/media/MediaBrowserCompat$j;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
