.class public Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity$a;
.super Lm/j;
.source "LouFengDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/sex8/bean/LouFengDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity$a;->e:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/comeback/data/ui/sex8/bean/LouFengDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity$a;->e:Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail;->getData()Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;

    move-result-object p1

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvArea:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getLocal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getUp_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getServer_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "09jZ"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvPrice:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvQq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getQq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvWechat:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getWechat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvPhone:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getVerif_live()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v1, Lcom/comeback/data/base/PicAdapter;

    invoke-direct {v1, v0}, Lcom/comeback/data/base/PicAdapter;-><init>(Landroid/content/Context;)V

    .line 12
    iget-object v2, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object v2, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    invoke-virtual {p1}, Lcom/comeback/data/ui/sex8/bean/LouFengDetail$DataBean;->getPicList()Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 16
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    const-string v2, "09rJgNHJ3YzSgLXI"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 18
    iget-object v2, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 19
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0OfEg+L0EQ=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Hg=="

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    .line 20
    iget-object v1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 21
    iget-object p1, v0, Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lf/e/a/j/k0/b/b;

    invoke-direct {v1, v0}, Lf/e/a/j/k0/b/b;-><init>(Lcom/comeback/data/ui/sex8/ui/LouFengDetailActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method
