.class public Lf/d/a/l/a$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf/d/a/l/a;


# direct methods
.method public constructor <init>(Lf/d/a/l/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/d/a/l/a$a;->a:Lf/d/a/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/d/a/l/a$a;->a:Lf/d/a/l/a;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/d/a/l/a$a;->a:Lf/d/a/l/a;

    .line 3
    iget-object v1, v1, Lf/d/a/l/a;->i:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lf/d/a/l/a$a;->a:Lf/d/a/l/a;

    .line 6
    invoke-virtual {v1}, Lf/d/a/l/a;->O()V

    .line 7
    iget-object v1, p0, Lf/d/a/l/a$a;->a:Lf/d/a/l/a;

    .line 8
    invoke-virtual {v1}, Lf/d/a/l/a;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lf/d/a/l/a$a;->a:Lf/d/a/l/a;

    .line 10
    invoke-virtual {v1}, Lf/d/a/l/a;->M()V

    .line 11
    iget-object v1, p0, Lf/d/a/l/a$a;->a:Lf/d/a/l/a;

    const/4 v2, 0x0

    .line 12
    iput v2, v1, Lf/d/a/l/a;->k:I

    .line 13
    :cond_1
    monitor-exit v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
