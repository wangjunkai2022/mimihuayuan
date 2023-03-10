.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/t0/c$a;

.field public final b:Lf/i/a/a/l1/m$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Lf/i/a/a/l1/e0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/l1/e0$a<",
            "+",
            "Lf/i/a/a/h1/t0/k/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lf/i/a/a/h1/v;

.field public f:Lf/i/a/a/l1/b0;

.field public g:J

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/t0/c$a;Lf/i/a/a/l1/m$a;)V
    .locals 0
    .param p2    # Lf/i/a/a/l1/m$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lf/i/a/a/h1/t0/c$a;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Lf/i/a/a/l1/m$a;

    .line 5
    new-instance p1, Lf/i/a/a/l1/w;

    invoke-direct {p1}, Lf/i/a/a/l1/w;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:Lf/i/a/a/l1/b0;

    const-wide/16 p1, 0x7530

    .line 6
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->g:J

    .line 7
    new-instance p1, Lf/i/a/a/h1/v;

    invoke-direct {p1}, Lf/i/a/a/h1/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lf/i/a/a/h1/v;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/l1/m$a;)V
    .locals 1

    .line 1
    new-instance v0, Lf/i/a/a/h1/t0/h$a;

    invoke-direct {v0, p1}, Lf/i/a/a/h1/t0/h$a;-><init>(Lf/i/a/a/l1/m$a;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lf/i/a/a/h1/t0/c$a;Lf/i/a/a/l1/m$a;)V

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->i:Z

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lf/i/a/a/l1/e0$a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lf/i/a/a/h1/t0/k/c;

    invoke-direct {v1}, Lf/i/a/a/h1/t0/k/c;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lf/i/a/a/l1/e0$a;

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5
    new-instance v2, Lf/i/a/a/e1/z;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lf/i/a/a/l1/e0$a;

    invoke-direct {v2, v3, v1}, Lf/i/a/a/e1/z;-><init>(Lf/i/a/a/l1/e0$a;Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lf/i/a/a/l1/e0$a;

    .line 6
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    .line 7
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Lf/i/a/a/l1/m$a;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lf/i/a/a/l1/e0$a;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lf/i/a/a/h1/t0/c$a;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lf/i/a/a/h1/v;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:Lf/i/a/a/l1/b0;

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->g:J

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->h:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v4, v1

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v16}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lf/i/a/a/h1/t0/k/b;Landroid/net/Uri;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/e0$a;Lf/i/a/a/h1/t0/c$a;Lf/i/a/a/h1/v;Lf/i/a/a/l1/b0;JZLjava/lang/Object;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    return-object v1

    :cond_2
    const/4 v1, 0x0

    .line 8
    throw v1
.end method

.method public setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Ljava/util/List;

    return-object p0
.end method
