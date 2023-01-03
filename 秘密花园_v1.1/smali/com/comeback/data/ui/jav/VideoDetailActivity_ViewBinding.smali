.class public Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "VideoDetailActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/jav/VideoDetailActivity;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jav/VideoDetailActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/jav/VideoDetailActivity;

    const-string v0, "UQsGCA9THkcFMl0TFA9ES1YMB0QGFk1bHAIUQBcEIAdeAQhD"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09031c

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFMl0TFA9E"

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvTitle:Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding$a;-><init>(Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;Lcom/comeback/data/ui/jav/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THloFJVsRHRhE"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f0900f3

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THkcFNlgGAU1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902ee

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFNlgGAU0="

    .line 9
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvPlay:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v1, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding$b;-><init>(Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;Lcom/comeback/data/ui/jav/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFM10DXw=="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09032b

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvUid:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFIlUTHU0="

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ad

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvDate:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFIkEVGR4KBFlF"

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902b6

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvDuration:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNVwICE0="

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090307

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvShop:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNkEFFAMQA1IQRA=="

    .line 16
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902f5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvPublisher:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFNVcICg9E"

    .line 17
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902ff

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvScore:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFJ1cTFxhE"

    .line 18
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090290

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvActor:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFMlUAXw=="

    .line 19
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090316

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvTag:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkEFNkYCDgMGHBA="

    .line 20
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090207

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvPreview:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THkEfNkYCDgMGHBA="

    .line 21
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0901e8

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rlPreview:Landroid/widget/RelativeLayout;

    const-string v0, "UQsGCA9THkcFK1sVHSMODBBCAgoPU1RWBw5bA1hNDAV0DgoHAFQ="

    .line 22
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902db

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFK1sVHSMODBA="

    .line 23
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvMoreImg:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->e:Landroid/view/View;

    .line 25
    new-instance v1, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding$c;-><init>(Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;Lcom/comeback/data/ui/jav/VideoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkEFNVUKHU0="

    .line 26
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f090209

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvSame:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THl8fNVUKHU0="

    .line 27
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09013d

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llSame:Landroid/widget/LinearLayout;

    const-string v0, "UQsGCA9THkEFIUECCxlE"

    .line 28
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901f8

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvGuess:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THl8fIUECCxlE"

    .line 29
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09012b

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llGuess:Landroid/widget/LinearLayout;

    const-string v0, "UQsGCA9THkEFIlsQFgYMClNF"

    .line 30
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0901f7

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvDownload:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "UQsGCA9THl8fIlsQFgYMClNF"

    .line 31
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090128

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llDownload:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/jav/VideoDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->b:Lcom/comeback/data/ui/jav/VideoDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvPlay:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvUid:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvDate:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvDuration:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvShop:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvPublisher:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvScore:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvActor:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvTag:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvPreview:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rlPreview:Landroid/widget/RelativeLayout;

    .line 16
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->tvMoreImg:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvSame:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llSame:Landroid/widget/LinearLayout;

    .line 19
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvGuess:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llGuess:Landroid/widget/LinearLayout;

    .line 21
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->rvDownload:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    iput-object v1, v0, Lcom/comeback/data/ui/jav/VideoDetailActivity;->llDownload:Landroid/widget/LinearLayout;

    .line 23
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->c:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->d:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iput-object v1, p0, Lcom/comeback/data/ui/jav/VideoDetailActivity_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
