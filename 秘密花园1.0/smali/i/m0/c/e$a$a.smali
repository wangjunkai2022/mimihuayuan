.class public final Li/m0/c/e$a$a;
.super Lh/o/c/h;
.source "DiskLruCache.kt"

# interfaces
.implements Lh/o/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/m0/c/e$a;->d(I)Lj/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/o/c/h;",
        "Lh/o/b/b<",
        "Ljava/io/IOException;",
        "Lh/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Li/m0/c/e$a;


# direct methods
.method public constructor <init>(Li/m0/c/e$a;I)V
    .locals 0

    iput-object p1, p0, Li/m0/c/e$a$a;->a:Li/m0/c/e$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lh/o/c/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/io/IOException;

    const-string v0, "it"

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Li/m0/c/e$a$a;->a:Li/m0/c/e$a;

    iget-object p1, p1, Li/m0/c/e$a;->d:Li/m0/c/e;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Li/m0/c/e$a$a;->a:Li/m0/c/e$a;

    invoke-virtual {v0}, Li/m0/c/e$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p1

    .line 5
    sget-object p1, Lh/i;->a:Lh/i;

    return-object p1

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p1

    throw v0

    .line 7
    :cond_0
    invoke-static {v0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
