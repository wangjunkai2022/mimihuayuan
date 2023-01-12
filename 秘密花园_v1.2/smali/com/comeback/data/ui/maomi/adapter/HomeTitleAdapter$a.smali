.class public Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter$a;
.super Ljava/lang/Object;
.source "HomeTitleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter$a;->a:Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter$a;->a:Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;->c:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;->isComic()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter$a;->a:Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;->a:Landroid/content/Context;

    .line 6
    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;->c:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter$a;->a:Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;

    .line 8
    iget-object v1, v1, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;->c:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;

    .line 9
    invoke-virtual {v1}, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter$a;->a:Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;

    .line 10
    iget-object v2, v2, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;->c:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;

    .line 11
    invoke-virtual {v2}, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;->getDescribe()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter$a;->a:Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;

    .line 12
    iget-object v3, v3, Lcom/comeback/data/ui/maomi/adapter/HomeTitleAdapter;->c:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;

    .line 13
    invoke-virtual {v3}, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/comeback/data/ui/maomi/SpecialDetailActivity;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
