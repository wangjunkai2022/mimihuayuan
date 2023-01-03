.class public Lcom/comeback/data/widget/viewpager/PageView$a;
.super Landroid/os/Handler;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/widget/viewpager/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/widget/viewpager/PageView;


# direct methods
.method public constructor <init>(Lcom/comeback/data/widget/viewpager/PageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/widget/viewpager/PageView$a;->a:Lcom/comeback/data/widget/viewpager/PageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/widget/viewpager/PageView$a;->a:Lcom/comeback/data/widget/viewpager/PageView;

    iget-object p1, p1, Lcom/comeback/data/widget/viewpager/PageView;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/widget/viewpager/PageView$a;->a:Lcom/comeback/data/widget/viewpager/PageView;

    iget-object p1, p1, Lcom/comeback/data/widget/viewpager/PageView;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x1770

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    iget-object p1, p0, Lcom/comeback/data/widget/viewpager/PageView$a;->a:Lcom/comeback/data/widget/viewpager/PageView;

    iget-object p1, p1, Lcom/comeback/data/widget/viewpager/PageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
