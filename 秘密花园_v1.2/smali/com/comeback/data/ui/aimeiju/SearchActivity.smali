.class public Lcom/comeback/data/ui/aimeiju/SearchActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "SearchActivity.java"


# instance fields
.field public etSearch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public rvList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/aimeiju/SearchActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0021

    return v0
.end method

.method public e()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/aimeiju/SearchActivity;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lf/e/a/j/a/c;

    invoke-direct {v1, p0}, Lf/e/a/j/a/c;-><init>(Lcom/comeback/data/ui/aimeiju/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3
    invoke-static {}, Lf/e/a/j/a/f/f;->a()Lf/e/a/j/a/f/e;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "RAsZAQ=="

    .line 5
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlI="

    const-string v4, "UwcQBw=="

    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RQoKEBg="

    const-string v4, "VAsH"

    .line 6
    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bw=="

    .line 7
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v1}, Lf/e/a/j/a/f/e;->h(Ljava/util/Map;)Lm/e;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/comeback/data/ui/aimeiju/SearchActivity$a;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/aimeiju/SearchActivity$a;-><init>(Lcom/comeback/data/ui/aimeiju/SearchActivity;)V

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public synthetic l(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/SearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/comeback/data/ui/aimeiju/SearchResultActivity;->t(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
