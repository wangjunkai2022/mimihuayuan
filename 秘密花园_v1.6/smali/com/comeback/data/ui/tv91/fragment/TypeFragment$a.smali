.class public Lcom/comeback/data/ui/tv91/fragment/TypeFragment$a;
.super Ljava/lang/Object;
.source "TypeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tv91/fragment/TypeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment$a;->a:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

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
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment$a;->a:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

    .line 2
    iget-object p3, p2, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->h:Lcom/comeback/data/ui/tv91/bean/Tags;

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p2, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->ivCancel:Landroid/view/View;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p3, 0x8

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment$a;->a:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

    .line 5
    iget-object p2, p2, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->g:Lcom/comeback/data/ui/tv91/adapter/TagAdapter;

    .line 6
    invoke-virtual {p2}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 7
    iget-object p2, p0, Lcom/comeback/data/ui/tv91/fragment/TypeFragment$a;->a:Lcom/comeback/data/ui/tv91/fragment/TypeFragment;

    .line 8
    iget-object p3, p2, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->g:Lcom/comeback/data/ui/tv91/adapter/TagAdapter;

    .line 9
    iget-object p2, p2, Lcom/comeback/data/ui/tv91/fragment/TypeFragment;->h:Lcom/comeback/data/ui/tv91/bean/Tags;

    .line 10
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/comeback/data/ui/tv91/bean/Tags;->getMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
