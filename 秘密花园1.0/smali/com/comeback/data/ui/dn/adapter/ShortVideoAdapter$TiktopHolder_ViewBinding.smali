.class public Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;
.super Ljava/lang/Object;
.source "ShortVideoAdapter$TiktopHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->b:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    const-string v0, "UQsGCA9THl4gA1EMOgsRTA=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f090227

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mSeekBar:Landroid/widget/SeekBar;

    const-string v0, "UQsGCA9THl46EGQLGRNE"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09010c

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    const-string v0, "UQsGCA9THl46EHwCGQ5ES1YMB0QGFk1bHAIUQA0ZBhl+DAULTA=="

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900fa

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl46EHwCGQ5E"

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mIvHead:Landroid/widget/ImageView;

    .line 7
    iput-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$a;-><init>(Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl46EHgOEw9ES1YMB0QGFk1bHAIUQBQDCA4Q"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090101

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl46EHgOEw9E"

    .line 10
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mIvLike:Landroid/widget/ImageView;

    .line 11
    iput-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->d:Landroid/view/View;

    .line 12
    new-instance v1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$b;-><init>(Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkUaAlEILgMGHBA="

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    const v2, 0x7f090348

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    iput-object v0, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    const-string v0, "UQsGCA9THkcFMl0TFA9ES1YMB0QGFk1bHAIUQA0ZBhl+DAULTA=="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09031c

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFMl0TFA9E"

    .line 15
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->tvTitle:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding$c;-><init>(Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFMl0KHU0="

    .line 18
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09031b

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->tvTime:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THl4nEHgOEw9E"

    .line 19
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902cf

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mTvLike:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->b:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->b:Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mSeekBar:Landroid/widget/SeekBar;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mIvPlay:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mIvHead:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mIvLike:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->videoView:Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->tvTitle:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->tvTime:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder;->mTvLike:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->c:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->d:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/comeback/data/ui/dn/adapter/ShortVideoAdapter$TiktopHolder_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
