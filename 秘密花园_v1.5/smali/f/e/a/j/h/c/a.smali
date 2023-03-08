.class public interface abstract Lf/e/a/j/h/c/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "videoid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "http://www.jiuwei.tv:81/getTxMediaInfo"
    .end annotation
.end method

.method public abstract b(Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/dn/bean/UserList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/appapi/public/index.php"
    .end annotation
.end method

.method public abstract c(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "p"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/dn/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/appapi/public/index.php?service=Video.getVideoList&language=zh-cn&uid=-1"
    .end annotation
.end method

.method public abstract d()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/dn/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/appapi/public/index.php?service=Video.getVideoList&language=zh-cn&uid=-1&p=1"
    .end annotation
.end method

.method public abstract e(Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/dn/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/appapi/public/index.php"
    .end annotation
.end method

.method public abstract f(Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/dn/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/appapi/public/index.php"
    .end annotation
.end method
