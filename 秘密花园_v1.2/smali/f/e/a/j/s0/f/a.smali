.class public interface abstract Lf/e/a/j/s0/f/a;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/lang/String;I)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/q;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/vod/{type}-0-0-0-0-0-0-0-0-0-{page}"
    .end annotation
.end method

.method public abstract b(I)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/q;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/Channel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/special/listing-0-0-{page}"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/Special;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/special/detail/{id}"
    .end annotation
.end method

.method public abstract d(ILjava/lang/String;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/r;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "wd"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/SearchResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/search"
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/PlayUrl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/minivod/reqplay/{id}"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;I)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ll/o0/q;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/minivod/{type}-0-0-0-0-0-0-0-0-0-0-{page}"
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "cookie"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/PlayUrl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/vod/reqplay/{id}"
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "X-Forwarded-For"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/PlayUrl;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/vod/reqplay/{id}"
    .end annotation
.end method

.method public abstract i(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "path"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/vod/{path}"
    .end annotation
.end method

.method public abstract j()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/HomeData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/index"
    .end annotation
.end method

.method public abstract k()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/xj/bean/ShortList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/minivod/reqlist"
    .end annotation
.end method
