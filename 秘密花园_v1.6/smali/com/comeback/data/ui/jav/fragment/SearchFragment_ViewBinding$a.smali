.class public Lcom/comeback/data/ui/jav/fragment/SearchFragment_ViewBinding$a;
.super Ld/c/b;
.source "SearchFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/jav/fragment/SearchFragment_ViewBinding;-><init>(Lcom/comeback/data/ui/jav/fragment/SearchFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/jav/fragment/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jav/fragment/SearchFragment_ViewBinding;Lcom/comeback/data/ui/jav/fragment/SearchFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/jav/fragment/SearchFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/jav/fragment/SearchFragment;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/SearchFragment_ViewBinding$a;->c:Lcom/comeback/data/ui/jav/fragment/SearchFragment;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/jav/fragment/SearchFragment;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "3vX/jebG3J7kgozqkOnej4/YhM3R"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const-string p1, "3vX/jebG3J7kgLPukO3QjofzUYHr+Nye5IGYwQ=="

    .line 6
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/comeback/data/ui/jav/SearchResultActivity;->n(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
