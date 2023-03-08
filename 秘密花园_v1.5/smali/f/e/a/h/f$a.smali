.class public Lf/e/a/h/f$a;
.super Landroid/os/Handler;
.source "M3U8InfoManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/e/a/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/e/a/h/f;


# direct methods
.method public constructor <init>(Lf/e/a/h/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/h/f$a;->a:Lf/e/a/h/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x44d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x44e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/e/a/h/f$a;->a:Lf/e/a/h/f;

    .line 3
    iget-object v0, v0, Lf/e/a/h/f;->a:Lf/e/a/h/h/d;

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf/e/a/h/h/a;

    check-cast v0, Lf/e/a/h/c;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Lf/e/a/h/b;

    invoke-direct {v1, v0, p1}, Lf/e/a/h/b;-><init>(Lf/e/a/h/c;Lf/e/a/h/h/a;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1

    .line 8
    :cond_2
    iget-object v0, p0, Lf/e/a/h/f$a;->a:Lf/e/a/h/f;

    .line 9
    iget-object v0, v0, Lf/e/a/h/f;->a:Lf/e/a/h/h/d;

    .line 10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    check-cast v0, Lf/e/a/h/c;

    .line 11
    iget-object v0, v0, Lf/e/a/h/c;->a:Lf/e/a/h/a;

    .line 12
    invoke-virtual {v0, p1}, Lf/e/a/h/a;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
