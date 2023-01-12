.class public Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;
.super Ljava/lang/Object;
.source "YXPlayActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->b:Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;

    const-string v0, "UQsGCA9THl46EH0KH00="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f090101

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mIvImg:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THl46EGQLGRNES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09010e

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl46EGQLGRNE"

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mIvPlay:Landroid/widget/ImageView;

    .line 6
    iput-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4gA1EMOgsRTA=="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/SeekBar;

    const v2, 0x7f09022a

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mSeekBar:Landroid/widget/SeekBar;

    const-string v0, "UQsGCA9THl4nEHULFE0="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09029a

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mTvAll:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THl4nEHcSChgGBUNF"

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b3

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mTvCurrent:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THl4nEGAODAYGTA=="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090327

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v0, "WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v2, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900fb

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v2, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding$c;-><init>(Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09010f

    invoke-static {p2, v2, v1}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->f:Landroid/view/View;

    .line 20
    new-instance v2, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding$d;

    invoke-direct {v2, p0, p1}, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding$d;-><init>(Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09010b

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->g:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding$e;-><init>(Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->b:Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->b:Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mIvImg:Lcom/comeback/data/widget/RatioImageView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mIvPlay:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mTvAll:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mTvCurrent:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity;->mTvTitle:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->c:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->d:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->e:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->f:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/comeback/data/ui/sex8/ui/YXPlayActivity_ViewBinding;->g:Landroid/view/View;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
