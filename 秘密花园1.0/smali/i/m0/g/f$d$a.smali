.class public final Li/m0/g/f$d$a;
.super Ljava/lang/Object;
.source "Util.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/m0/g/f$d;->k(ZLi/m0/g/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Li/m0/g/f$d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Li/m0/g/f$d;)V
    .locals 0

    iput-object p1, p0, Li/m0/g/f$d$a;->a:Ljava/lang/String;

    iput-object p2, p0, Li/m0/g/f$d$a;->b:Li/m0/g/f$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/m0/g/f$d$a;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "currentThread"

    .line 3
    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Li/m0/g/f$d$a;->b:Li/m0/g/f$d;

    iget-object v0, v0, Li/m0/g/f$d;->b:Li/m0/g/f;

    .line 6
    iget-object v0, v0, Li/m0/g/f;->b:Li/m0/g/f$c;

    .line 7
    iget-object v3, p0, Li/m0/g/f$d$a;->b:Li/m0/g/f$d;

    iget-object v3, v3, Li/m0/g/f$d;->b:Li/m0/g/f;

    invoke-virtual {v0, v3}, Li/m0/g/f$c;->a(Li/m0/g/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
