.class public Lcom/comeback/data/ui/fengliu/MyFengliuActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "MyFengliuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;
    }
.end annotation


# instance fields
.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public tvArea:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    const-string v0, "Vg4P"

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static u(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c00a9

    return v0
.end method

.method public e()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    sget-object v2, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 5
    invoke-virtual {v2}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "VAsXHUUHQUc="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    new-instance v2, Lf/i/b/j;

    invoke-direct {v2}, Lf/i/b/j;-><init>()V

    new-instance v3, Lf/e/a/j/j/l;

    invoke-direct {v3, p0}, Lf/e/a/j/j/l;-><init>(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;)V

    .line 7
    iget-object v3, v3, Lf/i/b/d0/a;->b:Ljava/lang/reflect/Type;

    .line 8
    invoke-virtual {v2, v1}, Lf/i/b/j;->h(Ljava/io/Reader;)Lf/i/b/e0/a;

    move-result-object v1

    .line 9
    invoke-virtual {v2, v1, v3}, Lf/i/b/j;->c(Lf/i/b/e0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    invoke-static {v2, v1}, Lf/i/b/j;->a(Ljava/lang/Object;Lf/i/b/e0/a;)V

    .line 11
    check-cast v2, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v0

    .line 13
    :goto_0
    iput-object v2, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->d:Ljava/util/HashMap;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->f:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->e:Ljava/util/List;

    .line 16
    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->d:Ljava/util/HashMap;

    const-string v2, "D1Q="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 17
    iget-object v2, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->f:Ljava/util/ArrayList;

    new-instance v3, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;

    const-string v4, "0ufLjejb"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Vg4P"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v5, v6}, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;-><init>(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 20
    iget-object v6, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->f:Ljava/util/ArrayList;

    new-instance v7, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;

    invoke-direct {v7, p0, v5, v3}, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;-><init>(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v5, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->e:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v5, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    iget-object v7, v2, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;->b:Ljava/lang/String;

    .line 26
    invoke-direct {v5, p0, v6, v7}, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;-><init>(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v5, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->d:Ljava/util/HashMap;

    .line 28
    iget-object v2, v2, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 32
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 33
    new-instance v8, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;

    invoke-direct {v8, p0, v7, v6}, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;-><init>(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 34
    :cond_3
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    const-string v2, "Ww0WAg4dXmwHD0QU"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    iget-object v1, v1, Lf/e/a/k/j;->a:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    .line 36
    :cond_4
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v1

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lf/e/a/k/j;->f(Ljava/lang/String;Z)V

    const v1, 0x7f0c00e7

    .line 37
    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f090327

    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902e2

    .line 40
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0902ab

    .line 41
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0902a1

    .line 42
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090355

    .line 43
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v6, "0P3Gjerg3Yn1"

    .line 44
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v6, Lf/e/a/j/j/k;

    invoke-direct {v6, p0, v1}, Lf/e/a/j/j/k;-><init>(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    .line 46
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "0drKjc3b37zjgZDd"

    .line 48
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0f7Pjcni0LLggKHXnufNjoDQhf7plrivlf2Age7ajNe7hPTDjeaJ1f7I0cPfj8fx3uHejOjO3qfb"

    .line 49
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :goto_4
    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/fengliu/FengliuAdapter2;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/fengliu/FengliuAdapter2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    const-class v0, Lf/e/a/j/j/m/e;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sput-object v1, Lf/e/a/j/j/m/e;->b:Lf/e/a/j/j/m/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090125

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lf/e/a/j/j/f;

    invoke-direct {p1, p0}, Lf/e/a/j/j/f;-><init>(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;)V

    .line 3
    new-instance v0, Lf/c/a/g/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lf/c/a/g/a;-><init>(I)V

    .line 4
    iput-object p0, v0, Lf/c/a/g/a;->t:Landroid/content/Context;

    .line 5
    iput-object p1, v0, Lf/c/a/g/a;->a:Lf/c/a/h/d;

    .line 6
    new-instance p1, Lf/c/a/i/e;

    invoke-direct {p1, v0}, Lf/c/a/i/e;-><init>(Lf/c/a/g/a;)V

    .line 7
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->e:Ljava/util/List;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lf/c/a/i/e;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 9
    invoke-virtual {p1}, Lf/c/a/i/b;->e()V

    :goto_0
    return-void
.end method

.method public p(I)V
    .locals 2

    .line 1
    invoke-static {}, Lf/e/a/j/j/m/e;->a()Lf/e/a/j/j/m/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->g:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lf/e/a/j/j/m/a;->d(Ljava/lang/String;I)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$a;-><init>(Lcom/comeback/data/ui/fengliu/MyFengliuActivity;I)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public t(IIILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;

    .line 2
    iget-object p3, p2, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->g:Ljava/lang/String;

    .line 4
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->tvArea:Landroid/widget/TextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/MyFengliuActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;->a:Ljava/lang/String;

    const-string v0, "Gg=="

    .line 6
    invoke-static {p4, p1, v0}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p2, Lcom/comeback/data/ui/fengliu/MyFengliuActivity$b;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method
