.class public Lcom/comeback/data/ui/fengliu/Fengliu2Activity;
.super Lcom/comeback/data/base/BaseRefreshActivity;
.source "Fengliu2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;
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

.field public e:[Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public llService:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvArea:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvOrder:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvService:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRefreshActivity;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "RxcBCAIAUQ=="

    .line 2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "QAcGDw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "Wg0NEAM="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "WwMQEAYcV0cb"

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->e:[Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->f:Ljava/lang/String;

    const-string v0, "Vg4P"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->i:Ljava/lang/String;

    return-void
.end method

.method public static synthetic r(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method

.method public static synthetic s(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;)Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c004a

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
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->tvService:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->llService:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    sget-object v0, Lf/e/a/k/b;->m0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "0e3zg8/J"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "0MLXjMzQ3JfCjoDCl9bvg5jVhMniloe2lf2Age7a"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "0sfeg/H3"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf/e/a/j/j/g;

    invoke-direct {v2, p0}, Lf/e/a/j/j/g;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 9
    sget-object v1, Lcom/comeback/data/App;->b:Lcom/comeback/data/App;

    .line 10
    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "VAsXHUUHQUc="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 11
    new-instance v1, Lf/i/b/j;

    invoke-direct {v1}, Lf/i/b/j;-><init>()V

    new-instance v2, Lf/e/a/j/j/h;

    invoke-direct {v2, p0}, Lf/e/a/j/j/h;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;)V

    .line 12
    iget-object v2, v2, Lf/i/b/d0/a;->b:Ljava/lang/reflect/Type;

    .line 13
    invoke-virtual {v1, v0}, Lf/i/b/j;->h(Ljava/io/Reader;)Lf/i/b/e0/a;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v0, v2}, Lf/i/b/j;->c(Lf/i/b/e0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    invoke-static {v1, v0}, Lf/i/b/j;->a(Ljava/lang/Object;Lf/i/b/e0/a;)V

    .line 16
    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 18
    :goto_0
    iput-object v1, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->d:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->h:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->g:Ljava/util/List;

    .line 21
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->d:Ljava/util/HashMap;

    const-string v1, "D1Q="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 22
    iget-object v1, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->h:Ljava/util/ArrayList;

    new-instance v2, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;

    const-string v3, "0ufLjejb"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vg4P"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 25
    iget-object v5, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->h:Ljava/util/ArrayList;

    new-instance v6, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;

    invoke-direct {v6, p0, v4, v2}, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v4, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->g:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v4, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    iget-object v6, v1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;->b:Ljava/lang/String;

    .line 31
    invoke-direct {v4, p0, v5, v6}, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v4, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->d:Ljava/util/HashMap;

    .line 33
    iget-object v1, v1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 36
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 38
    new-instance v7, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;

    invoke-direct {v7, p0, v6, v5}, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/fengliu/FengliuAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/fengliu/FengliuAdapter;-><init>(Landroid/content/Context;)V

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
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090123

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f090134

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0f7jgv3D3Lzig4zk"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "09rjgfrb3rDej6PP"

    .line 4
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "0f7Pgvf73rDej6PP"

    .line 5
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "09rpgvf73rDej6PP"

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lf/e/a/j/j/a;

    invoke-direct {v0, p0, p1}, Lf/e/a/j/j/a;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;Ljava/util/ArrayList;)V

    .line 8
    new-instance v3, Lf/c/a/g/a;

    invoke-direct {v3, v2}, Lf/c/a/g/a;-><init>(I)V

    .line 9
    iput-object p0, v3, Lf/c/a/g/a;->t:Landroid/content/Context;

    .line 10
    iput-object v0, v3, Lf/c/a/g/a;->a:Lf/c/a/h/d;

    .line 11
    new-instance v0, Lf/c/a/i/e;

    invoke-direct {v0, v3}, Lf/c/a/i/e;-><init>(Lf/c/a/g/a;)V

    .line 12
    invoke-virtual {v0, p1, v1, v1}, Lf/c/a/i/e;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 13
    invoke-virtual {v0}, Lf/c/a/i/b;->e()V

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lf/e/a/j/j/b;

    invoke-direct {p1, p0}, Lf/e/a/j/j/b;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;)V

    .line 15
    new-instance v0, Lf/c/a/g/a;

    invoke-direct {v0, v2}, Lf/c/a/g/a;-><init>(I)V

    .line 16
    iput-object p0, v0, Lf/c/a/g/a;->t:Landroid/content/Context;

    .line 17
    iput-object p1, v0, Lf/c/a/g/a;->a:Lf/c/a/h/d;

    .line 18
    new-instance p1, Lf/c/a/i/e;

    invoke-direct {p1, v0}, Lf/c/a/i/e;-><init>(Lf/c/a/g/a;)V

    .line 19
    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->g:Ljava/util/List;

    .line 20
    invoke-virtual {p1, v0, v2, v1}, Lf/c/a/i/e;->f(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 21
    invoke-virtual {p1}, Lf/c/a/i/b;->e()V

    :goto_0
    return-void
.end method

.method public p(I)V
    .locals 5

    .line 1
    invoke-static {}, Lf/e/a/j/j/m/e;->a()Lf/e/a/j/j/m/a;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "QxsTAQ=="

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Vg4P"

    const-string v4, "RwMEAQ=="

    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RwcRNAoUXA=="

    .line 4
    invoke-static {p1, v1, v2, v3}, Lf/b/a/a/a;->G(ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BVY="

    const-string v4, "VAsXHSgcXVY="

    .line 5
    invoke-static {v3, v1, v2, v4}, Lf/b/a/a/a;->i(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RA0REA=="

    .line 7
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v1}, Lf/e/a/j/j/m/a;->b(Ljava/util/HashMap;)Lm/e;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$a;

    invoke-direct {v1, p0, p1}, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$a;-><init>(Lcom/comeback/data/ui/fengliu/Fengliu2Activity;I)V

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    return-void
.end method

.method public t(IIILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->g:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;

    .line 2
    iget-object p3, p2, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->i:Ljava/lang/String;

    .line 4
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->tvArea:Landroid/widget/TextView;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;->a:Ljava/lang/String;

    const-string v0, "Gg=="

    .line 6
    invoke-static {p4, p1, v0}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p2, Lcom/comeback/data/ui/fengliu/Fengliu2Activity$b;->a:Ljava/lang/String;

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

.method public synthetic u(Ljava/util/ArrayList;IIILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->e:[Ljava/lang/String;

    aget-object p3, p3, p2

    iput-object p3, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->f:Ljava/lang/String;

    .line 2
    iget-object p3, p0, Lcom/comeback/data/ui/fengliu/Fengliu2Activity;->tvOrder:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->h()Z

    return-void
.end method
