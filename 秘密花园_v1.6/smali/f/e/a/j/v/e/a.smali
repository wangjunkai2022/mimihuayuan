.class public Lf/e/a/j/v/e/a;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "XxYXFBhJFhwZB0IDGlpTXRkBDAk="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/v/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/jav/bean/Actor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lj/b;->u(Ljava/lang/String;)Lk/a/e/f;

    move-result-object p0

    const-string v1, "VQ0bRAoQTVwBS1YIAA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    .line 4
    new-instance v2, Lcom/comeback/data/ui/jav/bean/Actor;

    invoke-direct {v2}, Lcom/comeback/data/ui/jav/bean/Actor;-><init>()V

    const-string v3, "RBYRCwUU"

    .line 5
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    invoke-virtual {v3}, Lk/a/e/h;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/jav/bean/Actor;->setName(Ljava/lang/String;)V

    const-string v3, "Vg=="

    .line 6
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    const-string v5, "XxAGAg=="

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/jav/bean/Actor;->setUrl(Ljava/lang/String;)V

    const-string v3, "VhQCEAoB"

    .line 7
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    const-string v3, "RBAA"

    .line 8
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "XxYXFA=="

    .line 10
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "QhAPOEM="

    .line 11
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const-string v3, "Hg=="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lf/e/a/j/v/e/a;->a:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Lcom/comeback/data/ui/jav/bean/Actor;->setImg(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/comeback/data/ui/jav/bean/ActorDetail;
    .locals 4

    .line 1
    new-instance v0, Lcom/comeback/data/ui/jav/bean/ActorDetail;

    invoke-direct {v0}, Lcom/comeback/data/ui/jav/bean/ActorDetail;-><init>()V

    .line 2
    invoke-static {p0}, Lj/b;->u(Ljava/lang/String;)Lk/a/e/f;

    move-result-object v1

    const-string v2, "VgEXCxleSlYQEl0IFkcNCloH"

    .line 3
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/h;

    invoke-virtual {v2}, Lk/a/e/h;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/comeback/data/ui/jav/bean/ActorDetail;->setName(Ljava/lang/String;)V

    const-string v2, "RAcAEAIcVx4eA0AG"

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/h;

    invoke-virtual {v2}, Lk/a/e/h;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/comeback/data/ui/jav/bean/ActorDetail;->setSecondName(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    invoke-virtual {v1}, Lk/a/e/h;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/jav/bean/ActorDetail;->setCount(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-static {p0}, Lf/e/a/j/v/e/a;->d(Ljava/lang/String;)Lcom/comeback/data/ui/jav/bean/VideoList;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/comeback/data/ui/jav/bean/VideoList;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/comeback/data/ui/jav/bean/ActorDetail;->setList(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/comeback/data/ui/jav/bean/VideoDetail;
    .locals 13

    const-string v0, "Xg8E"

    const-string v1, "aD08Ow=="

    .line 1
    new-instance v2, Lcom/comeback/data/ui/jav/bean/VideoDetail;

    invoke-direct {v2}, Lcom/comeback/data/ui/jav/bean/VideoDetail;-><init>()V

    .line 2
    invoke-static {p0}, Lj/b;->u(Ljava/lang/String;)Lk/a/e/f;

    move-result-object p0

    const-string v3, "WgcQFwoUXBMaFRkQGRgNAlkF"

    .line 3
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "38XAgvXj0KfqjpvInuL1ja3ghfPLm5aWltuFgPHthf+BhdnX"

    .line 5
    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setError(Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-string v3, "RwMNAQdeW18cBV9HHgMRGENPAQgEEFI="

    .line 6
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    invoke-virtual {v3}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setUid(Ljava/lang/String;)V

    const-string v3, "RwMNAQdeW18cBV8="

    .line 8
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 10
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/e/h;

    invoke-virtual {v5}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v2, v5}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setDate(Ljava/lang/String;)V

    .line 12
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    .line 13
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/e/h;

    invoke-virtual {v5}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v2, v5}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setDuration(Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_3

    .line 16
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/e/h;

    invoke-virtual {v5}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v2, v5}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setShop(Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_4

    .line 19
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/e/h;

    invoke-virtual {v5}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v2, v5}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setPublisher(Ljava/lang/String;)V

    .line 21
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_5

    .line 22
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/e/h;

    invoke-virtual {v5}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {v2, v5}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setScore(Ljava/lang/String;)V

    .line 24
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x8

    if-le v5, v6, :cond_6

    .line 25
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk/a/e/h;

    invoke-virtual {v5}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {v2, v5}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setTag(Ljava/lang/String;)V

    .line 27
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x9

    if-le v5, v6, :cond_7

    .line 28
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    invoke-virtual {v3}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setActor(Ljava/lang/String;)V

    :cond_7
    const-string v3, "QwsXCA5TUEBeUg=="

    .line 30
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    invoke-virtual {v3}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setName(Ljava/lang/String;)V

    const-string v3, "QQsHAQReWlwFA0Y="

    .line 32
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    const-string v5, "RBAA"

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setImg(Ljava/lang/String;)V

    :try_start_0
    const-string v3, "QwsPAUYaVFIUA0dHCBgGHV4HFEkCHlhUFhU="

    .line 34
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/a/e/h;

    .line 37
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 39
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_9
    invoke-virtual {v2, v6}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setPreview_images(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 41
    :catch_0
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "0fXDjcn30ZT7g6/Z"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    :goto_1
    :try_start_1
    const-string v3, "RxAGEgIWTh4FD1ACFw=="

    .line 42
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->H(Ljava/lang/String;)Lk/a/e/h;

    move-result-object v3

    const-string v6, "RA0WFggW"

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setPreview_video(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 44
    :catch_1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "0fXDjcn30ZT7jpPhkcjy"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    :goto_2
    const-string v3, "WgMECg4HFF0SC1E="

    .line 45
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, "XxAGAg=="

    if-eqz v6, :cond_b

    .line 47
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk/a/e/h;

    .line 49
    new-instance v9, Lcom/comeback/data/ui/jav/bean/Download;

    invoke-direct {v9}, Lcom/comeback/data/ui/jav/bean/Download;-><init>()V

    const-string v10, "Vg=="

    .line 50
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk/a/e/h;

    .line 51
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/comeback/data/ui/jav/bean/Download;->setMagnet(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v8}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/comeback/data/ui/jav/bean/Download;->setDetail(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 54
    :cond_a
    invoke-virtual {v2, v6}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setDownloads(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 55
    :catch_2
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "0MHigeHo0KDNgLrCkM3AjanyivDym5ac"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    goto :goto_4

    .line 56
    :cond_b
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "0fXDg8jy3Lnoj6fZnuTG"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    :goto_4
    const-string v3, "QwsPAUYaVFIUA0dHDAMPDhoRDgUHHw=="

    .line 57
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v6, "QwsXCA4="

    const-string v8, "QwsPAUYaTVYe"

    if-lez v3, :cond_d

    .line 59
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    .line 60
    :try_start_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk/a/e/h;

    .line 62
    new-instance v11, Lcom/comeback/data/ui/jav/bean/Video;

    invoke-direct {v11}, Lcom/comeback/data/ui/jav/bean/Video;-><init>()V

    .line 63
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/comeback/data/ui/jav/bean/Video;->setUrl(Ljava/lang/String;)V

    .line 64
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/comeback/data/ui/jav/bean/Video;->setName(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v10}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/comeback/data/ui/jav/bean/Video;->setUid(Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk/a/e/h;

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/comeback/data/ui/jav/bean/Video;->setImg(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 68
    :cond_c
    invoke-virtual {v2, v9}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setSameVideo(Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 69
    :catch_3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "YyNLgeviENrx4tHgwozf/97j7USD1JrV7fbd8+GCzMQ="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    goto :goto_6

    .line 70
    :cond_d
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "0fXDREsneBuW5qVOkejnjrDYhdj/mri9"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    .line 71
    :goto_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_f

    .line 72
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/a/e/h;

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object p0

    .line 73
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk/a/e/h;

    .line 75
    new-instance v9, Lcom/comeback/data/ui/jav/bean/Video;

    invoke-direct {v9}, Lcom/comeback/data/ui/jav/bean/Video;-><init>()V

    .line 76
    invoke-static {v7}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/comeback/data/ui/jav/bean/Video;->setUrl(Ljava/lang/String;)V

    .line 77
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/comeback/data/ui/jav/bean/Video;->setName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v8}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/comeback/data/ui/jav/bean/Video;->setUid(Ljava/lang/String;)V

    .line 79
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lk/a/e/h;

    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/comeback/data/ui/jav/bean/Video;->setImg(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 81
    :cond_e
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/jav/bean/VideoDetail;->setGuessLike(Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    .line 82
    :catch_4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "09/DgeTc0bDOgo34nfz/jZrDQ4zM0N+t44+g/pDFzA=="

    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    goto :goto_8

    .line 83
    :cond_f
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "0fXDREuXhJOW6ZuP+9eH0qiH9fiN3pg="

    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    :goto_8
    return-object v2
.end method

.method public static d(Ljava/lang/String;)Lcom/comeback/data/ui/jav/bean/VideoList;
    .locals 11

    .line 1
    new-instance v0, Lcom/comeback/data/ui/jav/bean/VideoList;

    invoke-direct {v0}, Lcom/comeback/data/ui/jav/bean/VideoList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/jav/bean/VideoList;->setList(Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Lcom/comeback/data/ui/jav/bean/VideoList;->setVertical(Z)V

    .line 5
    invoke-static {p0}, Lj/b;->u(Ljava/lang/String;)Lk/a/e/f;

    move-result-object p0

    const-string v2, "VA0NEA4dTQ=="

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "XxAGAg=="

    const-string v5, "Vg=="

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, ""

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/a/e/h;

    .line 9
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/a/e/h;

    .line 11
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "XQMVAAlD"

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "GQEMCQ=="

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "GQEMCUQ="

    if-nez v9, :cond_3

    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 13
    :cond_3
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 14
    invoke-static {v10}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    move-object v3, v7

    .line 15
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 16
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 17
    invoke-static {}, Lf/e/a/k/j;->b()Lf/e/a/k/j;

    move-result-object v2

    const-class v6, Lcom/comeback/data/ui/jav/JavActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Lf/e/a/k/j;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    const-string v2, "WwMRAw5eVFwFD1FKFAMQHxcBDAgYXgw="

    .line 18
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v6, "XhYGCQ=="

    const/4 v7, 0x0

    if-lez v3, :cond_8

    .line 20
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/h;

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v2

    .line 21
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "QQsHAQQA"

    .line 22
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/a/e/h;->H(Ljava/lang/String;)Lk/a/e/h;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 23
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v2

    .line 24
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 25
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v2

    .line 26
    :cond_a
    invoke-virtual {v0, v7}, Lcom/comeback/data/ui/jav/bean/VideoList;->setVertical(Z)V

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/h;

    .line 28
    new-instance v3, Lcom/comeback/data/ui/jav/bean/Video;

    invoke-direct {v3}, Lcom/comeback/data/ui/jav/bean/Video;-><init>()V

    .line 29
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/a/e/h;

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/comeback/data/ui/jav/bean/Video;->setUrl(Ljava/lang/String;)V

    const-string v6, "QQsHAQReTVoHClE="

    .line 30
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v6

    .line 31
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_c

    const-string v6, "QQsHAQReTVoHClFV"

    .line 32
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v6

    .line 33
    :cond_c
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/a/e/h;

    invoke-virtual {v6}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/comeback/data/ui/jav/bean/Video;->setName(Ljava/lang/String;)V

    const-string v6, "Xg8E"

    .line 34
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/a/e/h;

    const-string v8, "UwMXBUYAS1A="

    .line 35
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v8, "RBAA"

    .line 37
    invoke-static {v8}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 38
    :cond_d
    invoke-virtual {v3, v8}, Lcom/comeback/data/ui/jav/bean/Video;->setImg(Ljava/lang/String;)V

    const-string v6, "WgcXBQ=="

    .line 39
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk/a/e/h;

    invoke-virtual {v6}, Lk/a/e/h;->L()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/comeback/data/ui/jav/bean/Video;->setDate(Ljava/lang/String;)V

    const-string v6, "RBYRCwUU"

    .line 40
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_e

    const-string v6, "QgsHVg=="

    .line 42
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v6

    .line 43
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_f

    .line 44
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/h;

    invoke-virtual {v2}, Lk/a/e/h;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/comeback/data/ui/jav/bean/Video;->setUid(Ljava/lang/String;)V

    .line 45
    :cond_f
    invoke-virtual {v3}, Lcom/comeback/data/ui/jav/bean/Video;->isFC2()Z

    move-result v2

    if-nez v2, :cond_b

    .line 46
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    return-object v0
.end method
