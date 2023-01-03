.class public Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "HotWordAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;->a:Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter;->b:Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/HotWordAdapter$Holder;->b:Lcom/comeback/data/ui/maomi/bean/HotWords$DataBeanX$DataBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/HotWords$DataBeanX$DataBean;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lf/e/a/j/c0/i;

    .line 5
    iget-object v1, v0, Lf/e/a/j/c0/i;->a:Lcom/comeback/data/ui/maomi/SearchActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/maomi/SearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, v0, Lf/e/a/j/c0/i;->a:Lcom/comeback/data/ui/maomi/SearchActivity;

    iget-object v1, p1, Lcom/comeback/data/ui/maomi/SearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, p1, Lcom/comeback/data/ui/maomi/SearchActivity;->f:Ljava/lang/String;

    .line 8
    iget-object p1, v0, Lf/e/a/j/c0/i;->a:Lcom/comeback/data/ui/maomi/SearchActivity;

    .line 9
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 10
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    :cond_0
    return-void
.end method
