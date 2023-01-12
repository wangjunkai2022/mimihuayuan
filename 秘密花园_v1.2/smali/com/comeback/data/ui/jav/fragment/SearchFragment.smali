.class public Lcom/comeback/data/ui/jav/fragment/SearchFragment;
.super Lcom/comeback/data/base/BaseFragment;
.source "SearchFragment.java"


# instance fields
.field public etSearch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0c0121

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/jav/fragment/SearchFragment;->etSearch:Landroid/widget/EditText;

    new-instance v1, Lf/e/a/j/v/d/a;

    invoke-direct {v1, p0}, Lf/e/a/j/v/d/a;-><init>(Lcom/comeback/data/ui/jav/fragment/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public synthetic h(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    .line 1
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/SearchFragment;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "3vX/jebG3J7kgozqkOnej4/YhM3R"

    .line 3
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    const-string p2, "3vX/jebG3J7kgLPukO3QjofzUYHr+Nye5IGYwQ=="

    .line 5
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/comeback/data/ui/jav/SearchResultActivity;->n(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_2
    return p1
.end method
