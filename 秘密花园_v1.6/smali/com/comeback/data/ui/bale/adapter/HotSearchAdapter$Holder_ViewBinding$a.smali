.class public Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "HotSearchAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder;->a:Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter;->d:Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$a;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/bale/adapter/HotSearchAdapter$Holder;->b:Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean$HotBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/HotSearch$ResultBean$HotBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lf/e/a/j/d/c;

    .line 5
    iget-object v0, v0, Lf/e/a/j/d/c;->a:Lcom/comeback/data/ui/bale/SearchActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/bale/SearchResultActivity;->t(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
