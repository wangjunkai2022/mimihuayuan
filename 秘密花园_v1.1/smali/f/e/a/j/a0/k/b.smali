.class public interface abstract Lf/e/a/j/a0/k/b;
.super Ljava/lang/Object;
.source "ApiService.java"


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "videoType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/lutube/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/videos/{videoType}/top"
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
            "Lcom/comeback/data/ui/lutube/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v2/videos/menu/0"
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/lutube/bean/VideoType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/category/short"
    .end annotation
.end method

.method public abstract d()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/lutube/bean/HostInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "https://i.cfbbj.net/pwa.txt"
    .end annotation
.end method

.method public abstract e()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/lutube/bean/HostInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "https://i.wfzh.net/pwa.txt"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "videoId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/lutube/bean/VideoInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/video/info/{videoId}"
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/lutube/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/actor/{id}"
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "videoType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "key"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/lutube/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v2/videos/{videoType}/keyword/{key}"
    .end annotation
.end method

.method public abstract i(Ljava/util/Map;)Lm/e;
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
            "Lcom/comeback/data/ui/lutube/bean/ActorList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/actors"
    .end annotation
.end method

.method public abstract j()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/lutube/bean/HostInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "https://lulutv.fun/pwa.txt"
    .end annotation
.end method

.method public abstract k(ILjava/util/Map;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/q;
            value = "index"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/lutube/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v2/videos/menu/{index}"
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/lutube/bean/VideoType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/category/long"
    .end annotation
.end method
