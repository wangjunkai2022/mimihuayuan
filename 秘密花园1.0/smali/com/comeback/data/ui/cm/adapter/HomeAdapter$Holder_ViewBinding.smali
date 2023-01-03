.class public Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;
.super Ljava/lang/Object;
.source "HomeAdapter$Holder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;

    const-string v0, "UQsGCA9THkcFMl0TFA9E"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f09031c

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THloFKFUKHVtE"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f090105

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName1:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THkcFKFUKHVtE"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902dd

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName1:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THloFKFUKHVhE"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f090106

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName2:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THkcFKFUKHVhE"

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902de

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName2:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THloFKFUKHVlE"

    .line 8
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f090107

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName3:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THkcFKFUKHVlE"

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902df

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName3:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THloFKFUKHV5E"

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/comeback/data/widget/RatioImageView;

    const v2, 0x7f090108

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/widget/RatioImageView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName4:Lcom/comeback/data/widget/RatioImageView;

    const-string v0, "UQsGCA9THkcFKFUKHV5E"

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0902e0

    invoke-static {p2, v2, v0, v1}, Ld/c/c;->c(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName4:Landroid/widget/TextView;

    const-string v0, "UQsGCA9THl8fMF0DHQVSTBcDDQBLHlxHGwlQR18FDShbCwAPTA=="

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090143

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl8fMF0DHQVSTA=="

    .line 13
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo1:Landroid/widget/LinearLayout;

    .line 14
    iput-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    .line 15
    new-instance v1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding$a;-><init>(Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl8fMF0DHQVRTBcDDQBLHlxHGwlQR18FDShbCwAPTA=="

    .line 16
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090144

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl8fMF0DHQVRTA=="

    .line 17
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo2:Landroid/widget/LinearLayout;

    .line 18
    iput-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->d:Landroid/view/View;

    .line 19
    new-instance v1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding$b;-><init>(Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl8fMF0DHQVQTBcDDQBLHlxHGwlQR18FDShbCwAPTA=="

    .line 20
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090145

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl8fMF0DHQVQTA=="

    .line 21
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo3:Landroid/widget/LinearLayout;

    .line 22
    iput-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->e:Landroid/view/View;

    .line 23
    new-instance v1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding$c;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding$c;-><init>(Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "UQsGCA9THl8fMF0DHQVXTBcDDQBLHlxHGwlQR18FDShbCwAPTA=="

    .line 24
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090146

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    const-string v2, "UQsGCA9THl8fMF0DHQVXTA=="

    .line 25
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2, v3}, Ld/c/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo4:Landroid/widget/LinearLayout;

    .line 26
    iput-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->f:Landroid/view/View;

    .line 27
    new-instance v1, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding$d;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding$d;-><init>(Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "WgcXDAQXGRQcCHcLEQkITA=="

    .line 28
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902da

    invoke-static {p2, v1, v0}, Ld/c/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->g:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding$e;-><init>(Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->b:Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;

    .line 3
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName1:Lcom/comeback/data/widget/RatioImageView;

    .line 5
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName1:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName2:Lcom/comeback/data/widget/RatioImageView;

    .line 7
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName2:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName3:Lcom/comeback/data/widget/RatioImageView;

    .line 9
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName3:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->ivName4:Lcom/comeback/data/widget/RatioImageView;

    .line 11
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->tvName4:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo1:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo2:Landroid/widget/LinearLayout;

    .line 14
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo3:Landroid/widget/LinearLayout;

    .line 15
    iput-object v1, v0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder;->llVideo4:Landroid/widget/LinearLayout;

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iput-object v1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->c:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iput-object v1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->d:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iput-object v1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->e:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iput-object v1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->f:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iput-object v1, p0, Lcom/comeback/data/ui/cm/adapter/HomeAdapter$Holder_ViewBinding;->g:Landroid/view/View;

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
