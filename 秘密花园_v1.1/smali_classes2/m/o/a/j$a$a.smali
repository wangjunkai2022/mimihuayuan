.class public Lm/o/a/j$a$a;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lm/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/o/a/j$a;->i(Lm/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm/f;

.field public final synthetic b:Lm/o/a/j$a;


# direct methods
.method public constructor <init>(Lm/o/a/j$a;Lm/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/o/a/j$a$a;->b:Lm/o/a/j$a;

    iput-object p2, p0, Lm/o/a/j$a$a;->a:Lm/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/o/a/j$a$a;->b:Lm/o/a/j$a;

    iget-object v0, v0, Lm/o/a/j$a;->i:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lm/o/a/j$a$a;->b:Lm/o/a/j$a;

    iget-boolean v1, v0, Lm/o/a/j$a;->f:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lm/o/a/j$a;->g:Lm/g$a;

    new-instance v1, Lm/o/a/j$a$a$a;

    invoke-direct {v1, p0, p1, p2}, Lm/o/a/j$a$a$a;-><init>(Lm/o/a/j$a$a;J)V

    invoke-virtual {v0, v1}, Lm/g$a;->b(Lm/n/a;)Lm/k;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lm/o/a/j$a$a;->a:Lm/f;

    invoke-interface {v0, p1, p2}, Lm/f;->b(J)V

    :goto_1
    return-void
.end method
