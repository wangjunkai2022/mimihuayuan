.class public Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "VSpecialHeadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lf/a/a/a/a;

.field public b:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/a/a/a/a;Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;->a:Lf/a/a/a/a;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;->b:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    return-void
.end method

.method public static synthetic d(Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;->b:Landroid/widget/ImageView;

    const p1, 0x7f0e0053

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;->a:Lf/a/a/a/a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;->b:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    invoke-virtual {p2}, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;->getCoverpic()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;->a:Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lc/a/a/b/g/h;->B0(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 3
    iget-object p2, p1, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;->b:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;->getSpname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p1, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;->b:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;->getIntro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p1, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;->b:Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/xj/bean/Channel$DataBean$RowsBean;->getUpnum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p2, p1, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;->b:Landroid/widget/ImageView;

    new-instance v0, Lf/e/a/j/s0/e/m;

    invoke-direct {v0, p1}, Lf/e/a/j/s0/e/m;-><init>(Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c0219

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter$a;-><init>(Lcom/comeback/data/ui/xj/adapter/VSpecialHeadAdapter;Landroid/view/View;)V

    return-object p2
.end method
