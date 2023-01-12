.class public Lf/e/a/j/r/f/a;
.super Ljava/lang/Object;
.source "HtmlParse.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "BlAAAA4VXlIRBVACHg1SWQ=="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/r/f/a;->c:Ljava/lang/String;

    const-string v0, "dicwSy4wexwjLXc0TzoCD1MLDQM="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/r/f/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sget-object v0, Lf/e/a/j/r/f/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lf/e/a/j/r/f/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lf/e/a/k/c;->c([B[BLjava/lang/String;[B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static b(IZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lf/e/a/j/r/f/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lf/e/a/j/r/f/a;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GF0TBQwWF1AGFEYCFh4zClAHXg=="

    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "EQ0RAA4BbUoDAwlUXhkWCV0HABAlElRWTg=="

    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "EQQKCAY9WF4WWw=="

    invoke-static {p0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-object v0, Lf/e/a/j/r/f/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)Lcom/comeback/data/ui/hm/bean/ChapterInfo;
    .locals 7

    .line 1
    new-instance v0, Lcom/comeback/data/ui/hm/bean/ChapterInfo;

    invoke-direct {v0}, Lcom/comeback/data/ui/hm/bean/ChapterInfo;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p0}, Lj/b;->u(Ljava/lang/String;)Lk/a/e/f;

    move-result-object p0

    const-string v1, "VAoCFB8WSx4fD0cT"

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->H(Ljava/lang/String;)Lk/a/e/h;

    move-result-object p0

    const-string v1, "X1E="

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    invoke-virtual {v1}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo;->setState(Ljava/lang/String;)V

    :cond_0
    const-string v1, "WwsQEEYaTVYe"

    .line 8
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object p0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/hm/bean/ChapterInfo;->setChapterList(Ljava/util/ArrayList;)V

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    .line 11
    new-instance v2, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;

    invoke-direct {v2}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;-><init>()V

    const-string v4, "VAcPCEYHUEcfAw=="

    .line 12
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/a/e/h;

    invoke-virtual {v4}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v2, v4}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;->setName(Ljava/lang/String;)V

    .line 16
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;->setLines(Ljava/util/ArrayList;)V

    const-string v4, "VAcPCEYHQEMW"

    .line 17
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/a/e/h;

    .line 19
    new-instance v5, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;

    invoke-direct {v5}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;-><init>()V

    .line 20
    invoke-virtual {v4}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;->setName(Ljava/lang/String;)V

    const-string v6, "WAwACAIQUg=="

    .line 21
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter$Line;->setOther(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Lcom/comeback/data/ui/hm/bean/ChapterInfo$Chapter;->getLines()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v0}, Lcom/comeback/data/ui/hm/bean/ChapterInfo;->getChapterList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "CVxdWlVNBw1NWApZcg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/comeback/data/ui/hm/bean/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p0}, Lj/b;->u(Ljava/lang/String;)Lk/a/e/f;

    move-result-object p0

    const-string v1, "VQ0MD0YfUEAHS10THQc="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    .line 5
    new-instance v2, Lcom/comeback/data/ui/hm/bean/ItemInfo;

    invoke-direct {v2}, Lcom/comeback/data/ui/hm/bean/ItemInfo;-><init>()V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "aD08OzQsZmwsOWtt"

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "WAwACAIQUg=="

    .line 8
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GBoQSw=="

    .line 9
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 10
    invoke-virtual {v2, v4}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->setType(I)V

    const-string v4, "XgwFC0Q="

    .line 11
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 12
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    :cond_1
    const-string v4, "GQoXCQc="

    .line 13
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 14
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    .line 15
    :cond_2
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->setId(Ljava/lang/String;)V

    const-string v3, "Xg8E"

    .line 16
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    const-string v4, "RBAA"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->setImage(Ljava/lang/String;)V

    :cond_3
    const-string v3, "VQ0MD0YfUEAHS10JHgVOH14WDwE="

    .line 20
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    invoke-virtual {v3}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->setTitle(Ljava/lang/String;)V

    :cond_4
    const-string v3, "VQ0MD0YfUEAHS10JHgVOD1IRAA=="

    .line 24
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 26
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    invoke-virtual {v3}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->setDesc(Ljava/lang/String;)V

    :cond_5
    const-string v3, "VQ0MD0YfUEAHS10JHgVOCVgWFwsG"

    .line 28
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    invoke-virtual {v3}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->setAuthor(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_0

    .line 33
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    invoke-virtual {v1}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v2, v1}, Lcom/comeback/data/ui/hm/bean/ItemInfo;->setUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p0}, Lj/b;->u(Ljava/lang/String;)Lk/a/e/f;

    move-result-object p0

    const-string v1, "Xg8EKAIATQ=="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->H(Ljava/lang/String;)Lk/a/e/h;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "RBAA"

    if-eqz v1, :cond_3

    :try_start_1
    const-string v3, "Xg8E"

    .line 4
    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VA4CFxg="

    .line 7
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "WwMZHQ=="

    .line 8
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "UwMXBUYcS1oUD1oGFA=="

    .line 9
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "GDMxJwQXXBw="

    invoke-static {v3}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "VhcHDQQ="

    .line 14
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/a/e/h;

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk/a/e/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lf/e/a/j/r/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "WQ0VAQcsWlwdElEJDA=="

    .line 20
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->I(Ljava/lang/String;)Lk/a/g/c;

    move-result-object p0

    const-string v1, ""

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/a/e/h;

    .line 22
    invoke-virtual {v2}, Lk/a/e/l;->r()Ljava/lang/String;

    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lcom/comeback/data/ui/hm/bean/Host;
    .locals 13

    .line 1
    new-instance v0, Lcom/comeback/data/ui/hm/bean/Host;

    invoke-direct {v0}, Lcom/comeback/data/ui/hm/bean/Host;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/hm/bean/Host;->setHm(Ljava/util/ArrayList;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/hm/bean/Host;->setNovel(Ljava/util/ArrayList;)V

    .line 4
    :try_start_0
    invoke-static {p0}, Lj/b;->u(Ljava/lang/String;)Lk/a/e/f;

    move-result-object p0

    const-string v1, "VQ0HHQ=="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk/a/e/h;->J(Ljava/lang/String;)Lk/a/g/c;

    move-result-object p0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/a/e/h;

    if-eqz p0, :cond_a

    .line 7
    new-instance v2, Lk/a/g/d$a;

    invoke-direct {v2}, Lk/a/g/d$a;-><init>()V

    invoke-static {v2, p0}, Lj/b;->j(Lk/a/g/d;Lk/a/e/h;)Lk/a/g/c;

    move-result-object p0

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "X1E="

    const-string v5, "X1A="

    const-string v6, "Rw=="

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk/a/e/h;

    .line 10
    iget-object v7, v3, Lk/a/e/h;->c:Lk/a/f/h;

    .line 11
    iget-object v7, v7, Lk/a/f/h;->a:Ljava/lang/String;

    .line 12
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    .line 15
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk/a/e/h;

    .line 17
    iget-object v10, v9, Lk/a/e/h;->c:Lk/a/f/h;

    .line 18
    iget-object v10, v10, Lk/a/f/h;->a:Ljava/lang/String;

    .line 19
    invoke-static {v5}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_5

    .line 20
    invoke-virtual {v9}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v10

    const-string v12, "0d7Ig//I"

    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v9}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v10

    const-string v12, "0tLsjMTH"

    invoke-static {v12}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v2, 0x1

    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    .line 22
    :cond_5
    iget-object v10, v9, Lk/a/e/h;->c:Lk/a/f/h;

    .line 23
    iget-object v10, v10, Lk/a/f/h;->a:Ljava/lang/String;

    .line 24
    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v8, 0x1

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 25
    iget-object v10, v9, Lk/a/e/h;->c:Lk/a/f/h;

    .line 26
    iget-object v10, v10, Lk/a/f/h;->a:Ljava/lang/String;

    .line 27
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 28
    invoke-virtual {v0}, Lcom/comeback/data/ui/hm/bean/Host;->getNovel()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v3, :cond_8

    .line 29
    iget-object v10, v9, Lk/a/e/h;->c:Lk/a/f/h;

    .line 30
    iget-object v10, v10, Lk/a/f/h;->a:Ljava/lang/String;

    .line 31
    invoke-static {v6}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 32
    invoke-virtual {v0}, Lcom/comeback/data/ui/hm/bean/Host;->getHm()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9}, Lk/a/e/h;->O()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 33
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "0ejwgeTl3J3/gLz3nNLjjZnXaW4="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_9
    if-nez v7, :cond_3

    if-eqz v8, :cond_3

    goto/16 :goto_1

    :cond_a
    const/4 p0, 0x0

    .line 34
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    return-object v0
.end method
