.class public Lf/d/a/c;
.super Ljava/lang/Object;
.source "Glide.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/c$a;
    }
.end annotation


# static fields
.field public static volatile i:Lf/d/a/c;

.field public static volatile j:Z


# instance fields
.field public final a:Lf/d/a/o/n/b0/d;

.field public final b:Lf/d/a/o/n/c0/i;

.field public final c:Lf/d/a/e;

.field public final d:Lf/d/a/h;

.field public final e:Lf/d/a/o/n/b0/b;

.field public final f:Lf/d/a/p/l;

.field public final g:Lf/d/a/p/d;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/d/a/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/d/a/o/n/l;Lf/d/a/o/n/c0/i;Lf/d/a/o/n/b0/d;Lf/d/a/o/n/b0/b;Lf/d/a/p/l;Lf/d/a/p/d;ILf/d/a/c$a;Ljava/util/Map;Ljava/util/List;ZZ)V
    .locals 24
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/n/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lf/d/a/o/n/c0/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/o/n/b0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lf/d/a/o/n/b0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lf/d/a/p/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lf/d/a/p/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lf/d/a/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf/d/a/o/n/l;",
            "Lf/d/a/o/n/c0/i;",
            "Lf/d/a/o/n/b0/d;",
            "Lf/d/a/o/n/b0/b;",
            "Lf/d/a/p/l;",
            "Lf/d/a/p/d;",
            "I",
            "Lf/d/a/c$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lf/d/a/k<",
            "**>;>;",
            "Ljava/util/List<",
            "Lf/d/a/s/d<",
            "Ljava/lang/Object;",
            ">;>;ZZII)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    .line 1
    const-class v3, Lf/d/a/m/a;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/Integer;

    const-class v7, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lf/d/a/c;->h:Ljava/util/List;

    .line 3
    iput-object v2, v1, Lf/d/a/c;->a:Lf/d/a/o/n/b0/d;

    .line 4
    iput-object v4, v1, Lf/d/a/c;->e:Lf/d/a/o/n/b0/b;

    move-object/from16 v8, p3

    .line 5
    iput-object v8, v1, Lf/d/a/c;->b:Lf/d/a/o/n/c0/i;

    move-object/from16 v8, p6

    .line 6
    iput-object v8, v1, Lf/d/a/c;->f:Lf/d/a/p/l;

    move-object/from16 v8, p7

    .line 7
    iput-object v8, v1, Lf/d/a/c;->g:Lf/d/a/p/d;

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 9
    new-instance v9, Lf/d/a/h;

    invoke-direct {v9}, Lf/d/a/h;-><init>()V

    iput-object v9, v1, Lf/d/a/c;->d:Lf/d/a/h;

    .line 10
    new-instance v10, Lf/d/a/o/p/c/l;

    invoke-direct {v10}, Lf/d/a/o/p/c/l;-><init>()V

    .line 11
    iget-object v9, v9, Lf/d/a/h;->g:Lf/d/a/r/b;

    .line 12
    monitor-enter v9

    .line 13
    :try_start_0
    iget-object v11, v9, Lf/d/a/r/b;->a:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    monitor-exit v9

    .line 15
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1b

    if-lt v9, v10, :cond_0

    .line 16
    iget-object v9, v1, Lf/d/a/c;->d:Lf/d/a/h;

    new-instance v10, Lf/d/a/o/p/c/q;

    invoke-direct {v10}, Lf/d/a/o/p/c/q;-><init>()V

    .line 17
    iget-object v9, v9, Lf/d/a/h;->g:Lf/d/a/r/b;

    .line 18
    monitor-enter v9

    .line 19
    :try_start_1
    iget-object v11, v9, Lf/d/a/r/b;->a:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 21
    :cond_0
    :goto_0
    iget-object v9, v1, Lf/d/a/c;->d:Lf/d/a/h;

    invoke-virtual {v9}, Lf/d/a/h;->e()Ljava/util/List;

    move-result-object v9

    .line 22
    new-instance v10, Lf/d/a/o/p/g/a;

    invoke-direct {v10, v0, v9, v2, v4}, Lf/d/a/o/p/g/a;-><init>(Landroid/content/Context;Ljava/util/List;Lf/d/a/o/n/b0/d;Lf/d/a/o/n/b0/b;)V

    .line 23
    new-instance v11, Lf/d/a/o/p/c/b0;

    new-instance v12, Lf/d/a/o/p/c/b0$f;

    invoke-direct {v12}, Lf/d/a/o/p/c/b0$f;-><init>()V

    invoke-direct {v11, v2, v12}, Lf/d/a/o/p/c/b0;-><init>(Lf/d/a/o/n/b0/d;Lf/d/a/o/p/c/b0$e;)V

    if-eqz p13, :cond_1

    .line 24
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1c

    if-lt v12, v13, :cond_1

    .line 25
    new-instance v12, Lf/d/a/o/p/c/t;

    invoke-direct {v12}, Lf/d/a/o/p/c/t;-><init>()V

    .line 26
    new-instance v13, Lf/d/a/o/p/c/h;

    invoke-direct {v13}, Lf/d/a/o/p/c/h;-><init>()V

    goto :goto_1

    .line 27
    :cond_1
    new-instance v12, Lf/d/a/o/p/c/n;

    iget-object v13, v1, Lf/d/a/c;->d:Lf/d/a/h;

    .line 28
    invoke-virtual {v13}, Lf/d/a/h;->e()Ljava/util/List;

    move-result-object v13

    .line 29
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-direct {v12, v13, v14, v2, v4}, Lf/d/a/o/p/c/n;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lf/d/a/o/n/b0/d;Lf/d/a/o/n/b0/b;)V

    .line 30
    new-instance v13, Lf/d/a/o/p/c/g;

    invoke-direct {v13, v12}, Lf/d/a/o/p/c/g;-><init>(Lf/d/a/o/p/c/n;)V

    .line 31
    new-instance v14, Lf/d/a/o/p/c/y;

    invoke-direct {v14, v12, v4}, Lf/d/a/o/p/c/y;-><init>(Lf/d/a/o/p/c/n;Lf/d/a/o/n/b0/b;)V

    move-object v12, v14

    .line 32
    :goto_1
    new-instance v14, Lf/d/a/o/p/e/d;

    invoke-direct {v14, v0}, Lf/d/a/o/p/e/d;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v15, Lf/d/a/o/o/s$c;

    invoke-direct {v15, v8}, Lf/d/a/o/o/s$c;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v16, v7

    .line 34
    new-instance v7, Lf/d/a/o/o/s$d;

    invoke-direct {v7, v8}, Lf/d/a/o/o/s$d;-><init>(Landroid/content/res/Resources;)V

    .line 35
    new-instance v0, Lf/d/a/o/o/s$b;

    invoke-direct {v0, v8}, Lf/d/a/o/o/s$b;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v17, v5

    .line 36
    new-instance v5, Lf/d/a/o/o/s$a;

    invoke-direct {v5, v8}, Lf/d/a/o/o/s$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p3, v5

    .line 37
    new-instance v5, Lf/d/a/o/p/c/c;

    invoke-direct {v5, v4}, Lf/d/a/o/p/c/c;-><init>(Lf/d/a/o/n/b0/b;)V

    move-object/from16 p6, v7

    .line 38
    new-instance v7, Lf/d/a/o/p/h/a;

    invoke-direct {v7}, Lf/d/a/o/p/h/a;-><init>()V

    move-object/from16 p7, v7

    .line 39
    new-instance v7, Lf/d/a/o/p/h/d;

    invoke-direct {v7}, Lf/d/a/o/p/h/d;-><init>()V

    move-object/from16 p13, v7

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v18, v7

    .line 41
    iget-object v7, v1, Lf/d/a/c;->d:Lf/d/a/h;

    const-class v1, Ljava/nio/ByteBuffer;

    move-object/from16 v19, v6

    new-instance v6, Lf/d/a/o/o/c;

    invoke-direct {v6}, Lf/d/a/o/o/c;-><init>()V

    .line 42
    invoke-virtual {v7, v1, v6}, Lf/d/a/h;->a(Ljava/lang/Class;Lf/d/a/o/d;)Lf/d/a/h;

    const-class v1, Ljava/io/InputStream;

    new-instance v6, Lf/d/a/o/o/t;

    invoke-direct {v6, v4}, Lf/d/a/o/o/t;-><init>(Lf/d/a/o/n/b0/b;)V

    .line 43
    invoke-virtual {v7, v1, v6}, Lf/d/a/h;->a(Ljava/lang/Class;Lf/d/a/o/d;)Lf/d/a/h;

    const-string v1, "Bitmap"

    const-class v6, Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    const-class v0, Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {v7, v1, v6, v0, v13}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-string v0, "Bitmap"

    const-class v1, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {v7, v0, v1, v6, v12}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-string v0, "Bitmap"

    const-class v1, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {v7, v0, v1, v6, v11}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-string v0, "Bitmap"

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    move-object/from16 v21, v15

    .line 47
    new-instance v15, Lf/d/a/o/p/c/b0;

    move-object/from16 v22, v14

    new-instance v14, Lf/d/a/o/p/c/b0$c;

    move-object/from16 v23, v3

    const/4 v3, 0x0

    invoke-direct {v14, v3}, Lf/d/a/o/p/c/b0$c;-><init>(Lf/d/a/o/p/c/b0$a;)V

    invoke-direct {v15, v2, v14}, Lf/d/a/o/p/c/b0;-><init>(Lf/d/a/o/n/b0/d;Lf/d/a/o/p/c/b0$e;)V

    .line 48
    invoke-virtual {v7, v0, v1, v6, v15}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-class v0, Landroid/graphics/Bitmap;

    const-class v1, Landroid/graphics/Bitmap;

    .line 49
    sget-object v3, Lf/d/a/o/o/v$a;->a:Lf/d/a/o/o/v$a;

    .line 50
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-string v0, "Bitmap"

    const-class v1, Landroid/graphics/Bitmap;

    const-class v3, Landroid/graphics/Bitmap;

    new-instance v6, Lf/d/a/o/p/c/a0;

    invoke-direct {v6}, Lf/d/a/o/p/c/a0;-><init>()V

    .line 51
    invoke-virtual {v7, v0, v1, v3, v6}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-class v0, Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {v7, v0, v5}, Lf/d/a/h;->b(Ljava/lang/Class;Lf/d/a/o/k;)Lf/d/a/h;

    const-string v0, "BitmapDrawable"

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lf/d/a/o/p/c/a;

    invoke-direct {v6, v8, v13}, Lf/d/a/o/p/c/a;-><init>(Landroid/content/res/Resources;Lf/d/a/o/j;)V

    .line 53
    invoke-virtual {v7, v0, v1, v3, v6}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-string v0, "BitmapDrawable"

    const-class v1, Ljava/io/InputStream;

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lf/d/a/o/p/c/a;

    invoke-direct {v6, v8, v12}, Lf/d/a/o/p/c/a;-><init>(Landroid/content/res/Resources;Lf/d/a/o/j;)V

    .line 54
    invoke-virtual {v7, v0, v1, v3, v6}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-string v0, "BitmapDrawable"

    const-class v1, Landroid/os/ParcelFileDescriptor;

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lf/d/a/o/p/c/a;

    invoke-direct {v6, v8, v11}, Lf/d/a/o/p/c/a;-><init>(Landroid/content/res/Resources;Lf/d/a/o/j;)V

    .line 55
    invoke-virtual {v7, v0, v1, v3, v6}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v1, Lf/d/a/o/p/c/b;

    invoke-direct {v1, v2, v5}, Lf/d/a/o/p/c/b;-><init>(Lf/d/a/o/n/b0/d;Lf/d/a/o/k;)V

    .line 56
    invoke-virtual {v7, v0, v1}, Lf/d/a/h;->b(Ljava/lang/Class;Lf/d/a/o/k;)Lf/d/a/h;

    const-string v0, "Gif"

    const-class v1, Ljava/io/InputStream;

    const-class v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v5, Lf/d/a/o/p/g/i;

    invoke-direct {v5, v9, v10, v4}, Lf/d/a/o/p/g/i;-><init>(Ljava/util/List;Lf/d/a/o/j;Lf/d/a/o/n/b0/b;)V

    .line 57
    invoke-virtual {v7, v0, v1, v3, v5}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-string v0, "Gif"

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v3, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 58
    invoke-virtual {v7, v0, v1, v3, v10}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v1, Lf/d/a/o/p/g/c;

    invoke-direct {v1}, Lf/d/a/o/p/g/c;-><init>()V

    .line 59
    invoke-virtual {v7, v0, v1}, Lf/d/a/h;->b(Ljava/lang/Class;Lf/d/a/o/k;)Lf/d/a/h;

    .line 60
    sget-object v0, Lf/d/a/o/o/v$a;->a:Lf/d/a/o/o/v$a;

    move-object/from16 v1, v23

    .line 61
    invoke-virtual {v7, v1, v1, v0}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-string v0, "Bitmap"

    const-class v3, Landroid/graphics/Bitmap;

    new-instance v5, Lf/d/a/o/p/g/g;

    invoke-direct {v5, v2}, Lf/d/a/o/p/g/g;-><init>(Lf/d/a/o/n/b0/d;)V

    .line 62
    invoke-virtual {v7, v0, v1, v3, v5}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/drawable/Drawable;

    const-string v3, "legacy_append"

    move-object/from16 v5, v22

    .line 63
    invoke-virtual {v7, v3, v0, v1, v5}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    .line 64
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/graphics/Bitmap;

    new-instance v3, Lf/d/a/o/p/c/w;

    invoke-direct {v3, v5, v2}, Lf/d/a/o/p/c/w;-><init>(Lf/d/a/o/p/e/d;Lf/d/a/o/n/b0/d;)V

    const-string v5, "legacy_append"

    .line 65
    invoke-virtual {v7, v5, v0, v1, v3}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    .line 66
    new-instance v0, Lf/d/a/o/p/d/a$a;

    invoke-direct {v0}, Lf/d/a/o/p/d/a$a;-><init>()V

    .line 67
    invoke-virtual {v7, v0}, Lf/d/a/h;->g(Lf/d/a/o/m/e$a;)Lf/d/a/h;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v3, Lf/d/a/o/o/d$b;

    invoke-direct {v3}, Lf/d/a/o/o/d$b;-><init>()V

    .line 68
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lf/d/a/o/o/f$e;

    invoke-direct {v3}, Lf/d/a/o/o/f$e;-><init>()V

    .line 69
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    new-instance v3, Lf/d/a/o/p/f/a;

    invoke-direct {v3}, Lf/d/a/o/p/f/a;-><init>()V

    const-string v5, "legacy_append"

    .line 70
    invoke-virtual {v7, v5, v0, v1, v3}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    .line 71
    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lf/d/a/o/o/f$b;

    invoke-direct {v3}, Lf/d/a/o/o/f$b;-><init>()V

    .line 72
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/File;

    .line 73
    sget-object v3, Lf/d/a/o/o/v$a;->a:Lf/d/a/o/o/v$a;

    .line 74
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    new-instance v0, Lf/d/a/o/m/k$a;

    invoke-direct {v0, v4}, Lf/d/a/o/m/k$a;-><init>(Lf/d/a/o/n/b0/b;)V

    .line 75
    invoke-virtual {v7, v0}, Lf/d/a/h;->g(Lf/d/a/o/m/e$a;)Lf/d/a/h;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    move-object/from16 v3, v21

    .line 76
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v5, v20

    .line 77
    invoke-virtual {v7, v0, v1, v5}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Ljava/io/InputStream;

    move-object/from16 v1, v19

    .line 78
    invoke-virtual {v7, v1, v0, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    .line 79
    invoke-virtual {v7, v1, v0, v5}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    move-object/from16 v3, p6

    .line 80
    invoke-virtual {v7, v1, v0, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v6, p3

    .line 81
    invoke-virtual {v7, v0, v5, v6}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/content/res/AssetFileDescriptor;

    .line 82
    invoke-virtual {v7, v1, v0, v6}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/net/Uri;

    .line 83
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/d/a/o/o/e$c;

    invoke-direct {v1}, Lf/d/a/o/o/e$c;-><init>()V

    move-object/from16 v3, v17

    .line 84
    invoke-virtual {v7, v3, v0, v1}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v5, Lf/d/a/o/o/e$c;

    invoke-direct {v5}, Lf/d/a/o/o/e$c;-><init>()V

    .line 85
    invoke-virtual {v7, v0, v1, v5}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/d/a/o/o/u$c;

    invoke-direct {v1}, Lf/d/a/o/o/u$c;-><init>()V

    .line 86
    invoke-virtual {v7, v3, v0, v1}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    new-instance v1, Lf/d/a/o/o/u$b;

    invoke-direct {v1}, Lf/d/a/o/o/u$b;-><init>()V

    .line 87
    invoke-virtual {v7, v3, v0, v1}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/content/res/AssetFileDescriptor;

    new-instance v1, Lf/d/a/o/o/u$a;

    invoke-direct {v1}, Lf/d/a/o/o/u$a;-><init>()V

    .line 88
    invoke-virtual {v7, v3, v0, v1}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lf/d/a/o/o/y/b$a;

    invoke-direct {v3}, Lf/d/a/o/o/y/b$a;-><init>()V

    .line 89
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lf/d/a/o/o/a$c;

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lf/d/a/o/o/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lf/d/a/o/o/a$b;

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lf/d/a/o/o/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 92
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lf/d/a/o/o/y/c$a;

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Lf/d/a/o/o/y/c$a;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lf/d/a/o/o/y/d$a;

    invoke-direct {v3, v5}, Lf/d/a/o/o/y/d$a;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lf/d/a/o/o/w$d;

    move-object/from16 v6, v18

    invoke-direct {v3, v6}, Lf/d/a/o/o/w$d;-><init>(Landroid/content/ContentResolver;)V

    .line 95
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Lf/d/a/o/o/w$b;

    invoke-direct {v3, v6}, Lf/d/a/o/o/w$b;-><init>(Landroid/content/ContentResolver;)V

    .line 96
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/content/res/AssetFileDescriptor;

    new-instance v3, Lf/d/a/o/o/w$a;

    invoke-direct {v3, v6}, Lf/d/a/o/o/w$a;-><init>(Landroid/content/ContentResolver;)V

    .line 97
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lf/d/a/o/o/x$a;

    invoke-direct {v3}, Lf/d/a/o/o/x$a;-><init>()V

    .line 98
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lf/d/a/o/o/y/e$a;

    invoke-direct {v3}, Lf/d/a/o/o/y/e$a;-><init>()V

    .line 99
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/File;

    new-instance v3, Lf/d/a/o/o/k$a;

    invoke-direct {v3, v5}, Lf/d/a/o/o/k$a;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Lf/d/a/o/o/g;

    const-class v1, Ljava/io/InputStream;

    new-instance v3, Lf/d/a/o/o/y/a$a;

    invoke-direct {v3}, Lf/d/a/o/o/y/a$a;-><init>()V

    .line 101
    invoke-virtual {v7, v0, v1, v3}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Ljava/nio/ByteBuffer;

    new-instance v1, Lf/d/a/o/o/b$a;

    invoke-direct {v1}, Lf/d/a/o/o/b$a;-><init>()V

    move-object/from16 v3, v16

    .line 102
    invoke-virtual {v7, v3, v0, v1}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lf/d/a/o/o/b$d;

    invoke-direct {v1}, Lf/d/a/o/o/b$d;-><init>()V

    .line 103
    invoke-virtual {v7, v3, v0, v1}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/net/Uri;

    .line 104
    sget-object v6, Lf/d/a/o/o/v$a;->a:Lf/d/a/o/o/v$a;

    .line 105
    invoke-virtual {v7, v0, v1, v6}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 106
    sget-object v6, Lf/d/a/o/o/v$a;->a:Lf/d/a/o/o/v$a;

    .line 107
    invoke-virtual {v7, v0, v1, v6}, Lf/d/a/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/o/o;)Lf/d/a/h;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v1, Landroid/graphics/drawable/Drawable;

    new-instance v6, Lf/d/a/o/p/e/e;

    invoke-direct {v6}, Lf/d/a/o/p/e/e;-><init>()V

    const-string v9, "legacy_append"

    .line 108
    invoke-virtual {v7, v9, v0, v1, v6}, Lf/d/a/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/j;)Lf/d/a/h;

    .line 109
    const-class v0, Landroid/graphics/Bitmap;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v6, Lf/d/a/o/p/h/b;

    invoke-direct {v6, v8}, Lf/d/a/o/p/h/b;-><init>(Landroid/content/res/Resources;)V

    .line 110
    invoke-virtual {v7, v0, v1, v6}, Lf/d/a/h;->h(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/p/h/e;)Lf/d/a/h;

    const-class v0, Landroid/graphics/Bitmap;

    move-object/from16 v1, p7

    .line 111
    invoke-virtual {v7, v0, v3, v1}, Lf/d/a/h;->h(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/p/h/e;)Lf/d/a/h;

    const-class v0, Landroid/graphics/drawable/Drawable;

    new-instance v6, Lf/d/a/o/p/h/c;

    move-object/from16 v8, p13

    invoke-direct {v6, v2, v1, v8}, Lf/d/a/o/p/h/c;-><init>(Lf/d/a/o/n/b0/d;Lf/d/a/o/p/h/e;Lf/d/a/o/p/h/e;)V

    .line 112
    invoke-virtual {v7, v0, v3, v6}, Lf/d/a/h;->h(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/p/h/e;)Lf/d/a/h;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 113
    invoke-virtual {v7, v0, v3, v8}, Lf/d/a/h;->h(Ljava/lang/Class;Ljava/lang/Class;Lf/d/a/o/p/h/e;)Lf/d/a/h;

    .line 114
    new-instance v6, Lf/d/a/s/h/f;

    invoke-direct {v6}, Lf/d/a/s/h/f;-><init>()V

    .line 115
    new-instance v0, Lf/d/a/e;

    move-object/from16 v1, p0

    iget-object v7, v1, Lf/d/a/c;->d:Lf/d/a/h;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object v5, v7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p2

    move/from16 v11, p12

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lf/d/a/e;-><init>(Landroid/content/Context;Lf/d/a/o/n/b0/b;Lf/d/a/h;Lf/d/a/s/h/f;Lf/d/a/c$a;Ljava/util/Map;Ljava/util/List;Lf/d/a/o/n/l;ZI)V

    iput-object v0, v1, Lf/d/a/c;->c:Lf/d/a/e;

    return-void

    :catchall_1
    move-exception v0

    .line 116
    monitor-exit v9

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 26
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    move-object/from16 v0, p1

    .line 1
    sget-boolean v1, Lf/d/a/c;->j:Z

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    .line 2
    sput-boolean v1, Lf/d/a/c;->j:Z

    .line 3
    new-instance v2, Lf/d/a/d;

    invoke-direct {v2}, Lf/d/a/d;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual/range {p1 .. p1}, Lf/d/a/q/a;->isManifestParsingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v17, v3

    goto :goto_3

    :cond_1
    :goto_0
    const-string v3, "ManifestParser"

    .line 7
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 10
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 11
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v8, :cond_2

    .line 12
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_2

    .line 13
    :cond_2
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got app info metadata: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    :cond_3
    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "GlideModule"

    .line 16
    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 17
    invoke-static {v8}, Lf/d/a/q/e;->a(Ljava/lang/String;)Lf/d/a/q/c;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 19
    :cond_5
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_2
    move-object/from16 v17, v6

    :goto_3
    const-string v3, "Glide"

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getExcludedModuleClasses()Ljava/util/Set;

    move-result-object v5

    .line 22
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 23
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 24
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/d/a/q/c;

    .line 25
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_4

    .line 26
    :cond_6
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 29
    :cond_8
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 30
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/d/a/q/c;

    const-string v5, "Discovered GlideModule from manifest: "

    .line 31
    invoke-static {v5}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_a

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->getRequestManagerFactory()Lf/d/a/p/l$b;

    move-result-object v3

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 33
    :goto_6
    iput-object v3, v2, Lf/d/a/d;->m:Lf/d/a/p/l$b;

    .line 34
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/d/a/q/c;

    .line 35
    invoke-interface {v4, v15, v2}, Lf/d/a/q/b;->applyOptions(Landroid/content/Context;Lf/d/a/d;)V

    goto :goto_7

    :cond_b
    if-eqz v0, :cond_c

    .line 36
    invoke-virtual {v0, v15, v2}, Lf/d/a/q/a;->applyOptions(Landroid/content/Context;Lf/d/a/d;)V

    .line 37
    :cond_c
    iget-object v3, v2, Lf/d/a/d;->f:Lf/d/a/o/n/d0/a;

    const/4 v4, 0x0

    if-nez v3, :cond_d

    .line 38
    invoke-static {}, Lf/d/a/o/n/d0/a;->a()I

    move-result v7

    sget-object v3, Lf/d/a/o/n/d0/a$b;->b:Lf/d/a/o/n/d0/a$b;

    .line 39
    new-instance v13, Lf/d/a/o/n/d0/a;

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v12, Lf/d/a/o/n/d0/a$a;

    const-string v5, "source"

    invoke-direct {v12, v5, v3, v4}, Lf/d/a/o/n/d0/a$a;-><init>(Ljava/lang/String;Lf/d/a/o/n/d0/a$b;Z)V

    const-wide/16 v8, 0x0

    move-object v5, v14

    move v6, v7

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v13, v14}, Lf/d/a/o/n/d0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 40
    iput-object v13, v2, Lf/d/a/d;->f:Lf/d/a/o/n/d0/a;

    .line 41
    :cond_d
    iget-object v3, v2, Lf/d/a/d;->g:Lf/d/a/o/n/d0/a;

    if-nez v3, :cond_e

    .line 42
    sget-object v3, Lf/d/a/o/n/d0/a$b;->b:Lf/d/a/o/n/d0/a$b;

    .line 43
    new-instance v5, Lf/d/a/o/n/d0/a;

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v13, Lf/d/a/o/n/d0/a$a;

    const-string v6, "disk-cache"

    invoke-direct {v13, v6, v3, v1}, Lf/d/a/o/n/d0/a$a;-><init>(Ljava/lang/String;Lf/d/a/o/n/d0/a$b;Z)V

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    move-object v6, v14

    move v7, v8

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v5, v14}, Lf/d/a/o/n/d0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 44
    iput-object v5, v2, Lf/d/a/d;->g:Lf/d/a/o/n/d0/a;

    .line 45
    :cond_e
    iget-object v3, v2, Lf/d/a/d;->n:Lf/d/a/o/n/d0/a;

    if-nez v3, :cond_10

    .line 46
    invoke-static {}, Lf/d/a/o/n/d0/a;->a()I

    move-result v3

    const/4 v5, 0x4

    if-lt v3, v5, :cond_f

    const/4 v3, 0x2

    const/4 v7, 0x2

    goto :goto_8

    :cond_f
    const/4 v3, 0x1

    const/4 v7, 0x1

    .line 47
    :goto_8
    sget-object v3, Lf/d/a/o/n/d0/a$b;->b:Lf/d/a/o/n/d0/a$b;

    .line 48
    new-instance v13, Lf/d/a/o/n/d0/a;

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v12, Lf/d/a/o/n/d0/a$a;

    const-string v5, "animation"

    invoke-direct {v12, v5, v3, v1}, Lf/d/a/o/n/d0/a$a;-><init>(Ljava/lang/String;Lf/d/a/o/n/d0/a$b;Z)V

    const-wide/16 v8, 0x0

    move-object v5, v14

    move v6, v7

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v13, v14}, Lf/d/a/o/n/d0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 49
    iput-object v13, v2, Lf/d/a/d;->n:Lf/d/a/o/n/d0/a;

    .line 50
    :cond_10
    iget-object v1, v2, Lf/d/a/d;->i:Lf/d/a/o/n/c0/j;

    if-nez v1, :cond_11

    .line 51
    new-instance v1, Lf/d/a/o/n/c0/j$a;

    invoke-direct {v1, v15}, Lf/d/a/o/n/c0/j$a;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v3, Lf/d/a/o/n/c0/j;

    invoke-direct {v3, v1}, Lf/d/a/o/n/c0/j;-><init>(Lf/d/a/o/n/c0/j$a;)V

    .line 53
    iput-object v3, v2, Lf/d/a/d;->i:Lf/d/a/o/n/c0/j;

    .line 54
    :cond_11
    iget-object v1, v2, Lf/d/a/d;->j:Lf/d/a/p/d;

    if-nez v1, :cond_12

    .line 55
    new-instance v1, Lf/d/a/p/f;

    invoke-direct {v1}, Lf/d/a/p/f;-><init>()V

    iput-object v1, v2, Lf/d/a/d;->j:Lf/d/a/p/d;

    .line 56
    :cond_12
    iget-object v1, v2, Lf/d/a/d;->c:Lf/d/a/o/n/b0/d;

    if-nez v1, :cond_14

    .line 57
    iget-object v1, v2, Lf/d/a/d;->i:Lf/d/a/o/n/c0/j;

    .line 58
    iget v1, v1, Lf/d/a/o/n/c0/j;->a:I

    if-lez v1, :cond_13

    .line 59
    new-instance v3, Lf/d/a/o/n/b0/j;

    int-to-long v5, v1

    invoke-direct {v3, v5, v6}, Lf/d/a/o/n/b0/j;-><init>(J)V

    iput-object v3, v2, Lf/d/a/d;->c:Lf/d/a/o/n/b0/d;

    goto :goto_9

    .line 60
    :cond_13
    new-instance v1, Lf/d/a/o/n/b0/e;

    invoke-direct {v1}, Lf/d/a/o/n/b0/e;-><init>()V

    iput-object v1, v2, Lf/d/a/d;->c:Lf/d/a/o/n/b0/d;

    .line 61
    :cond_14
    :goto_9
    iget-object v1, v2, Lf/d/a/d;->d:Lf/d/a/o/n/b0/b;

    if-nez v1, :cond_15

    .line 62
    new-instance v1, Lf/d/a/o/n/b0/i;

    iget-object v3, v2, Lf/d/a/d;->i:Lf/d/a/o/n/c0/j;

    .line 63
    iget v3, v3, Lf/d/a/o/n/c0/j;->d:I

    .line 64
    invoke-direct {v1, v3}, Lf/d/a/o/n/b0/i;-><init>(I)V

    iput-object v1, v2, Lf/d/a/d;->d:Lf/d/a/o/n/b0/b;

    .line 65
    :cond_15
    iget-object v1, v2, Lf/d/a/d;->e:Lf/d/a/o/n/c0/i;

    if-nez v1, :cond_16

    .line 66
    new-instance v1, Lf/d/a/o/n/c0/h;

    iget-object v3, v2, Lf/d/a/d;->i:Lf/d/a/o/n/c0/j;

    .line 67
    iget v3, v3, Lf/d/a/o/n/c0/j;->b:I

    int-to-long v5, v3

    .line 68
    invoke-direct {v1, v5, v6}, Lf/d/a/o/n/c0/h;-><init>(J)V

    iput-object v1, v2, Lf/d/a/d;->e:Lf/d/a/o/n/c0/i;

    .line 69
    :cond_16
    iget-object v1, v2, Lf/d/a/d;->h:Lf/d/a/o/n/c0/a$a;

    if-nez v1, :cond_17

    .line 70
    new-instance v1, Lf/d/a/o/n/c0/g;

    invoke-direct {v1, v15}, Lf/d/a/o/n/c0/g;-><init>(Landroid/content/Context;)V

    iput-object v1, v2, Lf/d/a/d;->h:Lf/d/a/o/n/c0/a$a;

    .line 71
    :cond_17
    iget-object v1, v2, Lf/d/a/d;->b:Lf/d/a/o/n/l;

    if-nez v1, :cond_18

    .line 72
    new-instance v1, Lf/d/a/o/n/l;

    iget-object v6, v2, Lf/d/a/d;->e:Lf/d/a/o/n/c0/i;

    iget-object v7, v2, Lf/d/a/d;->h:Lf/d/a/o/n/c0/a$a;

    iget-object v8, v2, Lf/d/a/d;->g:Lf/d/a/o/n/d0/a;

    iget-object v9, v2, Lf/d/a/d;->f:Lf/d/a/o/n/d0/a;

    .line 73
    new-instance v10, Lf/d/a/o/n/d0/a;

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v21, Lf/d/a/o/n/d0/a;->b:J

    sget-object v23, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v24, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v24 .. v24}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v5, Lf/d/a/o/n/d0/a$a;

    sget-object v11, Lf/d/a/o/n/d0/a$b;->b:Lf/d/a/o/n/d0/a$b;

    const-string v12, "source-unlimited"

    invoke-direct {v5, v12, v11, v4}, Lf/d/a/o/n/d0/a$a;-><init>(Ljava/lang/String;Lf/d/a/o/n/d0/a$b;Z)V

    const/16 v19, 0x0

    const v20, 0x7fffffff

    move-object/from16 v18, v3

    move-object/from16 v25, v5

    invoke-direct/range {v18 .. v25}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v10, v3}, Lf/d/a/o/n/d0/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 74
    iget-object v11, v2, Lf/d/a/d;->n:Lf/d/a/o/n/d0/a;

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lf/d/a/o/n/l;-><init>(Lf/d/a/o/n/c0/i;Lf/d/a/o/n/c0/a$a;Lf/d/a/o/n/d0/a;Lf/d/a/o/n/d0/a;Lf/d/a/o/n/d0/a;Lf/d/a/o/n/d0/a;Z)V

    iput-object v1, v2, Lf/d/a/d;->b:Lf/d/a/o/n/l;

    .line 75
    :cond_18
    iget-object v1, v2, Lf/d/a/d;->o:Ljava/util/List;

    if-nez v1, :cond_19

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lf/d/a/d;->o:Ljava/util/List;

    goto :goto_a

    .line 77
    :cond_19
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lf/d/a/d;->o:Ljava/util/List;

    .line 78
    :goto_a
    new-instance v9, Lf/d/a/p/l;

    iget-object v1, v2, Lf/d/a/d;->m:Lf/d/a/p/l$b;

    invoke-direct {v9, v1}, Lf/d/a/p/l;-><init>(Lf/d/a/p/l$b;)V

    .line 79
    new-instance v1, Lf/d/a/c;

    iget-object v5, v2, Lf/d/a/d;->b:Lf/d/a/o/n/l;

    iget-object v6, v2, Lf/d/a/d;->e:Lf/d/a/o/n/c0/i;

    iget-object v7, v2, Lf/d/a/d;->c:Lf/d/a/o/n/b0/d;

    iget-object v8, v2, Lf/d/a/d;->d:Lf/d/a/o/n/b0/b;

    iget-object v10, v2, Lf/d/a/d;->j:Lf/d/a/p/d;

    iget v11, v2, Lf/d/a/d;->k:I

    iget-object v12, v2, Lf/d/a/d;->l:Lf/d/a/c$a;

    iget-object v13, v2, Lf/d/a/d;->a:Ljava/util/Map;

    iget-object v14, v2, Lf/d/a/d;->o:Ljava/util/List;

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v3, v1

    move-object v4, v15

    move-object v0, v15

    move v15, v2

    invoke-direct/range {v3 .. v16}, Lf/d/a/c;-><init>(Landroid/content/Context;Lf/d/a/o/n/l;Lf/d/a/o/n/c0/i;Lf/d/a/o/n/b0/d;Lf/d/a/o/n/b0/b;Lf/d/a/p/l;Lf/d/a/p/d;ILf/d/a/c$a;Ljava/util/Map;Ljava/util/List;ZZ)V

    .line 80
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/d/a/q/c;

    .line 81
    :try_start_1
    iget-object v4, v1, Lf/d/a/c;->d:Lf/d/a/h;

    invoke-interface {v3, v0, v1, v4}, Lf/d/a/q/f;->registerComponents(Landroid/content/Context;Lf/d/a/c;Lf/d/a/h;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-static {v2}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1a
    move-object v2, v0

    move-object/from16 v0, p1

    if-eqz v0, :cond_1b

    .line 84
    iget-object v3, v1, Lf/d/a/c;->d:Lf/d/a/h;

    invoke-virtual {v0, v2, v1, v3}, Lf/d/a/q/d;->registerComponents(Landroid/content/Context;Lf/d/a/c;Lf/d/a/h;)V

    .line 85
    :cond_1b
    invoke-virtual {v2, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 86
    sput-object v1, Lf/d/a/c;->i:Lf/d/a/c;

    .line 87
    sput-boolean v18, Lf/d/a/c;->j:Z

    return-void

    :catch_1
    move-exception v0

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find metadata to parse GlideModules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 89
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lf/d/a/c;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/c;->i:Lf/d/a/c;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lf/d/a/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p0

    .line 7
    invoke-static {p0}, Lf/d/a/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception p0

    .line 8
    invoke-static {p0}, Lf/d/a/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception p0

    .line 9
    invoke-static {p0}, Lf/d/a/c;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_4
    const/4 v0, 0x5

    const-string v2, "Glide"

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    :goto_0
    const-class v0, Lf/d/a/c;

    monitor-enter v0

    .line 12
    :try_start_1
    sget-object v2, Lf/d/a/c;->i:Lf/d/a/c;

    if-nez v2, :cond_0

    .line 13
    invoke-static {p0, v1}, Lf/d/a/c;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    .line 14
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 15
    :cond_1
    :goto_1
    sget-object p0, Lf/d/a/c;->i:Lf/d/a/c;

    return-object p0
.end method

.method public static c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Landroid/content/Context;)Lf/d/a/j;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lf/d/a/c;->b(Landroid/content/Context;)Lf/d/a/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lf/d/a/c;->f:Lf/d/a/p/l;

    .line 4
    invoke-virtual {v0, p0}, Lf/d/a/p/l;->b(Landroid/content/Context;)Lf/d/a/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Lf/d/a/u/i;->a()V

    .line 2
    iget-object v0, p0, Lf/d/a/c;->b:Lf/d/a/o/n/c0/i;

    check-cast v0, Lf/d/a/u/f;

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lf/d/a/u/f;->e(J)V

    .line 4
    iget-object v0, p0, Lf/d/a/c;->a:Lf/d/a/o/n/b0/d;

    invoke-interface {v0}, Lf/d/a/o/n/b0/d;->c()V

    .line 5
    iget-object v0, p0, Lf/d/a/c;->e:Lf/d/a/o/n/b0/b;

    invoke-interface {v0}, Lf/d/a/o/n/b0/b;->c()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 5

    .line 1
    invoke-static {}, Lf/d/a/u/i;->a()V

    .line 2
    iget-object v0, p0, Lf/d/a/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/d/a/j;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    throw v2

    .line 4
    :cond_1
    iget-object v0, p0, Lf/d/a/c;->b:Lf/d/a/o/n/c0/i;

    check-cast v0, Lf/d/a/o/n/c0/h;

    if-eqz v0, :cond_5

    const/16 v1, 0x28

    if-lt p1, v1, :cond_2

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lf/d/a/u/f;->e(J)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x14

    if-ge p1, v1, :cond_3

    const/16 v1, 0xf

    if-ne p1, v1, :cond_4

    .line 6
    :cond_3
    monitor-enter v0

    .line 7
    :try_start_0
    iget-wide v1, v0, Lf/d/a/u/f;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v3, 0x2

    .line 8
    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lf/d/a/u/f;->e(J)V

    .line 9
    :cond_4
    :goto_1
    iget-object v0, p0, Lf/d/a/c;->a:Lf/d/a/o/n/b0/d;

    invoke-interface {v0, p1}, Lf/d/a/o/n/b0/d;->trimMemory(I)V

    .line 10
    iget-object v0, p0, Lf/d/a/c;->e:Lf/d/a/o/n/b0/b;

    invoke-interface {v0, p1}, Lf/d/a/o/n/b0/b;->trimMemory(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1

    .line 12
    :cond_5
    throw v2
.end method
