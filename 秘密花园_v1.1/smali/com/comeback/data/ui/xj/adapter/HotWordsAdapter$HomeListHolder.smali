.class public Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "HotWordsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeListHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter;

.field public b:Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;

    .line 2
    iput-object p1, p0, Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;->getDspwd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
