.class public Lcom/comeback/data/ui/cucumber/CollectActivity;
.super Lcom/comeback/data/base/BaseRealmListActivity;
.source "CollectActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRealmListActivity<",
        "Lcom/comeback/data/ui/cucumber/bean/RealmVideo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseRealmListActivity;-><init>()V

    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/cucumber/CollectActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    invoke-super {p0}, Lcom/comeback/data/base/BaseRealmListActivity;->e()V

    return-void
.end method

.method public l()Lcom/comeback/data/base/BaseAbstractAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/comeback/data/base/BaseAbstractAdapter<",
            "Lcom/comeback/data/ui/cucumber/bean/RealmVideo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/cucumber/adapter/CollectListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const-string v0, "0eryg/H336fFjqPo"

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Lg/a/j0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/a/j0<",
            "Lcom/comeback/data/ui/cucumber/bean/RealmVideo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object v0

    invoke-static {v0}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object v0

    const-class v1, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    invoke-virtual {v0, v1}, Lf/e/a/k/g;->e(Ljava/lang/Class;)Lg/a/j0;

    move-result-object v0

    return-object v0
.end method
