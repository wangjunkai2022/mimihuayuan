.class public Lf/f/e/c;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/f/e/c;->a:Lcom/contrarywind/view/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/f/e/c;->a:Lcom/contrarywind/view/WheelView;

    .line 2
    iget-object v1, v0, Lcom/contrarywind/view/WheelView;->e:Lf/f/c/b;

    .line 3
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    move-result v0

    invoke-interface {v1, v0}, Lf/f/c/b;->a(I)V

    return-void
.end method
