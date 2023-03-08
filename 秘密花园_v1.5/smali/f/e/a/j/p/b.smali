.class public Lf/e/a/j/p/b;
.super Lm/j;
.source "HGDDBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/hgdd/bean/Person;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/p/b;->e:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/e/a/j/p/b;->e:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flProgress:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "3+zUgeTl3pPHjpPEnNXCjbbNhsDam42W"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lf/e/a/j/p/b;->e:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flProgress:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/hgdd/bean/Person;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/hgdd/bean/Person;->check()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/e/a/j/p/b;->e:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hgdd/bean/Person;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/comeback/data/ui/hgdd/bean/Person;->getWechat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/comeback/data/ui/hgdd/bean/Person;->getQq()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->l(Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "0f7PgvbS36bDgLnJndr5javIiuPsmqK1nNq4j9fdhMa+h93hje+01vnH0f7QjPjf0fTT"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
