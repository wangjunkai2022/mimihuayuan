.class public Lcom/comeback/data/ui/nana/viewpager/PageView;
.super Landroid/widget/FrameLayout;
.source "PageView.java"


# instance fields
.field public a:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;

.field public b:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Runnable;

.field public d:Z

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lcom/comeback/data/ui/nana/viewpager/PageView$a;

    invoke-direct {p1, p0}, Lcom/comeback/data/ui/nana/viewpager/PageView$a;-><init>(Lcom/comeback/data/ui/nana/viewpager/PageView;)V

    iput-object p1, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->b:Landroid/os/Handler;

    .line 3
    new-instance p1, Lcom/comeback/data/ui/nana/viewpager/PageView$b;

    invoke-direct {p1, p0}, Lcom/comeback/data/ui/nana/viewpager/PageView$b;-><init>(Lcom/comeback/data/ui/nana/viewpager/PageView;)V

    iput-object p1, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->c:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0242

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->b(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 6
    new-instance p1, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->a:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;

    .line 7
    iget-object p1, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lf/e/a/j/g0/n/b;

    invoke-direct {p2}, Lf/e/a/j/g0/n/b;-><init>()V

    invoke-virtual {p1, v0, p2}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p2, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->a:Lcom/comeback/data/ui/nana/viewpager/AdPagerAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 10
    :try_start_0
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    const-string p2, "WjEAFgQfVVYB"

    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 12
    new-instance p2, Lf/e/a/j/g0/n/c;

    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {p2, v0, v1}, Lf/e/a/j/g0/n/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->d:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->d:Z

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/nana/viewpager/PageView;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDisplayHint(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDisplayHint(I)V

    .line 2
    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method
