.class public Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;
.super Ljava/lang/Object;
.source "AdAdapter$Holder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;

    const-string v0, "UQsGCA9THloFJVsRHRhE"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f0900f5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THkcFKFUKHU0="

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e5

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->tvName:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THkcFIlsQFltES1YMB0QGFk1bHAIUQBcEIAdeAQhD"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902ba

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFIlsQFltE"

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v1, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding$a;-><init>(Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THkcFIlsQFlhES1YMB0QGFk1bHAIUQBcEIAdeAQhD"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902bb

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THkcFIlsQFlhE"

    .line 10
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->tvDown2:Landroid/widget/TextView;

    .line 11
    iput-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->d:Landroid/view/View;

    .line 12
    new-instance v1, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding$b;-><init>(Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "WgcXDAQXGRQcCHcLEQkITA=="

    .line 13
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901ed

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->e:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding$c;-><init>(Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->ivCover:Lcom/comeback/data/widget/RatioImageView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->tvName:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder;->tvDown2:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->d:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/comeback/data/ui/jhlf/adapter/AdAdapter$Holder_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
