.class public Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "VoiceActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/maomi/VoiceActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/VoiceActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->b:Lcom/comeback/data/ui/maomi/VoiceActivity;

    const-string v0, "UQsGCA9THl4nEGAeCA9STBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090331

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl4nEGAeCA9STA=="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType1:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;Lcom/comeback/data/ui/maomi/VoiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4nEGAeCA9RTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090332

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl4nEGAeCA9RTA=="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType2:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;Lcom/comeback/data/ui/maomi/VoiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4nEGAeCA9QTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090333

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl4nEGAeCA9QTA=="

    .line 12
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType3:Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->e:Landroid/view/View;

    .line 14
    new-instance v1, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding$c;-><init>(Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;Lcom/comeback/data/ui/maomi/VoiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4nEGAeCA9XTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090334

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl4nEGAeCA9XTA=="

    .line 16
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType4:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->f:Landroid/view/View;

    .line 18
    new-instance v1, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding$d;-><init>(Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;Lcom/comeback/data/ui/maomi/VoiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4nEGAeCA9WTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="

    .line 19
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090335

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl4nEGAeCA9WTA=="

    .line 20
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType5:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->g:Landroid/view/View;

    .line 22
    new-instance v1, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding$e;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding$e;-><init>(Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;Lcom/comeback/data/ui/maomi/VoiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl4lD1EQCAsEDkVF"

    .line 23
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/CustomViewPager;

    const v2, 0x7f090358

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/CustomViewPager;

    iput-object v0, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060034

    .line 25
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->colorPrimary:I

    const v0, 0x7f060020

    .line 26
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p1, Lcom/comeback/data/ui/maomi/VoiceActivity;->colorSecond:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->b:Lcom/comeback/data/ui/maomi/VoiceActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->b:Lcom/comeback/data/ui/maomi/VoiceActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType1:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType2:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType3:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType4:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mTvType5:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/maomi/VoiceActivity;->mViewpager:Lcom/comeback/data/widget/CustomViewPager;

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->c:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->d:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->e:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->f:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/comeback/data/ui/maomi/VoiceActivity_ViewBinding;->g:Landroid/view/View;

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
