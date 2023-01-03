.class public final Li/d$c;
.super Ljava/lang/Object;
.source "Cache.kt"

# interfaces
.implements Li/m0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lj/y;

.field public final b:Lj/y;

.field public c:Z

.field public final d:Li/m0/c/e$a;

.field public final synthetic e:Li/d;


# direct methods
.method public constructor <init>(Li/d;Li/m0/c/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/m0/c/e$a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/d$c;->e:Li/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li/d$c;->d:Li/m0/c/e$a;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, p1}, Li/m0/c/e$a;->d(I)Lj/y;

    move-result-object p1

    iput-object p1, p0, Li/d$c;->a:Lj/y;

    .line 3
    new-instance p2, Li/d$c$a;

    invoke-direct {p2, p0, p1}, Li/d$c$a;-><init>(Li/d$c;Lj/y;)V

    iput-object p2, p0, Li/d$c;->b:Lj/y;

    return-void
.end method


# virtual methods
.method public a()Lj/y;
    .locals 1

    .line 1
    iget-object v0, p0, Li/d$c;->b:Lj/y;

    return-object v0
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/d$c;->e:Li/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Li/d$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    iput-boolean v1, p0, Li/d$c;->c:Z

    .line 4
    iget-object v2, p0, Li/d$c;->e:Li/d;

    .line 5
    iget v3, v2, Li/d;->c:I

    add-int/2addr v3, v1

    .line 6
    iput v3, v2, Li/d;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    .line 8
    iget-object v0, p0, Li/d$c;->a:Lj/y;

    invoke-static {v0}, Li/m0/b;->f(Ljava/io/Closeable;)V

    .line 9
    :try_start_2
    iget-object v0, p0, Li/d$c;->d:Li/m0/c/e$a;

    invoke-virtual {v0}, Li/m0/c/e$a;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method
