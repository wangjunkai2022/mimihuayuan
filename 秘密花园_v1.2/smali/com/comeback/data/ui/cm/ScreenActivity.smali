.class public Lcom/comeback/data/ui/cm/ScreenActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "ScreenActivity.java"


# instance fields
.field public d:I

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public h:[I

.field public i:[Ljava/lang/String;

.field public tab1:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tab2:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->d:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->e:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    aput-object v1, v3, v0

    const-string v1, "WQcU"

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, "Xw0X"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v3, v5

    const-string v1, "WwsIAQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v3, v6

    iput-object v3, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->f:[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "0ufLjejb"

    .line 5
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    const-string v7, "0f7jgv3D"

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    const-string v7, "0f7jg+je"

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    const-string v7, "0f7jgc/p3KXvgJjF"

    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    iput-object v1, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->g:[Ljava/lang/String;

    const/16 v1, 0x22

    new-array v7, v1, [I

    .line 6
    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->h:[I

    new-array v1, v1, [Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "0v7og//R0bTZgL/q"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "0szVgdHe3Ynxg7TM"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "3sn7gtP23rfSgZbb"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "0urVgvf+0ZnrgLf2"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "3vnYjND53qrSgIjF"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "BCaG7sOUrYg="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-string v0, "0NTDgdPO3YnJg5Lc"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const-string v0, "0Nf2jOLB3Y7Ago7d"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    const-string v0, "djSFyfuUh70="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const-string v0, "0NTRg9/23JjagJzG"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const-string v0, "0u3AgNHX0bTZgLHX"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    const-string v0, "djSE0MuXg4k="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v1, v2

    const-string v0, "f4fo8Y3Pkg=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    const-string v0, "3vfUjO7M3obBjpHN"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const-string v0, "09rqg9/p0KjIg4nW"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    aput-object v0, v1, v2

    const-string v0, "QwMKFA4aCANDVw=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v1, v2

    const-string v0, "3+/qjOXg373bjqLB"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v1, v2

    const-string v0, "0PvCgc7A34TYg5zk"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, v1, v2

    const-string v0, "0NDdgtnK34LkgIXm"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v1, v2

    const-string v0, "0sfQgfv/37PUgbzW"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    aput-object v0, v1, v2

    const-string v0, "0uXvjNXC3Y3Ggb7I"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    const-string v0, "0frtgvPs34TYg5DF"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    const-string v0, "0eLEjPLj0ZnMgKH+"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    const-string v0, "38XxjOLB37rdgIjz"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    const-string v0, "3s/3jeTS3oDIg7zw"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    const-string v0, "djSG7uyVurY="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const-string v0, "3uXujdLK3LzQg6XU"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    const-string v0, "0NztgNLA3ITbgo3U"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    const-string v0, "BVdaKD4rbA=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    const-string v0, "YzGH3tGWn6U="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    const-string v0, "0ePzguvl37D2jr3V"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const-string v0, "3ufxgdHk3LLEgL/q"

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, v1, v2

    const-string v0, "0vnegNHUeGU="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->i:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1c
        0x39
        0x1e
        0x21
        0x3b
        0x41
        0x3a
        0x2c
        0x24
        0x25
        0x3f
        0x27
        0x20
        0x2b
        0x2e
        0x45
        0x34
        0x3d
        0x3e
        0x35
        0x3c
        0x38
        0x40
        0x1b
        0x36
        0x31
        0x30
        0x26
        0x32
        0x42
        0x33
        0x43
        0x44
    .end array-data
.end method

.method public static synthetic r(Lcom/comeback/data/ui/cm/ScreenActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/cm/ScreenActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static t(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/cm/ScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UwMXBQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "UwMXBQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->d:I

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c0034

    return v0
.end method

.method public e()V
    .locals 4

    const-string v0, "FFNVVVNBCg=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->h(I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->w([I)Lf/j/a/a/f/i;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->tab1:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->g:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 7
    iget-object v3, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->tab1:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    if-nez v1, :cond_0

    .line 8
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->tab1:Lcom/google/android/material/tabs/TabLayout;

    new-instance v2, Lf/e/a/j/e/c;

    invoke-direct {v2, p0}, Lf/e/a/j/e/c;-><init>(Lcom/comeback/data/ui/cm/ScreenActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->h:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->i:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->h:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 13
    iget-object v2, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 14
    iget v2, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->d:I

    iget-object v3, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->h:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_2

    .line 15
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->tab2:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lf/e/a/j/e/d;

    invoke-direct {v1, p0}, Lf/e/a/j/e/d;-><init>(Lcom/comeback/data/ui/cm/ScreenActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 17
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060023
        0x7f060021
    .end array-data
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cm/adapter/ScreenAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/cm/adapter/ScreenAdapter;-><init>(Landroid/content/Context;)V

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

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900ee

    if-eq p1, v0, :cond_1

    const v0, 0x7f090112

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/comeback/data/ui/cm/SearchActivity;->m(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public p(I)V
    .locals 3

    .line 1
    invoke-static {}, Lf/e/a/j/e/f/b;->a()Lf/e/a/j/e/f/a;

    move-result-object v0

    iget v1, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->d:I

    iget-object v2, p0, Lcom/comeback/data/ui/cm/ScreenActivity;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lf/e/a/j/e/f/a;->i(ILjava/lang/String;I)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/cm/ScreenActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/cm/ScreenActivity$a;-><init>(Lcom/comeback/data/ui/cm/ScreenActivity;I)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method
