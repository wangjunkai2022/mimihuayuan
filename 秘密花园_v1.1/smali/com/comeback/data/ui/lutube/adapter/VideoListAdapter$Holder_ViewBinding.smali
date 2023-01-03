.class public Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;
.super Ljava/lang/Object;
.source "VideoListAdapter$Holder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;

    const-string v0, "UQsGCA9THloeB1MCOwUVDkVFQwUFFxleFhJcCBxKRBxWFgAMTA=="

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THloeB1MCOwUVDkVF"

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->imageCover:Landroid/widget/ImageView;

    .line 5
    iput-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v1, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding$a;-><init>(Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THloFKl0MHU1DClkGQwkOB1FcF0YTCxEBBkw="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090101

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THloFKl0MHU0="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->ivLike:Landroid/widget/ImageView;

    .line 9
    iput-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding$b;-><init>(Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcWHkAqGQMNP1YFRA=="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090267

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textMainTag:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcWHkAjGR4GTA=="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090264

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textDate:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcWHkA0HQkMBVM2AgNZVA=="

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090269

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textSecondTag2:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcWHkA0HQkMBVM2AgNaVA=="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090268

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textSecondTag1:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcWHkAzER4PDhA="

    .line 15
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09026a

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcWHkAmGx4MGRA="

    .line 16
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f090261

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textActor:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->imageCover:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->ivLike:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textMainTag:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textDate:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textSecondTag2:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textSecondTag1:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textTitle:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder;->textActor:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/comeback/data/ui/lutube/adapter/VideoListAdapter$Holder_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
