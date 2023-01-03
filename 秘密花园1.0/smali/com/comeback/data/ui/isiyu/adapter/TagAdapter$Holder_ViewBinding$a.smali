.class public Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "TagAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder;->a:Lcom/comeback/data/ui/isiyu/adapter/TagAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/isiyu/adapter/TagAdapter;->d:Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$a;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/isiyu/adapter/TagAdapter$Holder;->b:Lcom/comeback/data/ui/isiyu/bean/SearchTag;

    invoke-virtual {p1}, Lcom/comeback/data/ui/isiyu/bean/SearchTag;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lf/e/a/j/t/d;

    .line 5
    iget-object v1, v0, Lf/e/a/j/t/d;->a:Lcom/comeback/data/ui/isiyu/SearchActivity$b;

    iget-object v1, v1, Lcom/comeback/data/ui/isiyu/SearchActivity$b;->e:Lcom/comeback/data/ui/isiyu/SearchActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/isiyu/SearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, v0, Lf/e/a/j/t/d;->a:Lcom/comeback/data/ui/isiyu/SearchActivity$b;

    iget-object p1, p1, Lcom/comeback/data/ui/isiyu/SearchActivity$b;->e:Lcom/comeback/data/ui/isiyu/SearchActivity;

    .line 7
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 8
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method
