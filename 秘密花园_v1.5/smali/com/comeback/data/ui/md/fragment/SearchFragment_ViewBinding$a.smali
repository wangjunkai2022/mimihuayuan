.class public Lcom/comeback/data/ui/md/fragment/SearchFragment_ViewBinding$a;
.super Ld/c/b;
.source "SearchFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/md/fragment/SearchFragment_ViewBinding;-><init>(Lcom/comeback/data/ui/md/fragment/SearchFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/md/fragment/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/md/fragment/SearchFragment_ViewBinding;Lcom/comeback/data/ui/md/fragment/SearchFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/md/fragment/SearchFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/md/fragment/SearchFragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/md/fragment/SearchFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/md/fragment/SearchFragment;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/md/fragment/SearchFragment;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "0fL/g9/R3LbAj6DJkMXuj4/vi+fWl4GJlM+O"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p1, Lcom/comeback/data/ui/md/fragment/SearchFragment;->i:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    :goto_0
    return-void
.end method
