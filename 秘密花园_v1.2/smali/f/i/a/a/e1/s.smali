.class public final Lf/i/a/a/e1/s;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/e1/s$b;,
        Lf/i/a/a/e1/s$e;,
        Lf/i/a/a/e1/s$c;,
        Lf/i/a/a/e1/s$d;
    }
.end annotation


# static fields
.field public static final k:Lf/i/a/a/g1/b;


# instance fields
.field public final a:Lf/i/a/a/e1/d0;

.field public final b:Lf/i/a/a/e1/s$c;

.field public final c:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lf/i/a/a/e1/s$d;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:Lf/i/a/a/g1/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf/i/a/a/g1/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf/i/a/a/g1/b;-><init>(I)V

    sput-object v0, Lf/i/a/a/e1/s;->k:Lf/i/a/a/g1/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/e1/d0;Lf/i/a/a/e1/x;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lf/i/a/a/e1/s;->a:Lf/i/a/a/e1/d0;

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lf/i/a/a/e1/s;->g:I

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lf/i/a/a/e1/s;->h:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lf/i/a/a/e1/s;->f:Z

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lf/i/a/a/e1/s;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    new-instance v1, Lf/i/a/a/e1/g;

    invoke-direct {v1, p0}, Lf/i/a/a/e1/g;-><init>(Lf/i/a/a/e1/s;)V

    invoke-static {v1}, Lf/i/a/a/m1/h0;->s(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v6

    .line 10
    new-instance v3, Landroid/os/HandlerThread;

    const-string v1, "DownloadManager file i/o"

    invoke-direct {v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 12
    new-instance v1, Lf/i/a/a/e1/s$c;

    iget v7, p0, Lf/i/a/a/e1/s;->g:I

    iget v8, p0, Lf/i/a/a/e1/s;->h:I

    iget-boolean v9, p0, Lf/i/a/a/e1/s;->f:Z

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lf/i/a/a/e1/s$c;-><init>(Landroid/os/HandlerThread;Lf/i/a/a/e1/d0;Lf/i/a/a/e1/x;Landroid/os/Handler;IIZ)V

    iput-object v1, p0, Lf/i/a/a/e1/s;->b:Lf/i/a/a/e1/s$c;

    .line 13
    new-instance p2, Lf/i/a/a/e1/a;

    invoke-direct {p2, p0}, Lf/i/a/a/e1/a;-><init>(Lf/i/a/a/e1/s;)V

    .line 14
    new-instance p3, Lf/i/a/a/g1/c;

    sget-object v1, Lf/i/a/a/e1/s;->k:Lf/i/a/a/g1/b;

    invoke-direct {p3, p1, p2, v1}, Lf/i/a/a/g1/c;-><init>(Landroid/content/Context;Lf/i/a/a/g1/c$d;Lf/i/a/a/g1/b;)V

    iput-object p3, p0, Lf/i/a/a/e1/s;->j:Lf/i/a/a/g1/c;

    .line 15
    iget-object p1, p3, Lf/i/a/a/g1/c;->c:Lf/i/a/a/g1/b;

    iget-object p2, p3, Lf/i/a/a/g1/c;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lf/i/a/a/g1/b;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p3, Lf/i/a/a/g1/c;->f:I

    .line 16
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 17
    iget-object p2, p3, Lf/i/a/a/g1/c;->c:Lf/i/a/a/g1/b;

    .line 18
    iget p2, p2, Lf/i/a/a/g1/b;->a:I

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v2, 0x17

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 19
    sget p2, Lf/i/a/a/m1/h0;->a:I

    if-lt p2, v2, :cond_1

    .line 20
    iget-object p2, p3, Lf/i/a/a/g1/c;->a:Landroid/content/Context;

    const-string v4, "connectivity"

    .line 21
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 22
    invoke-static {p2}, Lc/a/a/b/g/h;->t(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v5, 0x10

    .line 24
    invoke-virtual {v4, v5}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    .line 26
    new-instance v5, Lf/i/a/a/g1/c$b;

    invoke-direct {v5, p3, v3}, Lf/i/a/a/g1/c$b;-><init>(Lf/i/a/a/g1/c;Lf/i/a/a/g1/c$a;)V

    iput-object v5, p3, Lf/i/a/a/g1/c;->g:Lf/i/a/a/g1/c$b;

    .line 27
    invoke-virtual {p2, v4, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    :cond_1
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    :cond_2
    :goto_1
    iget-object p2, p3, Lf/i/a/a/g1/c;->c:Lf/i/a/a/g1/b;

    .line 30
    iget p2, p2, Lf/i/a/a/g1/b;->a:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_4

    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    :cond_4
    iget-object p2, p3, Lf/i/a/a/g1/c;->c:Lf/i/a/a/g1/b;

    .line 34
    iget p2, p2, Lf/i/a/a/g1/b;->a:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_7

    .line 35
    sget p2, Lf/i/a/a/m1/h0;->a:I

    if-lt p2, v2, :cond_6

    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    :cond_7
    :goto_4
    new-instance p2, Lf/i/a/a/g1/c$c;

    invoke-direct {p2, p3, v3}, Lf/i/a/a/g1/c$c;-><init>(Lf/i/a/a/g1/c;Lf/i/a/a/g1/c$a;)V

    iput-object p2, p3, Lf/i/a/a/g1/c;->e:Lf/i/a/a/g1/c$c;

    .line 40
    iget-object v2, p3, Lf/i/a/a/g1/c;->a:Landroid/content/Context;

    iget-object v4, p3, Lf/i/a/a/g1/c;->d:Landroid/os/Handler;

    invoke-virtual {v2, p2, p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 41
    iget p1, p3, Lf/i/a/a/g1/c;->f:I

    .line 42
    iput p1, p0, Lf/i/a/a/e1/s;->i:I

    .line 43
    iput v0, p0, Lf/i/a/a/e1/s;->d:I

    .line 44
    iget-object p2, p0, Lf/i/a/a/e1/s;->b:Lf/i/a/a/e1/s$c;

    .line 45
    invoke-virtual {p2, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static b(Lf/i/a/a/e1/m;Lf/i/a/a/e1/u;IJ)Lf/i/a/a/e1/m;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lf/i/a/a/e1/m;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eq v2, v5, :cond_3

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1

    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    iget-wide v6, v0, Lf/i/a/a/e1/m;->c:J

    move-wide v11, v6

    goto :goto_3

    :cond_3
    :goto_2
    move-wide/from16 v11, p3

    :goto_3
    const/4 v6, 0x7

    if-eq v2, v5, :cond_6

    if-ne v2, v6, :cond_4

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_5

    const/4 v10, 0x1

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v10, 0x7

    .line 3
    :goto_5
    new-instance v2, Lf/i/a/a/e1/m;

    iget-object v0, v0, Lf/i/a/a/e1/m;->a:Lf/i/a/a/e1/u;

    .line 4
    iget-object v3, v0, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    iget-object v5, v1, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lc/a/a/b/g/h;->m(Z)V

    .line 5
    iget-object v3, v0, Lf/i/a/a/e1/u;->b:Ljava/lang/String;

    iget-object v5, v1, Lf/i/a/a/e1/u;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lc/a/a/b/g/h;->m(Z)V

    .line 6
    iget-object v3, v0, Lf/i/a/a/e1/u;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v1, Lf/i/a/a/e1/u;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_7

    .line 7
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v0, Lf/i/a/a/e1/u;->d:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    :goto_6
    iget-object v5, v1, Lf/i/a/a/e1/u;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 9
    iget-object v5, v1, Lf/i/a/a/e1/u;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/e1/c0;

    .line 10
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 11
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 12
    :cond_9
    :goto_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_a
    move-object/from16 v17, v3

    .line 13
    new-instance v9, Lf/i/a/a/e1/u;

    iget-object v14, v0, Lf/i/a/a/e1/u;->a:Ljava/lang/String;

    iget-object v15, v0, Lf/i/a/a/e1/u;->b:Ljava/lang/String;

    iget-object v0, v1, Lf/i/a/a/e1/u;->c:Landroid/net/Uri;

    iget-object v3, v1, Lf/i/a/a/e1/u;->e:Ljava/lang/String;

    iget-object v1, v1, Lf/i/a/a/e1/u;->f:[B

    move-object v13, v9

    move-object/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    invoke-direct/range {v13 .. v19}, Lf/i/a/a/e1/u;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;[B)V

    const-wide/16 v15, -0x1

    const/16 v18, 0x0

    move-object v8, v2

    move-wide/from16 v13, p3

    move/from16 v17, p2

    .line 14
    invoke-direct/range {v8 .. v18}, Lf/i/a/a/e1/m;-><init>(Lf/i/a/a/e1/u;IJJJII)V

    return-object v2
.end method


# virtual methods
.method public final a(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/i/a/a/e1/s$b;

    .line 3
    iget-object v0, p1, Lf/i/a/a/e1/s$b;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    iget-object v0, p1, Lf/i/a/a/e1/s$b;->a:Lf/i/a/a/e1/m;

    .line 5
    iget-boolean p1, p1, Lf/i/a/a/e1/s$b;->b:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lf/i/a/a/e1/s;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/e1/s$d;

    .line 7
    invoke-interface {v2, p0, v0}, Lf/i/a/a/e1/s$d;->onDownloadRemoved(Lf/i/a/a/e1/s;Lf/i/a/a/e1/m;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lf/i/a/a/e1/s;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/e1/s$d;

    .line 9
    invoke-interface {v2, p0, v0}, Lf/i/a/a/e1/s$d;->onDownloadChanged(Lf/i/a/a/e1/s;Lf/i/a/a/e1/m;)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 11
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 12
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 13
    iget v2, p0, Lf/i/a/a/e1/s;->d:I

    sub-int/2addr v2, v0

    iput v2, p0, Lf/i/a/a/e1/s;->d:I

    .line 14
    iput p1, p0, Lf/i/a/a/e1/s;->e:I

    if-nez p1, :cond_3

    if-nez v2, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p0, Lf/i/a/a/e1/s;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/e1/s$d;

    .line 16
    invoke-interface {v0, p0}, Lf/i/a/a/e1/s$d;->onIdle(Lf/i/a/a/e1/s;)V

    goto :goto_3

    .line 17
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 18
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 19
    iget-object p1, p0, Lf/i/a/a/e1/s;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/e1/s$d;

    .line 20
    invoke-interface {v0, p0}, Lf/i/a/a/e1/s$d;->onInitialized(Lf/i/a/a/e1/s;)V

    goto :goto_4

    :cond_5
    return v1
.end method

.method public final c(Lf/i/a/a/g1/c;I)V
    .locals 2

    .line 1
    iget-object p1, p1, Lf/i/a/a/g1/c;->c:Lf/i/a/a/g1/b;

    .line 2
    iget-object v0, p0, Lf/i/a/a/e1/s;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/e1/s$d;

    .line 3
    invoke-interface {v1, p0, p1, p2}, Lf/i/a/a/e1/s$d;->onRequirementsStateChanged(Lf/i/a/a/e1/s;Lf/i/a/a/g1/b;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lf/i/a/a/e1/s;->i:I

    if-ne p1, p2, :cond_1

    return-void

    .line 5
    :cond_1
    iput p2, p0, Lf/i/a/a/e1/s;->i:I

    .line 6
    iget p1, p0, Lf/i/a/a/e1/s;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lf/i/a/a/e1/s;->d:I

    .line 7
    iget-object p1, p0, Lf/i/a/a/e1/s;->b:Lf/i/a/a/e1/s$c;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
