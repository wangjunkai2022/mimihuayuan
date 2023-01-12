.class public Lm/o/d/e;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lm/n/a;


# instance fields
.field public final synthetic a:Lm/n/a;

.field public final synthetic b:Lm/g$a;


# direct methods
.method public constructor <init>(Lm/o/d/d$b;Lm/n/a;Lm/g$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lm/o/d/e;->a:Lm/n/a;

    iput-object p3, p0, Lm/o/d/e;->b:Lm/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lm/o/d/e;->a:Lm/n/a;

    invoke-interface {v0}, Lm/n/a;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lm/o/d/e;->b:Lm/g$a;

    invoke-interface {v0}, Lm/k;->c()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lm/o/d/e;->b:Lm/g$a;

    invoke-interface {v1}, Lm/k;->c()V

    throw v0
.end method
