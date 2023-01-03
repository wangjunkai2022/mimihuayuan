.class public interface abstract Lf/e/a/j/k/h/b;
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
            value = "timestamp"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/videos/long/top_{videoType}"
    .end annotation
.end method

.method public abstract b()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/Host;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "https://storage.pinyingkeji.com/host_f2_2.txt"
    .end annotation
.end method

.method public abstract c(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/StarList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/videos/popular/actor"
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/actor/{id}"
    .end annotation
.end method

.method public abstract e(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/videos/popular/lists"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "key"
        .end annotation
    .end param
    .param p3    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v2/search/{type}/{key}"
    .end annotation
.end method

.method public abstract g(Ljava/lang/String;Ljava/util/HashMap;Li/g0;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/i;
            value = "origin"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .param p3    # Li/g0;
        .annotation runtime Ll/o0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Li/g0;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/TokenBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/m;
        value = "/v1/register/token"
    .end annotation
.end method

.method public abstract h(ILjava/util/HashMap;)Lm/e;
    .param p1    # I
        .annotation runtime Ll/o0/q;
            value = "index"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/VideoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/videos/menu/{index}"
    .end annotation
.end method

.method public abstract i(Ljava/lang/String;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/r;
            value = "timestamp"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/VideoType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/category/long"
    .end annotation
.end method

.method public abstract j(Ljava/lang/String;Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/lang/String;
        .annotation runtime Ll/o0/q;
            value = "index"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/VideoInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/video/info/{index}"
    .end annotation
.end method

.method public abstract k()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/Host;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "https://storage.aweiya.net/host_f2_2.txt"
    .end annotation
.end method

.method public abstract l(Ljava/util/HashMap;)Lm/e;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Ll/o0/s;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/StarList;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "/v1/actors"
    .end annotation
.end method

.method public abstract m()Lm/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm/e<",
            "Lcom/comeback/data/ui/fulao2/bean/Host;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/o0/f;
        value = "https://storage.0551pf.com/host_f2_2.txt"
    .end annotation
.end method
