.class public Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder_ViewBinding$a;
.super Ld/c/b;
.source "HotWordsAdapter$HomeListHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter;->d:Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$a;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/xj/adapter/HotWordsAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xj/bean/SearchResult$DataBean$HotwordsBean;->getSchwd()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/comeback/data/ui/xj/adapter/VSearchHeadAdapter$a;->a(Ljava/lang/String;)V

    return-void
.end method
