.class public Lcom/comeback/data/ui/hm/DetailActivity_ViewBinding$a;
.super Ld/c/b;
.source "DetailActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hm/DetailActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/hm/DetailActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/hm/DetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hm/DetailActivity_ViewBinding;Lcom/comeback/data/ui/hm/DetailActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/hm/DetailActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/hm/DetailActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/hm/DetailActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/hm/DetailActivity;

    .line 2
    iget-boolean v0, p1, Lcom/comeback/data/ui/hm/DetailActivity;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "0u31gt3736fFjqPo"

    .line 3
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/hm/DetailActivity;->t(Z)V

    .line 5
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    const-class v1, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    const-string v2, "XgY="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 6
    sget-object v3, Lf/e/a/k/g;->a:Lg/a/x;

    .line 7
    invoke-virtual {v3}, Lg/a/a;->f()V

    .line 8
    new-instance v4, Lio/realm/RealmQuery;

    invoke-direct {v4, v3, v1}, Lio/realm/RealmQuery;-><init>(Lg/a/x;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {v4, v2, p1}, Lio/realm/RealmQuery;->a(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    invoke-virtual {v4}, Lio/realm/RealmQuery;->b()Lg/a/j0;

    move-result-object p1

    .line 10
    sget-object v1, Lf/e/a/k/g;->a:Lg/a/x;

    new-instance v2, Lf/e/a/k/i;

    invoke-direct {v2, v0, p1}, Lf/e/a/k/i;-><init>(Lf/e/a/k/g;Lg/a/j0;)V

    invoke-virtual {v1, v2}, Lg/a/x;->N(Lg/a/x$a;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    throw p1

    :cond_1
    const-string v0, "0fbVjPz837vjg774"

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Lcom/comeback/data/ui/hm/DetailActivity;->t(Z)V

    .line 14
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    iget-object p1, p1, Lcom/comeback/data/ui/hm/DetailActivity;->e:Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-virtual {v0, p1}, Lf/e/a/k/g;->a(Lg/a/g0;)V

    :goto_0
    return-void
.end method
