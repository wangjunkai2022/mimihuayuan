.class public final Lf/i/a/a/b1/e;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lf/i/a/a/b1/i;


# static fields
.field public static final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lf/i/a/a/b1/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lf/i/a/a/b1/g;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    sput-object v0, Lf/i/a/a/b1/e;->c:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lf/i/a/a/b1/e;->b:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()[Lf/i/a/a/b1/g;
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lf/i/a/a/b1/e;->c:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xd

    if-nez v0, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    new-array v0, v0, [Lf/i/a/a/b1/g;

    .line 2
    new-instance v2, Lf/i/a/a/b1/s/d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lf/i/a/a/b1/s/d;-><init>(I)V

    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 3
    new-instance v11, Lf/i/a/a/b1/u/d;

    const/4 v5, 0x0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, v11

    .line 5
    invoke-direct/range {v4 .. v10}, Lf/i/a/a/b1/u/d;-><init>(ILf/i/a/a/m1/e0;Lf/i/a/a/b1/u/j;Lf/i/a/a/z0/e;Ljava/util/List;Lf/i/a/a/b1/p;)V

    .line 6
    aput-object v11, v0, v2

    const/4 v2, 0x2

    .line 7
    new-instance v4, Lf/i/a/a/b1/u/g;

    iget v5, p0, Lf/i/a/a/b1/e;->a:I

    invoke-direct {v4, v5}, Lf/i/a/a/b1/u/g;-><init>(I)V

    aput-object v4, v0, v2

    const/4 v2, 0x3

    .line 8
    new-instance v4, Lf/i/a/a/b1/t/d;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    invoke-direct {v4, v3, v5, v6}, Lf/i/a/a/b1/t/d;-><init>(IJ)V

    .line 10
    aput-object v4, v0, v2

    const/4 v2, 0x4

    .line 11
    new-instance v4, Lf/i/a/a/b1/x/e;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6, v3}, Lf/i/a/a/b1/x/e;-><init>(JI)V

    aput-object v4, v0, v2

    const/4 v2, 0x5

    .line 12
    new-instance v4, Lf/i/a/a/b1/x/a;

    invoke-direct {v4}, Lf/i/a/a/b1/x/a;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x6

    .line 13
    new-instance v4, Lf/i/a/a/b1/x/b0;

    iget v7, p0, Lf/i/a/a/b1/e;->b:I

    .line 14
    new-instance v8, Lf/i/a/a/m1/e0;

    invoke-direct {v8, v5, v6}, Lf/i/a/a/m1/e0;-><init>(J)V

    new-instance v5, Lf/i/a/a/b1/x/g;

    invoke-direct {v5, v3}, Lf/i/a/a/b1/x/g;-><init>(I)V

    invoke-direct {v4, v7, v8, v5}, Lf/i/a/a/b1/x/b0;-><init>(ILf/i/a/a/m1/e0;Lf/i/a/a/b1/x/c0$c;)V

    .line 15
    aput-object v4, v0, v2

    const/4 v2, 0x7

    .line 16
    new-instance v4, Lf/i/a/a/b1/r/b;

    invoke-direct {v4}, Lf/i/a/a/b1/r/b;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x8

    .line 17
    new-instance v4, Lf/i/a/a/b1/v/c;

    invoke-direct {v4}, Lf/i/a/a/b1/v/c;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x9

    .line 18
    new-instance v4, Lf/i/a/a/b1/x/u;

    invoke-direct {v4}, Lf/i/a/a/b1/x/u;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xa

    .line 19
    new-instance v4, Lf/i/a/a/b1/y/a;

    invoke-direct {v4}, Lf/i/a/a/b1/y/a;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xb

    .line 20
    new-instance v4, Lf/i/a/a/b1/q/a;

    invoke-direct {v4, v3}, Lf/i/a/a/b1/q/a;-><init>(I)V

    aput-object v4, v0, v2

    const/16 v2, 0xc

    .line 21
    new-instance v4, Lf/i/a/a/b1/x/c;

    invoke-direct {v4}, Lf/i/a/a/b1/x/c;-><init>()V

    aput-object v4, v0, v2

    .line 22
    sget-object v2, Lf/i/a/a/b1/e;->c:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 23
    :try_start_1
    sget-object v2, Lf/i/a/a/b1/e;->c:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/b1/g;

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
