.class public Lcom/comeback/data/ui/cm/SearchActivity$a;
.super Lm/j;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cm/SearchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/cm/bean/HotSearch;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/cm/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/SearchActivity$a;->e:Lcom/comeback/data/ui/cm/SearchActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/cm/bean/HotSearch;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cm/SearchActivity$a;->e:Lcom/comeback/data/ui/cm/SearchActivity;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/cm/SearchActivity;->b:Lcom/comeback/data/ui/cm/adapter/TagAdapter;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HotSearch;->getRescont()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/cm/bean/HotSearch$RescontEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/cm/bean/HotSearch$RescontEntity;->getLists()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/cm/SearchActivity$a;->e:Lcom/comeback/data/ui/cm/SearchActivity;

    .line 6
    iget-object v0, v0, Lcom/comeback/data/ui/cm/SearchActivity;->c:Lcom/comeback/data/ui/cm/adapter/TagAdapter;

    .line 7
    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HotSearch;->getRescont()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/cm/bean/HotSearch$RescontEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/cm/bean/HotSearch$RescontEntity;->getLists()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
