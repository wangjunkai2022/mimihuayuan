.class public Lcom/comeback/data/ui/xiami/SearchActivity$a;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xiami/SearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/xiami/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xiami/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/SearchActivity$a;->a:Lcom/comeback/data/ui/xiami/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/SearchActivity$a;->a:Lcom/comeback/data/ui/xiami/SearchActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/xiami/SearchActivity;->ivCancel:Landroid/widget/ImageView;

    const/16 p3, 0x8

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/SearchActivity$a;->a:Lcom/comeback/data/ui/xiami/SearchActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/xiami/SearchActivity;->rvRecommend:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/xiami/SearchActivity$a;->a:Lcom/comeback/data/ui/xiami/SearchActivity;

    .line 5
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    .line 6
    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
