.class public final Lcom/umeng/commonsdk/framework/c$1;
.super Landroid/os/Handler;
.source "UMWorkDispatchImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/framework/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x300

    if-eq v0, v1, :cond_2

    const/16 p1, 0x302

    if-eq v0, p1, :cond_1

    const/16 p1, 0x310

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->c()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->b()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {p1}, Lcom/umeng/commonsdk/framework/c;->a(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
