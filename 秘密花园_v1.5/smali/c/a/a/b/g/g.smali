.class public Lc/a/a/b/g/g;
.super Landroid/media/session/MediaController$Callback;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc/a/a/b/g/f;",
        ">",
        "Landroid/media/session/MediaController$Callback;"
    }
.end annotation


# instance fields
.field public final a:Lc/a/a/b/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/a/b/g/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 2
    iput-object p1, p0, Lc/a/a/b/g/g;->a:Lc/a/a/b/g/f;

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/a/a/b/g/g;->a:Lc/a/a/b/g/f;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 2
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 6
    :cond_2
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    .line 7
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    .line 8
    check-cast v0, Lc/a/a/b/g/c$a;

    .line 9
    iget-object p1, v0, Lc/a/a/b/g/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/b/g/c;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lc/a/a/b/g/g;->a:Lc/a/a/b/g/f;

    check-cast p1, Lc/a/a/b/g/c$a;

    .line 3
    iget-object p1, p1, Lc/a/a/b/g/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/b/g/c;

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/b/g/g;->a:Lc/a/a/b/g/f;

    check-cast v0, Lc/a/a/b/g/c$a;

    .line 2
    iget-object v0, v0, Lc/a/a/b/g/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/b/g/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lc/a/a/b/g/g;->a:Lc/a/a/b/g/f;

    check-cast v1, Lc/a/a/b/g/c$a;

    .line 2
    iget-object v1, v1, Lc/a/a/b/g/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/b/g/c;

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, v1, Lc/a/a/b/g/c;->a:Lc/a/a/b/g/a;

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    new-instance v5, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 8
    move-object v6, v4

    check-cast v6, Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {v6}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v6}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 10
    invoke-virtual {v6}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v9

    .line 11
    invoke-virtual {v6}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 12
    invoke-direct {v5, v7, v8, v9, v6}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    .line 13
    iput-object v4, v5, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->e:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 14
    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v19, v3

    goto :goto_2

    :cond_3
    move-object/from16 v19, v1

    .line 15
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_4

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :cond_4
    move-object/from16 v22, v1

    .line 17
    new-instance v6, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v8

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getBufferedPosition()J

    move-result-wide v10

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v12

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v13

    const/4 v15, 0x0

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v16

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v17

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getActiveQueueItemId()J

    move-result-wide v20

    .line 26
    invoke-direct/range {v6 .. v22}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/a/a/b/g/g;->a:Lc/a/a/b/g/f;

    check-cast v0, Lc/a/a/b/g/c$a;

    .line 2
    iget-object v0, v0, Lc/a/a/b/g/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/b/g/c;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    move-object v3, v2

    check-cast v3, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v4

    .line 6
    invoke-static {v4}, Landroid/support/v4/media/MediaDescriptionCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v5

    .line 8
    new-instance v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V

    goto :goto_1

    :cond_0
    move-object v3, v0

    .line 9
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/a/a/b/g/g;->a:Lc/a/a/b/g/f;

    check-cast p1, Lc/a/a/b/g/c$a;

    .line 2
    iget-object p1, p1, Lc/a/a/b/g/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/b/g/c;

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/a/a/b/g/g;->a:Lc/a/a/b/g/f;

    check-cast v0, Lc/a/a/b/g/c$a;

    .line 2
    iget-object v0, v0, Lc/a/a/b/g/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/b/g/c;

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lc/a/a/b/g/g;->a:Lc/a/a/b/g/f;

    check-cast p1, Lc/a/a/b/g/c$a;

    .line 3
    iget-object p1, p1, Lc/a/a/b/g/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/b/g/c;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lc/a/a/b/g/c;->a:Lc/a/a/b/g/a;

    :cond_0
    return-void
.end method
