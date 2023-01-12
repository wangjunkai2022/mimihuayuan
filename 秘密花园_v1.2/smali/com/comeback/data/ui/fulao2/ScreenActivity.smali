.class public Lcom/comeback/data/ui/fulao2/ScreenActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "ScreenActivity.java"


# instance fields
.field public d:I

.field public e:Ljava/lang/String;

.field public f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

.field public tab1:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tab2:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/fulao2/ScreenActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/fulao2/ScreenActivity$a;-><init>(Lcom/comeback/data/ui/fulao2/ScreenActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/fulao2/ScreenActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/fulao2/ScreenActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic t(Lcom/comeback/data/ui/fulao2/ScreenActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/fulao2/ScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "QxsTAQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "XgwHARM="

    .line 3
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "XgwHARM="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->d:I

    const-string v0, "QxsTAQ=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0050

    return v0
.end method

.method public e()V
    .locals 4

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab1:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 3
    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab1:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0f7jgv3D3Yv5gb3g"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/comeback/data/ui/fulao2/ScreenActivity;->u(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab1:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0f7jgc/p3rHKgKbK"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/fulao2/ScreenActivity;->u(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "0evjgvf63o7agKnI"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/comeback/data/ui/fulao2/ScreenActivity;->u(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "dhwg"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/fulao2/ScreenActivity;->u(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 8
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "cxwl"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/fulao2/ScreenActivity;->u(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "cBwq"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/fulao2/ScreenActivity;->u(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    const-string v1, "fYbYwY/Lsw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/comeback/data/ui/fulao2/ScreenActivity;->u(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab1:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->f:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 13
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->e:Ljava/lang/String;

    const-string v1, "QgwACx0WSw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "0f7jgv3D"

    if-eqz v0, :cond_3

    .line 15
    iget v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->d:I

    if-nez v0, :cond_0

    .line 16
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    const-string v0, "0tLsjMz10JHi"

    .line 17
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    const-string v0, "0u3TgtLN"

    .line 18
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    if-ne v0, v2, :cond_7

    const-string v0, "0c7Eg9X9"

    .line 19
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 20
    :cond_3
    iget v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->d:I

    if-nez v0, :cond_4

    .line 21
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/16 v2, 0xc

    if-ne v0, v2, :cond_5

    const-string v0, "09rOgcbk"

    .line 22
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    const-string v0, "0NDdjev6"

    .line 23
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    const/16 v2, 0xe

    if-ne v0, v2, :cond_7

    const-string v0, "09rYjcnr"

    .line 24
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/fulao2/adapter/VideoListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public m()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public p(I)V
    .locals 8

    .line 1
    invoke-static {}, Lf/e/a/j/l/h/f;->b()Lf/e/a/j/l/h/b;

    move-result-object v0

    iget v1, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->d:I

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab1:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v3

    .line 4
    iget-object v4, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v4

    const-string v5, "QxsTAQ=="

    .line 5
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/comeback/data/ui/fulao2/ScreenActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "QQsHAQQsTUoDAw=="

    .line 6
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Ww0NAw=="

    const-string v7, "WBAHARk="

    invoke-static {v6, v2, v5, v7}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_0

    const-string v3, "QwsOAQ=="

    goto :goto_0

    :cond_0
    const-string v3, "QQsGExg="

    :goto_0
    const-string v6, "VBcTOxkSV1QW"

    .line 7
    invoke-static {v3, v2, v5, v6}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "RwMEAQ=="

    .line 8
    invoke-static {v4, v2, v3, v5}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "QwsOARgHWF4D"

    .line 9
    invoke-static {p1, v2, v3, v4}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v0, v1, v2}, Lf/e/a/j/l/h/b;->h(ILjava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/comeback/data/ui/fulao2/ScreenActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/fulao2/ScreenActivity$b;-><init>(Lcom/comeback/data/ui/fulao2/ScreenActivity;I)V

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public final u(Lcom/google/android/material/tabs/TabLayout;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method
