.class public Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;
.super Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;
.source "TitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$b;
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
.field public a:Landroid/content/Context;

.field public b:Lf/a/a/a/a;

.field public c:Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;Lf/a/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/vlayout/DelegateAdapter$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->c:Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;

    .line 4
    iput-object p3, p0, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->b:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public c()Lf/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->b:Lf/a/a/a/a;

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
    check-cast p1, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$b;

    .line 2
    iget-object p2, p1, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$b;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->c:Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$a;

    invoke-direct {p2, p0}, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$a;-><init>(Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0c0171

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, Lf/b/a/a/a;->b(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$b;

    invoke-direct {p2, p0, p1}, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$b;-><init>(Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;Landroid/view/View;)V

    return-object p2
.end method
