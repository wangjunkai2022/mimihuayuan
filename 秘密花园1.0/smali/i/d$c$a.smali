.class public final Li/d$c$a;
.super Lj/l;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/d$c;-><init>(Li/d;Li/m0/c/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Li/d$c;


# direct methods
.method public constructor <init>(Li/d$c;Lj/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/y;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/d$c$a;->b:Li/d$c;

    invoke-direct {p0, p2}, Lj/l;-><init>(Lj/y;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/d$c$a;->b:Li/d$c;

    iget-object v0, v0, Li/d$c;->e:Li/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/d$c$a;->b:Li/d$c;

    .line 3
    iget-boolean v1, v1, Li/d$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v1, p0, Li/d$c$a;->b:Li/d$c;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Li/d$c;->c:Z

    .line 7
    iget-object v1, p0, Li/d$c$a;->b:Li/d$c;

    iget-object v1, v1, Li/d$c;->e:Li/d;

    .line 8
    iget v3, v1, Li/d;->b:I

    add-int/2addr v3, v2

    .line 9
    iput v3, v1, Li/d;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    iget-object v0, p0, Lj/l;->a:Lj/y;

    invoke-interface {v0}, Lj/y;->close()V

    .line 12
    iget-object v0, p0, Li/d$c$a;->b:Li/d$c;

    .line 13
    iget-object v0, v0, Li/d$c;->d:Li/m0/c/e$a;

    .line 14
    invoke-virtual {v0}, Li/m0/c/e$a;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0

    throw v1
.end method
