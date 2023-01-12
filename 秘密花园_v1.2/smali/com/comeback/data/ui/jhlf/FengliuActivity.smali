.class public Lcom/comeback/data/ui/jhlf/FengliuActivity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "FengliuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/jhlf/FengliuActivity$b;
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
            "Lcom/comeback/data/ui/jhlf/FengliuActivity$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/jhlf/FengliuActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field public floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/jhlf/FengliuActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/jhlf/FengliuActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static t(Lcom/comeback/data/ui/jhlf/FengliuActivity;ZLjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0fL/g9/R3LbAj6DJkMXuj4/vi+fWl4GJlM+O"

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0, p2}, Lcom/comeback/data/ui/jhlf/SearchResultActivity;->t(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->h:Ljava/lang/String;

    invoke-static {p0, p2, p1, v0}, Lcom/comeback/data/ui/jhlf/SearchResultActivity;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/comeback/data/ui/jhlf/FengliuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "XgY="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "WQMOAQ=="

    .line 3
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "WQMOAQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->h:Ljava/lang/String;

    const-string v0, "XgY="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->i:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    const v0, 0x7f0c00a9

    return v0
.end method

.method public e()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseRefreshActivity;->e()V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 4
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 5
    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "VAsXHUUHQUc="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 6
    new-instance v1, Lf/i/b/j;

    invoke-direct {v1}, Lf/i/b/j;-><init>()V

    new-instance v2, Lf/e/a/j/w/b;

    invoke-direct {v2, p0}, Lf/e/a/j/w/b;-><init>(Lcom/comeback/data/ui/jhlf/FengliuActivity;)V

    .line 7
    iget-object v2, v2, Lf/i/b/d0/a;->b:Ljava/lang/reflect/Type;

    .line 8
    invoke-virtual {v1, v0}, Lf/i/b/j;->h(Ljava/io/Reader;)Lf/i/b/e0/a;

    move-result-object v0

    .line 9
    invoke-virtual {v1, v0, v2}, Lf/i/b/j;->c(Lf/i/b/e0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-static {v1, v0}, Lf/i/b/j;->a(Ljava/lang/Object;Lf/i/b/e0/a;)V

    .line 11
    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 13
    :goto_0
    iput-object v1, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->d:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->f:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->e:Ljava/util/List;

    .line 16
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->d:Ljava/util/HashMap;

    const-string v1, "D1Q="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 17
    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->tvArea:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "GofmzI7ohA=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->f:Ljava/util/ArrayList;

    new-instance v2, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;

    const-string v3, "0ufLjejb"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vg4P"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;-><init>(Lcom/comeback/data/ui/jhlf/FengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 21
    iget-object v5, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->f:Ljava/util/ArrayList;

    new-instance v6, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;

    invoke-direct {v6, p0, v4, v2}, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;-><init>(Lcom/comeback/data/ui/jhlf/FengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v4, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v4, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    iget-object v6, v1, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;->b:Ljava/lang/String;

    .line 27
    invoke-direct {v4, p0, v5, v6}, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;-><init>(Lcom/comeback/data/ui/jhlf/FengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v4, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->d:Ljava/util/HashMap;

    .line 29
    iget-object v1, v1, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 34
    new-instance v7, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;

    invoke-direct {v7, p0, v6, v5}, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;-><init>(Lcom/comeback/data/ui/jhlf/FengliuActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/jhlf/adapter/MMAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/jhlf/adapter/MMAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    const-class v0, Lf/e/a/j/w/h/c;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sput-object v1, Lf/e/a/j/w/h/c;->c:Lf/e/a/j/w/h/c;
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
    new-instance p1, Lf/e/a/j/w/a;

    invoke-direct {p1, p0}, Lf/e/a/j/w/a;-><init>(Lcom/comeback/data/ui/jhlf/FengliuActivity;)V

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
    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->e:Ljava/util/List;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lf/c/a/i/e;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 9
    invoke-virtual {p1}, Lf/c/a/i/b;->e()V

    :goto_0
    return-void
.end method

.method public p(I)V
    .locals 3

    .line 1
    invoke-static {}, Lf/e/a/j/w/h/c;->a()Lf/e/a/j/w/h/a;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->i:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lf/e/a/j/w/h/a;->b(ILjava/lang/String;Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/comeback/data/ui/jhlf/FengliuActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/jhlf/FengliuActivity$a;-><init>(Lcom/comeback/data/ui/jhlf/FengliuActivity;I)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public u(IIILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;

    .line 2
    iget-object p3, p2, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->g:Ljava/lang/String;

    .line 4
    iget-object p3, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->tvArea:Landroid/widget/TextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->h:Ljava/lang/String;

    const-string v1, "Gg=="

    invoke-static {p4, v0, v1}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comeback/data/ui/jhlf/FengliuActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;->a:Ljava/lang/String;

    .line 6
    invoke-static {p4, p1, v1}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p2, Lcom/comeback/data/ui/jhlf/FengliuActivity$b;->a:Ljava/lang/String;

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
