.class public final Lf/f/d/b;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# instance fields
.field public final a:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    iput-object p1, p0, Lf/f/d/b;->a:Lcom/contrarywind/view/WheelView;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lf/f/d/b;->a:Lcom/contrarywind/view/WheelView;

    .line 3
    iget-object v0, p1, Lcom/contrarywind/view/WheelView;->e:Lf/f/c/b;

    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Lf/f/e/c;

    invoke-direct {v0, p1}, Lf/f/e/c;-><init>(Lcom/contrarywind/view/WheelView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lf/f/d/b;->a:Lcom/contrarywind/view/WheelView;

    sget-object v0, Lcom/contrarywind/view/WheelView$a;->b:Lcom/contrarywind/view/WheelView$a;

    invoke-virtual {p1, v0}, Lcom/contrarywind/view/WheelView;->g(Lcom/contrarywind/view/WheelView$a;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lf/f/d/b;->a:Lcom/contrarywind/view/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method
