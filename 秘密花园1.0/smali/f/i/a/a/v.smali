.class public Lf/i/a/a/v;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lf/i/a/a/r0;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lf/i/a/a/z0/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:J

.field public e:Lf/i/a/a/c1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/v;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lf/i/a/a/v;->c:I

    const-wide/16 v0, 0x1388

    .line 4
    iput-wide v0, p0, Lf/i/a/a/v;->d:J

    .line 5
    sget-object p1, Lf/i/a/a/c1/c;->a:Lf/i/a/a/c1/c;

    iput-object p1, p0, Lf/i/a/a/v;->e:Lf/i/a/a/c1/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lf/i/a/a/v;->a:Landroid/content/Context;

    .line 8
    iput p2, p0, Lf/i/a/a/v;->c:I

    const-wide/16 p1, 0x1388

    .line 9
    iput-wide p1, p0, Lf/i/a/a/v;->d:J

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lf/i/a/a/v;->b:Lf/i/a/a/z0/g;

    .line 11
    sget-object p1, Lf/i/a/a/c1/c;->a:Lf/i/a/a/c1/c;

    iput-object p1, p0, Lf/i/a/a/v;->e:Lf/i/a/a/c1/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Lf/i/a/a/n1/s;Lf/i/a/a/w0/o;Lf/i/a/a/i1/k;Lf/i/a/a/d1/e;Lf/i/a/a/z0/g;)[Lf/i/a/a/p0;
    .locals 20
    .param p6    # Lf/i/a/a/z0/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lf/i/a/a/n1/s;",
            "Lf/i/a/a/w0/o;",
            "Lf/i/a/a/i1/k;",
            "Lf/i/a/a/d1/e;",
            "Lf/i/a/a/z0/g<",
            "Lf/i/a/a/z0/j;",
            ">;)[",
            "Lf/i/a/a/p0;"
        }
    .end annotation

    move-object/from16 v1, p0

    if-nez p6, :cond_0

    .line 1
    iget-object v0, v1, Lf/i/a/a/v;->b:Lf/i/a/a/z0/g;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p6

    .line 2
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v3, v1, Lf/i/a/a/v;->a:Landroid/content/Context;

    iget v14, v1, Lf/i/a/a/v;->c:I

    iget-object v4, v1, Lf/i/a/a/v;->e:Lf/i/a/a/c1/c;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v11, v1, Lf/i/a/a/v;->d:J

    .line 4
    new-instance v15, Lf/i/a/a/n1/m;

    const/16 v16, 0x32

    move-object v2, v15

    move-wide v5, v11

    move-object v7, v0

    move-object/from16 v10, p1

    move-wide/from16 v17, v11

    move-object/from16 v11, p2

    move/from16 v12, v16

    invoke-direct/range {v2 .. v12}, Lf/i/a/a/n1/m;-><init>(Landroid/content/Context;Lf/i/a/a/c1/c;JLf/i/a/a/z0/g;ZZLandroid/os/Handler;Lf/i/a/a/n1/s;I)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-nez v14, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v14, v12, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    :try_start_0
    const-string v3, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 6
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    .line 7
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v15

    const-class v6, Landroid/os/Handler;

    aput-object v6, v5, v16

    const-class v6, Lf/i/a/a/n1/s;

    aput-object v6, v5, v12

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v11

    .line 8
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 9
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v15

    aput-object p1, v4, v16

    aput-object p2, v4, v12

    const/16 v5, 0x32

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/p0;

    .line 12
    invoke-virtual {v13, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating VP9 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    nop

    .line 14
    :goto_1
    iget-object v3, v1, Lf/i/a/a/v;->a:Landroid/content/Context;

    iget v14, v1, Lf/i/a/a/v;->c:I

    iget-object v4, v1, Lf/i/a/a/v;->e:Lf/i/a/a/c1/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v10, v15, [Lf/i/a/a/w0/m;

    .line 15
    const-class v17, [Lf/i/a/a/w0/m;

    const-class v18, Lf/i/a/a/w0/o;

    new-instance v9, Lf/i/a/a/w0/z;

    new-instance v8, Lf/i/a/a/w0/v;

    .line 16
    invoke-static {v3}, Lf/i/a/a/w0/j;->a(Landroid/content/Context;)Lf/i/a/a/w0/j;

    move-result-object v2

    invoke-direct {v8, v2, v10}, Lf/i/a/a/w0/v;-><init>(Lf/i/a/a/w0/j;[Lf/i/a/a/w0/m;)V

    move-object v2, v9

    move-object v5, v0

    move-object v0, v8

    move-object/from16 v8, p1

    move-object v15, v9

    move-object/from16 v9, p3

    move-object/from16 v19, v10

    move-object v10, v0

    invoke-direct/range {v2 .. v10}, Lf/i/a/a/w0/z;-><init>(Landroid/content/Context;Lf/i/a/a/c1/c;Lf/i/a/a/z0/g;ZZLandroid/os/Handler;Lf/i/a/a/w0/o;Lf/i/a/a/w0/p;)V

    .line 17
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v14, :cond_3

    goto/16 :goto_6

    .line 18
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v14, v12, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    :try_start_1
    const-string v2, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 19
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Class;

    .line 20
    const-class v4, Landroid/os/Handler;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object v18, v3, v16

    aput-object v17, v3, v12

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p3, v3, v16

    aput-object v19, v3, v12

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/p0;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    add-int/lit8 v3, v0, 0x1

    .line 23
    :try_start_2
    invoke-virtual {v13, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_2
    move v0, v3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 24
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating Opus extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    :goto_2
    move v3, v0

    :goto_3
    :try_start_3
    const-string v0, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Class;

    .line 26
    const-class v4, Landroid/os/Handler;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    aput-object v18, v2, v16

    aput-object v17, v2, v12

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p3, v2, v16

    aput-object v19, v2, v12

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/p0;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    add-int/lit8 v2, v3, 0x1

    .line 29
    :try_start_4
    invoke-virtual {v13, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_5

    :catch_5
    move v3, v2

    goto :goto_4

    :catch_6
    move-exception v0

    .line 30
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FLAC extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    :goto_4
    move v2, v3

    :goto_5
    :try_start_5
    const-string v0, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 31
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Class;

    .line 32
    const-class v4, Landroid/os/Handler;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object v18, v3, v16

    aput-object v17, v3, v12

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v11, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p3, v3, v16

    aput-object v19, v3, v12

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/p0;

    .line 35
    invoke-virtual {v13, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_6

    :catch_8
    move-exception v0

    .line 36
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FFmpeg extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 37
    :catch_9
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 38
    new-instance v2, Lf/i/a/a/i1/l;

    move-object/from16 v3, p4

    invoke-direct {v2, v3, v0}, Lf/i/a/a/i1/l;-><init>(Lf/i/a/a/i1/k;Landroid/os/Looper;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 40
    new-instance v2, Lf/i/a/a/d1/f;

    move-object/from16 v3, p5

    invoke-direct {v2, v3, v0}, Lf/i/a/a/d1/f;-><init>(Lf/i/a/a/d1/e;Landroid/os/Looper;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lf/i/a/a/n1/t/b;

    invoke-direct {v0}, Lf/i/a/a/n1/t/b;-><init>()V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    new-array v0, v0, [Lf/i/a/a/p0;

    .line 42
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/i/a/a/p0;

    return-object v0
.end method
