.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/u0/h;

.field public b:Lf/i/a/a/h1/u0/i;

.field public c:Lf/i/a/a/h1/u0/t/i;

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

.field public e:Lf/i/a/a/h1/u0/t/j$a;

.field public f:Lf/i/a/a/h1/v;

.field public g:Lf/i/a/a/l1/b0;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/u0/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->a:Lf/i/a/a/h1/u0/h;

    .line 4
    new-instance p1, Lf/i/a/a/h1/u0/t/b;

    invoke-direct {p1}, Lf/i/a/a/h1/u0/t/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->c:Lf/i/a/a/h1/u0/t/i;

    .line 5
    sget-object p1, Lf/i/a/a/h1/u0/t/c;->q:Lf/i/a/a/h1/u0/t/j$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->e:Lf/i/a/a/h1/u0/t/j$a;

    .line 6
    sget-object p1, Lf/i/a/a/h1/u0/i;->a:Lf/i/a/a/h1/u0/i;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->b:Lf/i/a/a/h1/u0/i;

    .line 7
    new-instance p1, Lf/i/a/a/l1/w;

    invoke-direct {p1}, Lf/i/a/a/l1/w;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->g:Lf/i/a/a/l1/b0;

    .line 8
    new-instance p1, Lf/i/a/a/h1/v;

    invoke-direct {p1}, Lf/i/a/a/h1/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->f:Lf/i/a/a/h1/v;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/l1/m$a;)V
    .locals 1

    .line 1
    new-instance v0, Lf/i/a/a/h1/u0/e;

    invoke-direct {v0, p1}, Lf/i/a/a/h1/u0/e;-><init>(Lf/i/a/a/l1/m$a;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lf/i/a/a/h1/u0/h;)V

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
    .locals 14

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->i:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lf/i/a/a/h1/u0/t/d;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->c:Lf/i/a/a/h1/u0/t/i;

    invoke-direct {v1, v2, v0}, Lf/i/a/a/h1/u0/t/d;-><init>(Lf/i/a/a/h1/u0/t/i;Ljava/util/List;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->c:Lf/i/a/a/h1/u0/t/i;

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->a:Lf/i/a/a/h1/u0/h;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->b:Lf/i/a/a/h1/u0/i;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->f:Lf/i/a/a/h1/v;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->g:Lf/i/a/a/l1/b0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->e:Lf/i/a/a/h1/u0/t/j$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->c:Lf/i/a/a/h1/u0/t/i;

    .line 5
    invoke-interface {v1, v5, v8, v2}, Lf/i/a/a/h1/u0/t/j$a;->a(Lf/i/a/a/h1/u0/h;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/u0/t/i;)Lf/i/a/a/h1/u0/t/j;

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->h:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lf/i/a/a/h1/u0/h;Lf/i/a/a/h1/u0/i;Lf/i/a/a/h1/v;Lf/i/a/a/l1/b0;Lf/i/a/a/h1/u0/t/j;ZZLjava/lang/Object;Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$a;)V

    return-object v0
.end method

.method public setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/i/a/a/e1/c0;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->i:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->d:Ljava/util/List;

    return-object p0
.end method
