.class public Lcom/comeback/data/ui/nana/viewpager/PageView$b;
.super Ljava/lang/Object;
.source "PageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/nana/viewpager/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/nana/viewpager/PageView;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/nana/viewpager/PageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/nana/viewpager/PageView$b;->a:Lcom/comeback/data/ui/nana/viewpager/PageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/PageView$b;->a:Lcom/comeback/data/ui/nana/viewpager/PageView;

    .line 2
    iget-boolean v1, v0, Lcom/comeback/data/ui/nana/viewpager/PageView;->d:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/nana/viewpager/PageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/PageView$b;->a:Lcom/comeback/data/ui/nana/viewpager/PageView;

    iget-object v1, v0, Lcom/comeback/data/ui/nana/viewpager/PageView;->b:Landroid/os/Handler;

    .line 5
    iget-object v0, v0, Lcom/comeback/data/ui/nana/viewpager/PageView;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    .line 6
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
