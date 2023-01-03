.class public Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$a;
.super Ljava/lang/Object;
.source "TitleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->c:Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;->getClsId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;

    .line 5
    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->a:Landroid/content/Context;

    .line 6
    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->c:Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;->getClsId()I

    move-result p1

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;->v(Landroid/content/Context;II)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;

    .line 9
    iget-object v0, p1, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->a:Landroid/content/Context;

    .line 10
    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/TitleAdapter;->c:Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;

    .line 11
    invoke-virtual {p1}, Lcom/comeback/data/ui/cucumber/bean/SelectionQuery$DataBean;->getNavId()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/comeback/data/ui/cucumber/ColumnDetailActivity;->v(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method
